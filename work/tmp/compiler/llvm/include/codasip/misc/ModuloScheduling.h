/******************************************************************************
 *      "Copyright (C) 2014, Codasip s.r.o., All Rights Reserved"             *
 ******************************************************************************/
/**
 *  \file   ModuloScheduling.h
 *  \author Glasnak Ondrej
 *  \date   31.8.2014
 *  \brief  Modulo Scheduling Pass to pipeline iterations of the loop.
 *  Mostly for VLIW architecture.
 */

#ifndef __MODULOSCHEDULING_H__
#define __MODULOSCHEDULING_H__

#define DEBUG_TYPE "ModuloScheduling"

#define VIEWGRAPH 0 

#define MAX_INT std::numeric_limits<int>::max()

#include "llvm/ADT/SetOperations.h"      // TODO #optimize
#include "llvm/Analysis/AliasAnalysis.h" // for intra-iteration dependences

#include "llvm/CodeGen/LiveIntervalAnalysis.h"
#include "llvm/CodeGen/LiveRangeEdit.h"
//#include "llvm/CodeGen/LiveDebugVariables.h"


#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineScheduler.h"
#include "llvm/CodeGen/ScheduleDFS.h"

#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/ScheduleDAG.h"
#include "llvm/CodeGen/ScheduleDAGInstrs.h"

#include "llvm/CodeGen/ScheduleHazardRecognizer.h"

// #include "llvm/CodeGen/SplitKit.h"
#include "llvm/CodeGen/VirtRegMap.h"


#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Type.h"

#include "llvm/MC/MCSubtargetInfo.h"

#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetSubtargetInfo.h"

#include "codasip/Passes.h"

#include "llvm/Support/Debug.h"
#include "llvm/Support/DOTGraphTraits.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;



namespace llvm {

class ModuloScheduling; // MachineFunctionPass
class ModuloScheduler;  // MachineSchedStrategy
class ModSchedDAGMI;    // ScheduleDAG(MI(Live))
// class ModSchedDAGMutation;   // ScheduleDAGMutation
struct MSUnit;
struct MSDep;
struct Recurrence;
struct IntraIterDep;
struct iiDependence;

/**
 * struct for a node in the MS graph. Useful because.
 */
struct MSUnit {
  // wrapper over this node:
  // FIXME: rename to su because MSDep->node->node->NodeNum looks fookin' weird.
  SUnit *node;
  // attributes:
  int ASAP;   // Earliest time at which the operation can be scheduled
  int ALAP;   // Latest time at which the operation can be scheduled.
  int MOB;    // Mobility == ALAP - ASAP;
  int depth;  // in DDG, ignoring recurrences.
  int height; // in DDG, ignoring recurrences.
  // usage of DAG through this struct, useful:
  std::set<MSUnit *> preds;    // predecessors of this node, including iiDeps.
  std::set<MSUnit *> succs;    // successors of this node, including iiDeps.
  std::set<MSDep *> predEdges; // will substitute preds above.
  std::set<MSDep *>
      succEdges; // TODO: change to vector - less robust structure.
  MSUnit(SUnit *un, int asap = -1, int alap = -1, int mob = -1, int d = -1,
         int h = -1)
      : node(un), ASAP(asap), ALAP(alap), MOB(mob), depth(d), height(h) {}

}; // struct MSUnit

// IssueWidth-long vector of MSUnits:
typedef std::vector<MSUnit *> MSbundle;
// II x IssueWidth wide vector of MSUnits, instructions in kernel.
typedef std::vector<MSbundle> MSblock;

struct scheduleSlot {
  MSUnit *msu;
  unsigned stage;
  scheduleSlot(MSUnit *unit = NULL, int st = -1) : msu(unit), stage(st) {}
};

typedef std::vector<scheduleSlot *> scheduleBundle; // IssueWidth instructions.
typedef std::vector<scheduleBundle> scheduleBlock; // II * IssueWidth instrs.
// typedef std::vector<scheduleBlock> scheduleBlocks; // II*IssueWidth * blocks
// instrs.

/**
 * struct for an edge in the graph. Can be wrapper over SDep if the dependence
 * exists; or a new dep. with higher iteDiff. Basically, SDep wrapper,
 * it is an intra iteration dependence if iteDiff > 0;
 * preferrably test for (dep->isArtificial())
 */
struct MSDep {
  SDep *dep;
  MSUnit *node;
  int iteDiff;
  int latency;
  MSDep(SDep *d = NULL, MSUnit *nd = NULL, int diff = -1, int l = -1)
      : dep(d), node(nd), iteDiff(diff), latency(l) {}
};

/**
 * just to store a recurrence with its ii, to be sorted by it.
 */
struct Recurrence {
  std::vector<SUnit *> units; // SUnits in this recurrence, not ordered.
  unsigned recmii;            // Recurrence MII for this Rec., for sorting
  // a Rec is always a part of SCC, so an index to the SCCList[SCC_index]
  unsigned SCC_index;

