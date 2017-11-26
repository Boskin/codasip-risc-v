//===----- ScheduleDAGSuperBlock.h - super block scheduler ----------------===//
//
// author : Tomas Minac
// mail   : minac@codasip.com
// about  : creating for internall needs of the Codasip Brno
//          inspired by SchedyleDAGSuperBlock.h
//          This file implements the ScheduleDAGSuperBlock class,
//          which implements scheduling for a MachineInstr-based
//          dependency graph.
//
//===----------------------------------------------------------------------===//

#ifndef SCHEDULEDAGSUPERBLOCK_H
#define SCHEDULEDAGSUPERBLOCK_H

#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include "llvm/CodeGen/ScheduleDAG.h"
#include "llvm/CodeGen/TargetSchedule.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Target/TargetRegisterInfo.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/SparseSet.h"
#include "llvm/CodeGen/ScheduleDAGInstrs.h"
#include "BunchOfSuperBlocks.h"
#include <map>

namespace llvm {
  class MachineLoopInfo;
  class MachineDominatorTree;
  class LiveIntervals;
  class RegPressureTracker;

  /// ScheduleDAGSuperBlock - A ScheduleDAG subclass for scheduling lists of
  /// MachineInstrs.
  class ScheduleDAGSuperBlock : public ScheduleDAG {
  protected:
    const MachineLoopInfo *MLI;
    const MachineDominatorTree *MDT;
    const MachineFrameInfo *MFI;
    SuperBlock *m_sbb;

    /// Live Intervals provides reaching defs in preRA scheduling.
    LiveIntervals *LIS;

    /// TargetSchedModel provides an interface to the machine model.
    TargetSchedModel SchedModel;

    /// isPostRA flag indicates vregs cannot be present.
    bool IsPostRA;

    /// UnitLatencies (misnamed) flag avoids computing def-use latencies, using
    /// the def-side latency only.
    bool UnitLatencies;

    /// The standard DAG builder does not normally include terminators as DAG
    /// nodes because it does not create the necessary dependencies to prevent
    /// reordering. A specialized scheduler can overide
    /// TargetInstrInfo::isSchedulingBoundary then enable this flag to indicate
    /// it has taken responsibility for scheduling the terminator correctly.
    bool CanHandleTerminators;

    /// State specific to the current scheduling region.
    /// ------------------------------------------------

    /// The block in which to insert instructions
    MachineBasicBlock *BB;

    /// The beginning of the range to be scheduled.
    MachineBasicBlock::iterator RegionBegin;

    /// The end of the range to be scheduled.
    MachineBasicBlock::iterator RegionEnd;

    /// The index in BB of RegionEnd.
    unsigned EndIndex;

    /// After calling BuildSchedGraph, each machine instruction in the current
    /// scheduling region is mapped to an SUnit.
    DenseMap<MachineInstr*, SUnit*> MISUnitMap;

    /// State internal to DAG building.
    /// -------------------------------

    /// Defs, Uses - Remember where defs and uses of each register are as we
    /// iterate upward through the instructions. This is allocated here instead
    /// of inside BuildSchedGraph to avoid the need for it to be initialized and
    /// destructed for each block.
    Reg2SUnitsMap Defs;
    Reg2SUnitsMap Uses;

    /// Track the last instructon in this region defining each virtual register.
    VReg2SUnitMap VRegDefs;

    /// loadAndStoreInBB - is vector, which contain all load and store
    /// instruction in one BasicBlock
    std::vector<SUnit*> loadAndStoreInBB;

    /// physRegContainUnitVec - is set of instructions, which containt
    /// physical register, we gonna be conservative again, and keep all
    /// instruction, which contain physical register in its home basic block.
    std::set<SUnit*> physRegContainUnitSet;
    std::set<SUnit*>::iterator itPhysRegContainUnitSet;
    
    
    std::map<SUnit*, SUnit*> mapInstToCallStart;
    std::map<SUnit*, SUnit*>::iterator itMapInstToCallStart;

