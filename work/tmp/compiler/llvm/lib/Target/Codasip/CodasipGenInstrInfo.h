/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-25
 * \author  Codasip (c) C compiler backend generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for compiler backend
 * \project RISC_V5.ia
 * \note          6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd.
 */


#ifndef CODASIPGENINSTRUCTIONINFO_H
#define CODASIPGENINSTRUCTIONINFO_H

#include "Codasip.h"
#include "CodasipRegisterInfo.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/ScheduleHazardRecognizer.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/ISDOpcodes.h"
#include "CodasipInstructionSemantics.h"

#include "codasip/Target/CodasipBaseTargetInstrInfo.h"

#define TargetInstrInfo CodasipBaseInstrInfo
#define GET_INSTRINFO_ENUM
#define GET_INSTRINFO_HEADER
#include "CodasipGenInstrInfo.inc"
#undef TargetInstrInfo

namespace llvm {

class CodasipGenInstrInfo2: public CodasipGenInstrInfo
{
  const CodasipRegisterInfo RI;

public:
  explicit CodasipGenInstrInfo2(CodasipTargetMachine &TM);
  const CodasipRegisterInfo& getRegisterInfo() const {return RI;}

  void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, const DebugLoc& DL, unsigned DestReg, unsigned SrcReg, bool KillSrc) const override;
  void storeRegToStackSlot(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI, unsigned SrcReg, bool isKill,
                           int FrameIndex, const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const override;
  void loadRegFromStackSlot(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI, unsigned DestReg,
                            int FrameIndex, const TargetRegisterClass *RC, const TargetRegisterInfo *TRI) const override;

  /// Emits a basic instruction (e.g. SP+Imm)
  virtual void EmitEssentialInstr(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, DebugLoc DL, ISD::NodeType Opc, SmallVectorImpl<MachineOperand> &Ops) const;

  unsigned getAnalyzableBrOpc(unsigned Opc) const override;
  bool reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const override;
  bool analyzeCompare(const MachineInstr &MI, unsigned &SrcReg, unsigned &SrcReg2, int &CmpMask, int &CmpValue) const override;
  /// Returns the length of a jump in bites.
  unsigned GetJumpWidth(int op, bool &isAbsolute) const;
  // Custom things from CodasipBaseInstrInfo
  llvm::ISD::CondCode isCondWithSense(int opc) const override;
  void getCodasipInstr(std::vector<int> &Opcs, int Operation, MVT Type) const override;
  /** Retrieves info about an imm operand.
   * \param opcode  ID of an instruction.
   * \param opnum   Index of an operand. */
  void GetImmProperties(unsigned opCode, unsigned opNum, int& width, bool& sign, int& trunc) const;
  
  //ScheduleHazardRecognizer* CreateTargetHazardRecognizer(const TargetMachine *TM, const ScheduleDAG *DAG) const override;
  ScheduleHazardRecognizer* CreateTargetPostRAHazardRecognizer(const InstrItineraryData *II, const ScheduleDAG *DAG) const override;
  
  bool expandPostRAPseudo(MachineInstr& MI) const override;
  /** Central implementation of expansion of dummy instructions and emulations with custom insertors.
   * \param MIp   Pointer at the instruction which needs replacing.
   * \param BB    Input and return basic block as for EmitInstrWithCustomInserter.
   * \param postRA Is called post-RA?
   * \param RS    May be NULL.
   * \return   Was there a change? */
  virtual bool ExpandDummiesImpl(MachineInstr *MIp, MachineBasicBlock* &BB, const bool postRA, RegScavenger* RS) const;

  unsigned getRA() const override {return RI.GetRA();}
  llvm::SelectionDAG* GetCodasipPattern(const TargetMachine &TM, MachineFunction &mf, unsigned icode, std::vector<SDValue>& roots) const override {
    return llvm::GetCodasipPattern(TM, mf, icode, roots);
  }
  
  // VLIW-related methods
  void insertNoop(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI) const override;
  void insertNoopOnPos(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, unsigned pos) const override;
  void getAllPosInBundle(int opc, SlotData &vect) const override;
  static void getAllPosInBundleImpl(int opc, SlotData &vect);
  bool isSchedulingBoundary(const MachineInstr &MI, const MachineBasicBlock *MBB, const MachineFunction &MF) const override;
  
  virtual bool isPredicable(MachineInstr &MI) const override;
  virtual bool PredicateInstruction(MachineInstr &MI,
                                    ArrayRef<MachineOperand> Cond) const override;
  virtual bool isProfitableToIfCvt(MachineBasicBlock &MBB, unsigned NumCycles,
                                   unsigned ExtraPredCycles,
                                   BranchProbability Probability) const override;
  virtual bool isProfitableToIfCvt(MachineBasicBlock &TMBB,
                                   unsigned NumTCycles, unsigned ExtraTCycles,
                                   MachineBasicBlock &FMBB,
                                   unsigned NumFCycles, unsigned ExtraFCycles,
                                   BranchProbability Probability) const override;
  virtual bool isPredicated(const MachineInstr &MI) const override;
  virtual bool isPredicated(unsigned Opcode) const;
  virtual bool isPredicatedTrue(const MachineInstr &MI) const;
  virtual bool isPredicatedTrue(unsigned Opcode) const;
  virtual bool DefinesPredicate(MachineInstr &MI, std::vector<MachineOperand> &Pred) const override;
  virtual bool
  SubsumesPredicate(ArrayRef<MachineOperand> Pred1,
                    ArrayRef<MachineOperand> Pred2) const override;
  virtual bool isPredicableBlock(MachineBasicBlock &MBB, SmallVectorImpl<MachineOperand> &Cond) const;
  virtual bool
  isProfitableToDupForIfCvt(MachineBasicBlock &MBB, unsigned NumCycles,
                            BranchProbability Probability) const override;
  virtual unsigned getEquivalentCondOpcode(ArrayRef<MachineOperand> Cond, int RegPos) const;

protected:
  int ReverseBranchConditionOpc(int Opc) const;
private: 
  int getMatchingCondBranchOpcode(int Opc, bool sense) const;
  bool isPredReg(const MachineOperand *PredMO) const;
  bool copyCondToPredReg(MachineOperand *PredMO) const;
  bool isLiveInMBB(MachineInstr *ParentInstr, unsigned Reg) const;
  MachineBasicBlock::iterator identifyPositionInParentBlock( MachineInstr *PredMOSource) const;
  bool getFreePredRegister(MachineInstr *ParentInstr, unsigned *FreePredReg) const;
  bool isThereSuitableCopy(MachineOperand *PredMO) const; 
  bool isThereSuitableCondEmul(ArrayRef<MachineOperand> Cond, int RegPos, MachineOperand *PredMO, MachineInstr *PredInstr) const;
  bool emulCondToPredReg(ArrayRef<MachineOperand> Cond, int RegPos, MachineOperand *PredMO, MachineInstr *PredInst) const;
};

/** Checks a value for imm oper.
 * Needs to be globally visible, is called from various places. */
bool CheckImmImpl(int64_t Imm, int width, bool sign, int trunc);

/// Computes distance between two points in a function
unsigned ComputeDistance(MachineFunction &F, MachineFunction::iterator FI, MachineBasicBlock::instr_iterator I, MachineBasicBlock *dest);

/// Reads (or computes, if inline asm) encoding size
unsigned GetEncodingSize(const MachineBasicBlock::instr_iterator &I);

}

#endif