  Recurrence() {}
  Recurrence(std::vector<SUnit *> SUs, unsigned ii, unsigned scc)
      : units(SUs), recmii(ii), SCC_index(scc) {}
  // for usage std::sort(recvec.begin(), recvec.end());
  // where recvec is of type std::vector<Recurrence*>
  bool operator<(const Recurrence &rec) const {
    return (this->recmii < rec.recmii);
  }
  bool operator>(const Recurrence &rec) const {
    return (this->recmii > rec.recmii);
  }
  /*
  bool operator==(const Recurrence& rec) const {
    return (units == rec.units);
  }

  bool Equals(Recurrence *rec)
  {
    // If parameter is null return false:
    if (rec == NULL) {
        return false;
    }
    return (rec->units == units);
  }*/
  void print() {
    dbgs() << "> >>Recurrence:::\t";
    for (unsigned i = 0, e = units.size(); i != e; ++i) {
      dbgs() << "SU_" << units[i]->NodeNum << ", ";
    }
    dbgs() << "\n";
  }
};

struct recGreater {
  bool operator()(Recurrence const *a, Recurrence const *b) const {
    return a->recmii > b->recmii;
  }
};

typedef std::vector<MSbundle> MSblock;

/**
 * final Schedule, including modulo reservation table and stuff like that.
 */
class ModuloSchedule {
  // private attribs:
  int II;
  int IssueWidth;
  int stageCount;
  int branchScheduledAtCycle;
  // final schedule of nodes: maps cycle number to the bundle of MSUnits.
  std::map<int, MSbundle> finalSchedule;
  // modulo reservation table to know which resources are free and which aren't
  // at current cycle.
  std::vector<MSbundle> MRT;

  // |brief map of unit to block/II where the unit is scheduled.
  // also can be thought of as a reverse "stage in kernel"
  // stageInKernel = stageCount - startingBlock;
  std::map<MSUnit *, int> startingBlock;

  // blocks of grouped instructions as they go after themselves.

  scheduleBlock Kernel;
  std::vector<scheduleBlock> Prologues;
  std::vector<scheduleBlock> Epilogues;
  std::vector<scheduleBlock> fallbackBlocks;
  // std::vector<MSbundle> Kernel;
  // std::vector<MSblock> Prologues;
  // std::vector<MSblock> Epilogues;

public:
  // |brief constructor
  ModuloSchedule(int ii, int issueWidth) {
    branchScheduledAtCycle = MAX_INT;
    stageCount = -1;
    II = ii;
    IssueWidth = issueWidth;
    finalSchedule.clear();
    MRT.clear();
    for (int i = 0; i < II; ++i) {
      MSbundle MRT_bundle;
      MRT.push_back(MRT_bundle);
    }
  }

  // |brief tries to insert node into finalSchedule and MRT.
  bool insert(MSUnit *node, int cycle);
  // getters because poor design.
  int getBranchCycle() { return branchScheduledAtCycle; }
  int getFirstCycle() { return finalSchedule.begin()->first; }
  int getStartingBlock(MSUnit *msu) { return startingBlock[msu]; }
  int getStageCount() { return stageCount; }
  std::vector<scheduleBlock> getPrologues() { return Prologues; }
  std::vector<scheduleBlock> getEpilogues() { return Epilogues; }
  std::vector<scheduleBlock> getFallbackBlocks() { return fallbackBlocks; }

  scheduleBlock getKernel() { return Kernel; }
  MSbundle getMRTbundle(int i) { return MRT[i]; }

  // mostly normalization and setting of starting blocks.
  void finalize();

