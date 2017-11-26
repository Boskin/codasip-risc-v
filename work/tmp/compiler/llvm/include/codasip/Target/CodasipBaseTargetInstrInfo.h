/**************************************************************************************************
 *                     Copyright (c) 2015  Codasip, Ltd. All Rights Reserved.                     *
 **************************************************************************************************/
/**
 *  \file
 *  \author jan
 *  \date   18 Aug 2015
 *  \brief  Declaration/Implementation of the class.
 */
#ifndef INCLUDE_CODASIP_TARGET_CODASIPBASETARGETINSTRINFO_H_
#define INCLUDE_CODASIP_TARGET_CODASIPBASETARGETINSTRINFO_H_

#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/ISDOpcodes.h"
#include "llvm/CodeGen/ValueTypes.h"
#include "llvm/CodeGen/SelectionDAG.h"

namespace llvm {

typedef std::vector< std::vector<unsigned> > SlotData;

// move this somewhere else?
namespace CodasipBaseISD
{
enum NodeType {
  CODASIP_OP_START = ISD::BUILTIN_OP_END,
  HW_LOOP, // for getHWLoopOpc
  CODASIP_OP_END
};
}

/// Base for our CodasipGenInstrInfo
class CodasipBaseInstrInfo: public TargetInstrInfo
{
public:
  CodasipBaseInstrInfo(unsigned CFSetupOpcode=~0u, unsigned CFDestroyOpcode=~0u, unsigned CatchRetOpcode=~0u, unsigned ReturnOpcode=~0u)
  : TargetInstrInfo(CFSetupOpcode,CFDestroyOpcode,CatchRetOpcode,ReturnOpcode) {UncondBrOpc=0;}

  /* we need to track possible positions in bundle for VLIWs */
  virtual void getAllPosInBundle(int opc, SlotData &vector) const {}

  virtual void insertNoopOnPos(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, unsigned pos) const {}

  virtual void getCodasipInstr(std::vector<int> &opc, int Operation, MVT Type) const {}

  virtual bool isPredicableBlock(MachineBasicBlock &MBB, SmallVectorImpl<MachineOperand> &Cond) const {
	return false;
  }

  //if HWLoops instruction is present in architecture, get opcode
  virtual void getHWLoopOpc(std::vector<int> &opc) const {
    getCodasipInstr(opc, CodasipBaseISD::HW_LOOP, MVT::isVoid);
  }

  virtual ISD::CondCode isCondWithSense(int opc) const {
    return ISD::SETCC_INVALID;
  }

  virtual unsigned getBP(unsigned space = 0) const {
	return 0;
  }

  virtual unsigned getRA() const {
    return 0;
  }
  
  virtual llvm::SelectionDAG* GetCodasipPattern(const TargetMachine &TM, MachineFunction &mf, unsigned icode, std::vector<SDValue>& roots) const {
	return NULL;
  }
  
  // branch analysis and optim, taken from mips
  /// Kinds of branches
  enum BranchType {
    BT_None,       // Couldn't analyze branch.
    BT_NoBranch,   // No branches found.
    BT_Uncond,     // One unconditional branch.
    BT_Cond,       // One conditional branch.
    BT_CondUncond, // A conditional branch followed by an unconditional branch.
    BT_Indirect    // One indirct branch.
  };
  bool analyzeBranch(MachineBasicBlock &MBB, MachineBasicBlock *&TBB, MachineBasicBlock *&FBB,
                     SmallVectorImpl<MachineOperand> &Cond, bool AllowModify = false) const override;
  BranchType analyzeBranch(MachineBasicBlock &MBB, MachineBasicBlock *&TBB, MachineBasicBlock *&FBB,
                           SmallVectorImpl<MachineOperand> &Cond, bool AllowModify,
                           SmallVectorImpl<MachineInstr*> &BranchInstrs) const;
  unsigned insertBranch(MachineBasicBlock &MBB, MachineBasicBlock *TBB, MachineBasicBlock *FBB,
                        ArrayRef<MachineOperand> Cond, const DebugLoc& DL, int* BytesAdded = nullptr) const override;
  unsigned removeBranch(MachineBasicBlock& MBB, int* BytesRemoved = nullptr) const override;
  void AnalyzeCondBr(const MachineInstr *Inst, unsigned Opc, MachineBasicBlock *&BB, SmallVectorImpl<MachineOperand> &Cond) const;
  void BuildCondBr(MachineBasicBlock &MBB, MachineBasicBlock *TBB, const DebugLoc &DL, ArrayRef<MachineOperand> Cond) const;
  virtual unsigned getAnalyzableBrOpc(unsigned Opc) const = 0;
protected:
  int UncondBrOpc;
};

} //namepsace

#endif  // CODASIPBASETARGETINSTRINFO_H_