    /// phiSUnitBB - is set of SUnit, which containt all phi instruction, 
    /// from one BasicBlock, it is necessery keep all phi in its oven 
    /// basic block. Conversative approach again.
    std::vector<SUnit*> phiSUnitBB;

    unsigned
    iterateChainSucc(AliasAnalysis *AA, const MachineFrameInfo *MFI,
                     SUnit *SUa, SUnit *SUb, SUnit *ExitSU, unsigned *Depth,
                     SmallPtrSet<const SUnit*, 16> &Visited);
    void adjustChainDeps(AliasAnalysis *AA, const MachineFrameInfo *MFI,
                            SUnit *SU, SUnit *ExitSU, std::set<SUnit *> &CheckList,
                            unsigned LatencyToLoad);

    /// ExitSUs - vector, which contain every exit unit of everyone BasicBlock
    std::vector<SUnit*> ExitSUs;
    /// isInExitSUs - simply look to vector, and test if SUnit is exit unit
    /// of some BasicBlock
    bool isInExitSUs(const SUnit *su) const {
      for(unsigned i=0;i<ExitSUs.size();++i) {
        const SUnit *exitSu=ExitSUs[i];
        if(exitSu==su) {
          return true;
        }
      }
      return false;
    }
    
    /// isAlreadyConnected - method, which return, if succ is successor 
    /// of predecessor. 
    bool isAlreadyConnected(SUnit *succ, SUnit *pred) {
      for(unsigned i=0;i<succ->Preds.size();++i) {
        SUnit *predOfSucc=succ->Preds[i].getSUnit();
        if(predOfSucc==pred) {
          return true;
        }
      }
      return false;
    }
    
    /// isSchedulingBoundary - return true, if machine instruction
    /// is boundary instruction
    bool isSchedulingBoundary(const MachineInstr *MI) const {
      // Terminators, lables and calls can't be scheduled
      if(MI->getDesc().isTerminator() || MI->isLabel() || MI->getDesc().isCall()) {
        return true;
      }
      return false;
    }
    
    /// PendingLoads - Remember where unknown loads are after the most recent
    /// unknown store, as we iterate. As with Defs and Uses, this is here
    /// to minimize construction/destruction.
    std::vector<SUnit *> PendingLoads;

    /// DbgValues - Remember instruction that precedes DBG_VALUE.
    /// These are generated by buildSchedGraph but persist so they can be
    /// referenced when emitting the final schedule.
    /*typedef std::vector<std::pair<MachineInstr *, MachineInstr *> >
      DbgValueVector;
    DbgValueVector DbgValues;*/
    typedef struct Triple {
      MachineInstr *first;
      MachineInstr *second;
      MachineBasicBlock *third;
    }t_Triple;
    std::vector<t_Triple> DbgValuesTriples;
    MachineInstr *FirstDbgValue;

  public:
    explicit ScheduleDAGSuperBlock(MachineFunction &mf,
                               const MachineLoopInfo *mli,
                               const MachineDominatorTree *mdt,
                               bool IsPostRAFlag,
                               LiveIntervals *LIS = 0);

    virtual ~ScheduleDAGSuperBlock() {}

    /// \brief Get the machine model for instruction scheduling.
    const TargetSchedModel *getSchedModel() const { return &SchedModel; }

    /// \brief Resolve and cache a resolved scheduling class for an SUnit.
    const MCSchedClassDesc *getSchedClass(SUnit *SU) const {
      if (!SU->SchedClass)
        SU->SchedClass = SchedModel.resolveSchedClass(SU->getInstr());
      return SU->SchedClass;
    }

    /// begin - Return an iterator to the top of the current scheduling region.
    MachineBasicBlock::iterator begin() const { return RegionBegin; }

    /// end - Return an iterator to the bottom of the current scheduling region.
    MachineBasicBlock::iterator end() const { return RegionEnd; }