  int getCycleOfMI(MachineInstr *MI) {
    int start_cycle = finalSchedule.begin()->first;
    int end_cycle = finalSchedule.rbegin()->first;
    int cnt = 0;
    assert(start_cycle <= end_cycle && "begin before rbegin!");
    for (int i = start_cycle; i <= end_cycle; ++i) {
      for (std::vector<MSUnit *>::iterator msi = finalSchedule[i].begin();
           msi != finalSchedule[i].end(); ++msi) {
        if (MI->isIdenticalTo(*(*msi)->node->getInstr())) return cnt;
      }
      cnt++;
    }
    assert(false && "MI not found!");
    return -1;
  }

  // 
  int getStageOfMI(MachineInstr *MI) {
    return std::floor((1. * getCycleOfMI(MI)) / II);
  }

  void constructBlocks();
  void constructFallbackBlocks();

  void dumpMRT();
  void dumpSchedule();
  void dumpBlockSchedule();
  void dumpBlock(scheduleBlock block);
  // |brief resets the schedule and II.
  void reset(int new_II) {
    II = new_II;
    finalSchedule.clear();
    MRT.clear();
    branchScheduledAtCycle = MAX_INT;
    stageCount = -1;
    for (int i = 0; i < II; ++i) {
      MSbundle MRT_bundle;
      MRT.push_back(MRT_bundle);
    }
    // Kernel.clear();
  }

private:
  // sets start cycle on zero and other instrs accordingly.
  void normalizeFinalSchedule();
  // inits startingBlock structure.
  void setStartingBlocks();
  // structure building:
  // void createPrologues();
  // void createKernel();
  // void createEpilogues();
};

/**
 * to store info about a new-found intra-iteration dependence.
 * now that I think about it, dependence class with additional info would
 * be better :/... FIXME. loads of bugs because of this.
 */
struct IntraIterDep {
  SDep *dep;
  SUnit *src;
  SUnit *dest;
  int iteDiff;
  int latency;
  // bool artificial;

  IntraIterDep(SDep *d = NULL, SUnit *source = NULL, SUnit *destin = NULL,
               int diff = 0, int lat = -1)
      : dep(d), src(source), dest(destin), iteDiff(diff), latency(-1) {}

  void print(ScheduleDAG *G) {
    if (src && dep && dest && iteDiff) {
      dbgs() << "Intra-iteration Dependence:  ";
      dbgs() << "from SU(" << src->NodeNum << ") to SU(" << dest->NodeNum
             << "); \tIteDiff = " << iteDiff << ";\tlatency = " << latency
             << "\n";
    } else
      dbgs() << "\niiDep not properly defined.\n\n";
  }
};

// just for usage: std::map<SUnit*, std::vector<iiDependence> > iideps;
// TODO: substitute with MSDep.
struct iiDependence {
  SUnit *dest;
  int iteDiff;
  // int type
  iiDependence(SUnit *destin = NULL, int diff = 0)
      : dest(destin), iteDiff(diff) {}
};

/*********************************************************************************
                        start of DOTGraphTraits
**********************************************************************************/

template <>
struct GraphTraits<ModSchedDAGMI *> : public GraphTraits<ScheduleDAG *> {};

template <>
struct DOTGraphTraits<ModSchedDAGMI *> : public DefaultDOTGraphTraits {

  DOTGraphTraits(bool isSimple = false)
      : llvm::DefaultDOTGraphTraits(isSimple) {}

  static std::string getGraphName(ScheduleDAG *F) { return "Dependence Graph"; }

  static bool renderGraphFromBottomUp() { return true; }

  static std::string getNodeLabel(SUnit *Node, ScheduleDAG *G) {
    std::string str;
    llvm::raw_string_ostream rso(str);
    // const SchedDFSResult *DFS
    // = static_cast<const ModSchedDAGMI*>(G)->getDFSResult();
    rso << "SU:" << Node->NodeNum;
    // if (DFS)
    //  rso << " I:" << DFS->getNumInstrs(Node);
    return rso.str();
  }

  static std::string getNodeDescription(const SUnit *SU, const ScheduleDAG *G) {
    return G->getGraphNodeLabel(SU);
  }

