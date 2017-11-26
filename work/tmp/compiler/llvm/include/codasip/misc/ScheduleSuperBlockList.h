/*
 * ss.h
 *
 *  Created on: Feb 28, 2014
 *      Author: ihusar
 */

#ifndef SS_H_
#define SS_H_


// TODO: includes

#include <set>
#include <vector>
#include "llvm/CodeGen/LatencyPriorityQueue.h"
#include "ScheduleDAGSuperBlock.h"

namespace llvm {


class MachineFunction;
class SuperBlock;
// class AliasAnalysis;
class MachineInstr;
class SUnit;
class InstrItineraryData;
class SuperBlock;
class MachineBasicBlock;
class MachineLoopInfo;
class MachineDominatorTree;
class LiveIntervals;


  /// ScheduleSuperBlockList -  class for SuperBlock scheduler
  class ScheduleSuperBlockList : public ScheduleDAGSuperBlock {
    SuperBlock *m_currSbb;
    MachineFunction *m_currMF;
    AliasAnalysis *AA;
    std::set<MachineInstr *> componsatoryInsts;

    /// AvailableQueue - The priority queue to use for the
    /// available SUnits.
    LatencyPriorityQueue AvailableQueue;
    /// PendingQueue - This contains all of the instructions whose operands have
    /// been issued, but their results are not ready yet (due to the latency of
    /// the operation).  Once the operands becomes available, the instruction is
    /// added to the AvailableQueue.
    std::vector<SUnit*> PendingQueue;

    /// The schedule. Null SUnit*'s represent noop instructions.
    std::vector<SUnit*> Sequence;

    /// HazardRec - The hazard recognizer to use.
    ScheduleHazardRecognizer *HazardRec;

    /// virtual bundle
    std::vector<SUnit *> bundle;

    const InstrItineraryData *InstrItins;
    
    bool CallStartShuffle;

  public:
    ScheduleSuperBlockList(MachineFunction &mf,
                        MachineLoopInfo *MLI,
                        MachineDominatorTree *MDT,
                        LiveIntervals *LI);
    ~ScheduleSuperBlockList();
    void Schedule(SuperBlock *sbb);
    void schedule();
    void Run(SuperBlock *sbb, AliasAnalysis *AA);
    void genCompensatoryCode();
    void tidyUpJumps();
    bool tryEraseEmptyBB(SuperBlock &sbb);
    void EmitSchedule(SuperBlock &sbb);
    MachineBasicBlock *EmitSchedule();

  private:
    void DepSanit();
    void ReleaseSucc(SUnit *SU, SDep *SuccEdge);
    void ReleaseSuccessors(SUnit *SU);
    void ScheduleNodeTopDown(SUnit *SU, unsigned CurCycle);
    void ListScheduleTopDown();
    void scheduleAlgorithms(unsigned &CurCycle);
    bool isInstrLiveOnlyInSBB(MachineInstr *mi, SuperBlock *sbb);
    void createNewRegAndCOPYInst(MachineInstr *mi, SuperBlock *sbb, unsigned posInSeq);
    void repairInstrReg(unsigned oldVirtReg, unsigned newVirtReg, unsigned posInSeq);
    MachineInstr *getNextInstruction(MachineInstr *mi);
    bool canPutLastInstToBundle(SUnit *SU);
  };

} // namespace

#endif /* SS_H_ */