    /// newSUnit - Creates a new SUnit and return a ptr to it.
    SUnit *newSUnit(MachineInstr *MI);

    /// getSUnit - Return an existing SUnit for this MI, or NULL.
    SUnit *getSUnit(MachineInstr *MI) const;

    /// startBlock - Prepare to perform scheduling in the given block.
    virtual void startBlock(MachineBasicBlock *BB);

    /// finishBlock - Clean up after scheduling in the given block.
    virtual void finishBlock();

    /// Initialize the scheduler state for the next scheduling region.
    virtual void enterRegion(MachineBasicBlock *bb,
                             MachineBasicBlock::iterator begin,
                             MachineBasicBlock::iterator end,
                             unsigned endcount);

    /// Notify that the scheduler has finished scheduling the current region.
    virtual void exitRegion();

    /// buildSchedGraph - Build SUnits from the MachineBasicBlock that we are
    /// input.
    void buildSchedGraph(AliasAnalysis *AA, RegPressureTracker *RPTracker = 0);
    
    /// buildSchedGraph - Build SUnits from the Superblock
    void buildSchedGraph(SuperBlock *sbb, AliasAnalysis *AA);

    /// addSchedBarrierDeps - Add dependencies from instructions in the current
    /// list of instructions being scheduled to scheduling barrier. We want to
    /// make sure instructions which define registers that are either used by
    /// the terminator or are live-out are properly scheduled. This is
    /// especially important when the definition latency of the return value(s)
    /// are too high to be hidden by the branch or when the liveout registers
    /// used by instructions in the fallthrough block.
    void addSchedBarrierDeps(SUnit *exitSU, bool &hasSuccessorInOvenBB);

    /// schedule - Order nodes according to selected style, filling
    /// in the Sequence member.
    ///
    /// Typically, a scheduling algorithm will implement schedule() without
    /// overriding enterRegion() or exitRegion().
    virtual void schedule() = 0;

    /// finalizeSchedule - Allow targets to perform final scheduling actions at
    /// the level of the whole MachineFunction. By default does nothing.
    virtual void finalizeSchedule() {}

    virtual void dumpNode(const SUnit *SU) const;

    /// Return a label for a DAG node that points to an instruction.
    virtual std::string getGraphNodeLabel(const SUnit *SU) const;

    /// Return a label for the region of code covered by the DAG.
    virtual std::string getDAGName() const;

  protected:
    void initSUnits(SuperBlock *sbb);
    void addPhysRegDataDeps(SUnit *SU, unsigned OperIdx, bool &hasSuccessorInOvenBB);
    void addPhysRegDeps(SUnit *SU, unsigned OperIdx, bool &hasSuccessorInOvenBB);
    void addVRegDefDeps(SUnit *SU, unsigned OperIdx, bool &hasSuccessorInOvenBB);
    void addVRegUseDeps(SUnit *SU, unsigned OperIdx, bool &hasSuccessorInOvenBB);
  };

  /// newSUnit - Creates a new SUnit and return a ptr to it.
  inline SUnit *ScheduleDAGSuperBlock::newSUnit(MachineInstr *MI) {
#ifndef NDEBUG
    const SUnit *Addr = SUnits.empty() ? 0 : &SUnits[0];
#endif
    SUnits.push_back(SUnit(MI, (unsigned)SUnits.size()));
    assert((Addr == 0 || Addr == &SUnits[0]) &&
           "SUnits std::vector reallocated on the fly!");
    SUnits.back().OrigNode = &SUnits.back();
    return &SUnits.back();
  }

  /// getSUnit - Return an existing SUnit for this MI, or NULL.
  inline SUnit *ScheduleDAGSuperBlock::getSUnit(MachineInstr *MI) const {
    DenseMap<MachineInstr*, SUnit*>::const_iterator I = MISUnitMap.find(MI);
    if (I == MISUnitMap.end())
      return 0;
    return I->second;
  }
} // namespace llvm

#endif