  static std::string getEdgeSourceLabel(SUnit *Node, SUnitIterator I) {
    // Label each edge with the type of dependence
    SDep dep = I.getSDep();
    unsigned SDepKind = dep.getKind();
    std::string edgelabel = "";
    switch (SDepKind) {
    case SDep::Data:
      edgelabel = "Data";
      break;
    case SDep::Anti:
      edgelabel = "Anti"; // I.getEdge().getIteDiff();
      break;
    case SDep::Output:
      edgelabel = "Output";
      break;
    case SDep::Order:
      edgelabel = "Order: ";
      if (dep.isNormalMemory())
        edgelabel += "Memory";
      // if (dep.isBarrier()) edgelabel += "Barrier ";
      if (dep.isMustAlias())
        edgelabel += "MustAlias ";
      if (dep.isWeak())
        edgelabel += "Weak ";
      if (dep.isArtificial())
        edgelabel += "Artificial ";
      if (dep.isCluster())
        edgelabel += "Cluster ";
      break;
    default:
      edgelabel = "Unknown";
      break;
    } // switch

    int iteDiff = 0; // I.getEdge().getIteDiff();
    std::string intStr;
    llvm::raw_string_ostream rso(intStr);
    rso << " (Diff=" << iteDiff << ", L=" << I.getSDep().getLatency() << ")";
    edgelabel += rso.str();
    return edgelabel;
  } // getEdgeSourceLabel

  /// If you want to override the dot attributes printed for a particular
  /// edge, override this method.
  static std::string getEdgeAttributes(const SUnit *Node, SUnitIterator EI,
                                       const ScheduleDAG *Graph) {
    if (EI.isArtificialDep())
      return "color=cyan,style=dashed";
    if (EI.isCtrlDep())
      return "color=blue,style=dashed";
    return "";
  }

  static bool hasNodeAddressLabel(const SUnit *Node, const ScheduleDAG *Graph) {
    return false;
  }
}; // struct DOTGraphTraits

/*******************************************************************************
                          end of DOTGraphTraits
********************************************************************************
                        start of ModuloScheduler
*******************************************************************************/

/**
 * Initialization sequence:
 * initPolicy -> shouldTrackPressure -> initialize(DAG) -> registerRoots
 */
class ModuloScheduler : public MachineSchedStrategy {
  // need context for things and stuff
  std::shared_ptr<MachineSchedContext> MSC;
  ScheduleHazardRecognizer *hazardRec;
  std::shared_ptr<ModSchedDAGMI> DDG;
  const TargetSchedModel *SchedModel;

public:
  ModuloScheduler() {}
  // explicit ModuloScheduler(MachineSchedContext *msc) : MSC(msc) {}
  explicit ModuloScheduler(std::shared_ptr<MachineSchedContext> msc) : MSC(msc) {}

  // ~ModuloScheduler() { delete hazardRec; }

  /// Optionally override the per-region scheduling policy.
  // OPTIONAL
  // void initPolicy(MachineBasicBlock::iterator Begin,
  //                         MachineBasicBlock::iterator End,
  //                         unsigned NumRegionInstrs) {}

  /// Check if pressure tracking is needed before building the DAG and
  /// initializing this strategy. Called after initPolicy.
  bool shouldTrackPressure() const { return true; }

  /// Initialize the strategy after building the DAG for a new region.
  // PURE
  void initialize(std::shared_ptr<ModSchedDAGMI> dag);
  // PURE:
  void initialize(ScheduleDAGMI *dag) {}

  bool checkHazard(SUnit *SU);

  void runHazardRecognizer();

  /// Notify this strategy that all roots have been released (including those
  /// that depend on EntrySU or ExitSU).
  // OPTIONAL
  // void registerRoots() {}

  /// Pick the next node to schedule, or return NULL. Set IsTopNode to true to
  /// schedule the node at the top of the unscheduled region. Otherwise it will
  /// be scheduled at the bottom.
  // PURE
  SUnit *pickNode(bool &IsTopNode) { return NULL; }

  /// \brief Scheduler callback to notify that a new subtree is scheduled.
  // OPTIONAL
  // void scheduleTree(unsigned SubtreeID) {}

  /// Notify MachineSchedStrategy that ScheduleDAGMI has scheduled an
  /// instruction and updated scheduled/remaining flags in the DAG nodes.
  // PURE
  void schedNode(SUnit *SU, bool IsTopNode) {}

  /// When all predecessor dependences have been resolved, free this node for
  /// top-down scheduling.
  // PURE
  void releaseTopNode(SUnit *SU) {}
  /// When all successor dependences have been resolved, free this node for
  /// bottom-up scheduling.
  // PURE
  void releaseBottomNode(SUnit *SU) {}
}; // class ModuloScheduler

/*******************************************************************************
                          end of ModuloScheduler
********************************************************************************
                                start of ModSchedDAGMI
********************************************************************************/

/**
 * DDG for Modulo Scheduling. Added DAG mutation for intra-iteration
 * dependences.
 */
class ModSchedDAGMI : public ScheduleDAGMILive { 
  //
  MachineBasicBlock *current_MBB;
  bool giveUpThisPass;
  MachineSchedContext *MSC;
  std::unique_ptr<MachineSchedStrategy> Strategy;
  // VirtRegMap *VRM;
  const TargetSubtargetInfo *ST;
  const InstrItineraryData *InstrItins;
  int INT_SIZE_IN_BITS;
  unsigned numAvailableRegs;
  unsigned issueWidth;
  MSUnit *condBranchUnit;
  MSUnit *uncondBranchUnit;
  MachineInstr *conditionalBranch;
  MachineInstr *unconditionalBranch;

  // all nodes, probably topologically sorted:
  std::vector<MSUnit *> allNodes;
  std::map<SUnit *, MSUnit *> mapSUtoMSU;

  /// The schedule. Null SUnit*'s represent noop instructions.
  // std::vector<SUnit*> Sequence;

  /// HazardRec - The hazard recognizer to use.
  ScheduleHazardRecognizer *HazardRec;

  /// virtual bundle
  // std::vector<SUnit *> bundle;

  // set of pairs of int->[SUnit*]
  // Map to hold all recurrences
  std::vector<Recurrence *> recurrenceList;

  // vector to hold all strongly connected components:
  std::vector<std::vector<SUnit *> > SCCList;

  // Vector containing the partial order
  std::vector<std::vector<MSUnit *> > partialOrder;

  // Vector containing the final node order
  std::vector<MSUnit *> finalOrder;

  // final schedule of nodes: in mSchedule above.
  ModuloSchedule *mSchedule;

  // variables needed for MS algorithm.
  int RecMII, ResMII, MII; // , II;

  // intra-iteration dependences: like accessing a[i] and a[i-1] in next iter.
  std::vector<IntraIterDep *> intraIterDeps;
  // for easier usage:
  std::map<SUnit *, std::vector<iiDependence> > iiDependences;
  std::map<SUnit *, std::vector<iiDependence> > iiDependencesReverse;
  std::map<SUnit *, std::vector<SUnit *> > ignoredEdges;

  std::vector<std::vector<MachineInstr *> > unrolledBlocks;

public:
  // indentation of member functions indicate the approx. CFG:
  // ModSchedDAGMI(MachineSchedContext *C, MachineSchedStrategy *S);
  // ModSchedDAGMI(MachineSchedContext *C,
  //               std::unique_ptr<MachineSchedStrategy> S);
  ModSchedDAGMI(std::shared_ptr<MachineSchedContext> C,
                             std::unique_ptr<MachineSchedStrategy> S);
  ~ModSchedDAGMI();
  void init();
  void reset();
  void setCurrentMBB(MachineBasicBlock *mbb) { current_MBB = mbb; }
  MachineBasicBlock *getCurrentMBB() { return current_MBB; }
  ScheduleHazardRecognizer *getHazardRec() { return HazardRec; }

  void setBranches(MachineInstr *condBranch, MachineInstr *uncondBranch) {
    conditionalBranch = condBranch;
    unconditionalBranch = uncondBranch;
  }
  /// \brief Get the machine model for instruction scheduling.
  const TargetSchedModel *getSchedModel() const { return &SchedModel; }

  void schedule();
  void viewGraph();

  void finalizeSchedule();
  bool changedSchedule() { return !giveUpThisPass; }
  /// Perform platform-specific DAG post-processing - not needed.
  // void postprocessDAG();

private:
  // Graph building:
  std::vector<IntraIterDep *> findIntraIterDeps();
  std::vector<IntraIterDep *> findOrderDeps();
  std::vector<IntraIterDep *> findAntiDeps();

  // MII calculation:
  int calculateResMII();
  int calculateRecMII();
  // recurrence finding:
  void findAllSCCs();
  bool tarjanBacktrack(SUnit *su, std::map<SUnit *, std::set<SUnit *> > &succsOf,
                       std::map<SUnit *, int> &discovered,
                       std::vector<SUnit *> &marked_stack,
                       std::vector<SUnit *> &point_stack,
                       std::map<SUnit *, bool> &marked, SUnit *origNode);
  void SCCUtil(SUnit *su, std::map<SUnit *, int> &discovered,
               std::map<SUnit *, int> &low, std::vector<SUnit *> &st,
               std::map<SUnit *, bool> &stackMember);
  Recurrence *getRecurrence(std::vector<SUnit *> recStack, SUnit *current);

  void initializeMSUnits();
  // Node Attributes:
  void calculateNodeAttributes();
  std::map<SUnit *, std::vector<SUnit *> > findEdgesToIgnore();
  // |brief
  bool shouldIgnoreEdge(SUnit *src, SUnit *dest);
  int calculateASAP(SUnit *currentNode);
  int calculateALAP(SUnit *currentNode, int maxASAP);
  int calculateMOB(int ALAP, int ASAP) { return ALAP - ASAP; }
  int calculateHeight(SUnit *currentNode);
  int calculateDepth(SUnit *currentNode);
  // ordering algorithm:
  void computePartialOrder();
  std::set<SUnit *> findConnectingNodes(std::set<SUnit *> set1,
                                        std::set<SUnit *> set2);
  void findConnections_DFS(SUnit *su, std::vector<bool> &isVisited,
                           std::set<SUnit *> &SrcSet,
                           std::set<SUnit *> &destSet,
                           std::set<SUnit *> &connections,
                           std::vector<SUnit *> &st);
  // quite generic, so needed on many places.
  std::set<SUnit *> findSuccsOf(SUnit *su, bool includeIgnored = false);
  std::set<SUnit *> findPredsOf(SUnit *su, bool includeIgnored = false);
  std::set<MSUnit *> findSuccsOf(std::set<MSUnit *> MSUnSet,
                                 bool includeIgnored = false);
  std::set<MSUnit *> findPredsOf(std::set<MSUnit *> MSUnSet,
                                 bool includeIgnored = false);
  std::set<MSUnit *> findSuccsOf(MSUnit *su, bool includeIgnored = false);
  std::set<MSUnit *> findPredsOf(MSUnit *su, bool includeIgnored = false);
  // std::set<SUnit *> findSuccsOf(std::set<SUnit *> SUnSet);
  // std::set<SUnit *> findPredsOf(std::set<SUnit *> SUnSet);

  void computeFinalOrder();
  // needs MII and FO calculated. creates and fills MRT, aka finalSchedule:
  bool tryCreateFinalSchedule();
  // called by tryX() for each II from MII until maxII;
  bool createFinalSchedule(int II, int strategy);
  int scheduleNode(MSUnit *msu, int start_cycle, int end_cycle, bool &success,
                   int II);
  bool canPutLastInstToBundle(MSUnit *SU, MSbundle bundle);
  bool isScheduleValid(int II);
  void reconstructLoop();
  void unrollBlock(int times);
  std::vector<MachineBasicBlock *> buildPrologueBlocks();
  std::vector<MachineBasicBlock *> buildKernelBlocks();
  std::vector<MachineBasicBlock *> buildEpilogueBlocks();
  std::vector<MachineBasicBlock *> buildFallbackBlocks();
  void fixBranches(std::vector<MachineBasicBlock *> proMBBs,
                   std::vector<MachineBasicBlock *> kernelMBBs,
                   std::vector<MachineBasicBlock *> epiMBBs,
                   std::vector<MachineBasicBlock *> fallMBBs);
  void removeOriginalBlock();

}; // class ModSchedDAGMI

/*******************************************************************************
                          end of ModSchedDAGMI
********************************************************************************
                        start of ModSchedDAGMutation
*******************************************************************************/

/**
 * Mutation of DAG to add intra-dependences.
 * Unsure if needed, might be sufficient to DAG.addEdge();
 *
class ModSchedDAGMutation : public ScheduleDAGMutation {
  //
    const TargetInstrInfo *TII;
    const TargetRegisterInfo *TRI;
    ModSchedDAGMI *parent_DDG;

  public:
    ModSchedDAGMutation() {}
    ModSchedDAGMutation(const TargetInstrInfo *tii, const TargetRegisterInfo
*tri,ModSchedDAGMI *ddg)
              : TII(tii), TRI(tri), parent_DDG(ddg) {}
    ~ModSchedDAGMutation() {}

    // wrapper because i can't into C++;
    void apply(ScheduleDAGMI *DAG) {  // FIXME: dyn_cast<ScheduleDAG>(*DAG) ?
somehow?
        apply(parent_DDG);
    }
    void apply(ModSchedDAGMI *DAG);
  private:
    void transformOrder();
    void transformCOPY();

};
*/

/*******************************************************************************
                          end of ModSchedDAGMutation
*******************************************************************************/

} // namespace llvm

#endif
