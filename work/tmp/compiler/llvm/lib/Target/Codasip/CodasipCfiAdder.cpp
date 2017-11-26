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


// Warning: this is a prototype
// the whole thing will be reorganized and this file might be deleted

#define DEBUG_TYPE "cfi-adder"

#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "CodasipInstructionSemantics.h"
#include "CodasipRegisterInfo.h"

#include "llvm/CodeGen/MachineInstrBuilder.h"

#include <iostream>

namespace {

/// Expands any dummy instructions which are still left
struct CfiAdder: public MachineFunctionPass
{
  StringRef getPassName() const {return "Codasip CFI Adder";}
  CfiAdder(): MachineFunctionPass(ID), TII(nullptr), TM(nullptr) {}
  CfiAdder(CodasipTargetMachine& tm): MachineFunctionPass(ID), TII(tm.getInstrInfo()), TM(&tm) {}
  bool runOnMachineFunction(MachineFunction& MF);
  /// Emits cfi for the given instruction in the given place
  bool EmitCfi(const MachineInstr& MI, MachineBasicBlock::iterator II);
  // target instrs & machine
  const CodasipInstrInfo* TII;
  const CodasipTargetMachine* TM;
  /// Current machine function
  MachineFunction* MF;
  static char ID;
protected:
  int StackShift;
};

} // end of anonymous namespace

char CfiAdder::ID = 0;

static RegisterPass<CfiAdder> X("cfi-adder", "Codasip CFI Adder", false, false);

bool CfiAdder::runOnMachineFunction(MachineFunction& MF_)
{
  StackShift = 0;
  bool changed = false;
  MF = &MF_;
  for (MachineFunction::iterator FI=MF->begin(); FI!=MF->end(); ++FI)
  {
    for (MachineBasicBlock::iterator MBI=FI->begin(); MBI!=FI->end(); ++MBI)
    {
      MachineInstr& MI = *MBI;
      // basic cfi emitted in frame lowering
      if (MI.getOpcode()==TargetOpcode::CFI_INSTRUCTION) continue;
      // is this setup/destroy?
      if (!(MI.getFlag(MachineInstr::FrameSetup) || MI.getFlag(MachineInstr::FrameDestroy))) {
        continue;
      }
      // emit cfi
      changed |= EmitCfi(MI,MBI);
    }
  }
  return changed;
}

bool CfiAdder::EmitCfi(const MachineInstr& MI, MachineBasicBlock::iterator II)
{
  const TargetRegisterInfo* TRI = TM->getRegisterInfo();
  const CodasipRegisterInfo* CRI = static_cast<const CodasipRegisterInfo*>(TRI);
  const TargetFrameLowering* TFL = TM->getFrameLowering();
  MachineBasicBlock* MB = II->getParent();
  DebugLoc dl = MI.getDebugLoc();
  ++II;
  // determine setup/destroy
  assert(MI.getFlag(MachineInstr::FrameSetup) || MI.getFlag(MachineInstr::FrameDestroy));
  const bool isSetup = MI.getFlag(MachineInstr::FrameSetup);
  assert(isSetup != MI.getFlag(MachineInstr::FrameDestroy));
  MachineInstr::MIFlag flag = (isSetup? MachineInstr::FrameSetup: MachineInstr::FrameDestroy);
  // get instr code and semantics
  const unsigned instrID = MI.getOpcode();
  std::vector<SDValue> roots_;
  SelectionDAG* sem = GetCodasipPattern(*TM,*MF,instrID,roots_);
  //sem->viewGraph();
  // can anything be done?
  if (roots_.empty()) return false;
  // ignore 1-bit outputs
  std::vector<SDValue> roots;
  roots.reserve(roots_.size());
  for (auto it = roots_.begin(); it != roots_.end(); ++it)
  {
    if (it->getOpcode()==ISD::CopyToReg) {
      if (it->getOperand(1).getScalarValueSizeInBits()==1) {
        continue;
      }
    }
    roots.push_back(*it);
  }
  assert(roots.size()==1);
  // start from the root
  SDValue root = roots.front();
  // aux representation for operands
  struct OperAux
  {
    // reg(true)/constant(false)
    bool type;
    int val;
    int dwarf;
    OperAux(): type(1), val(-1), dwarf(-1) {}
  };
  // positions
  enum {DST,BASE,OFF,CNT,SRC=BASE,VAL=DST};
  // operands (dst, base/src, off)
  std::array<OperAux,CNT> ops;
  // get or create an operand
  std::function<void(SDValue, const unsigned)> storeOper = [&MI,&ops,&storeOper,TRI](SDValue val, const unsigned i) -> void
  {
    OperAux& oa = ops.at(i);
    SDNode* n = val.getNode();
    switch (n->getOpcode())
    {
      case ISD::CopyToReg:
        storeOper(n->getOperand(1),i);
        return;
      case ISD::Register:
      {
        // get oper index
        assert(RegisterSDNode::classof(n));
        unsigned reg = cast<RegisterSDNode>(n)->getReg();
        oa.type = true;
        // fixreg
        if (reg<Codasip::NUM_TARGET_REGS)
        {
          oa.val = reg;
        }
        // oper
        else
        {
          // get oper
          MachineOperand op = MI.getOperand(reg-Codasip::NUM_TARGET_REGS);
          if (op.isReg()) {
            oa.val = op.getReg();
          }
          else {
            assert(op.isImm());
            oa.type = false;
            oa.val = op.getImm();
          }
        }
        break;
      }
      case ISD::Constant:
        oa.type = false;
        oa.val = cast<ConstantSDNode>(n)->getSExtValue();
        break;
      default:
        assert(false);
    }
    // set dwarf, if reg
    if (oa.type)
    {
      assert(oa.val >= 0);
      oa.dwarf = TRI->getDwarfRegNum(oa.val,0);
      assert(oa.dwarf >= 0);
    }
  };
  // emit proper cfi
  switch (root.getOpcode())
  {
    case ISD::CopyToReg:
    {
      storeOper(root,DST);
      root = root.getOperand(2);
      int sign = +1;
      switch (root.getOpcode())
      {
        case ISD::SUB:
          sign = -1;
        case ISD::ADD:
          assert(root.getOperand(0).getOpcode()==ISD::Register);
          assert(root.getOperand(1).getOpcode()==ISD::Register);
          storeOper(root.getOperand(0),BASE);
          storeOper(root.getOperand(1),OFF);
          assert(ops[DST].type && ops[BASE].type);
          // shift of sp?
          if (ops[DST].val==(int)CRI->GetSP(0) && ops[BASE].val==(int)CRI->GetSP(0) && !ops[OFF].type)
          {
            // normal case?
            if (!TFL->hasFP(*MF))
            {
              // remember the shift
              const int shift = -sign*ops[OFF].val;
              StackShift += shift;
              // emit cfi
              MCCFIInstruction valOffset = MCCFIInstruction::createAdjustCfaOffset(nullptr,shift);
              unsigned CFIIndex = MF->addFrameInst(valOffset);
              BuildMI(*MB,II,dl, TII->get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(flag);
            }
            // no action otherwise (see lower)
          }
          // setting a new value of BP
          else if (ops[DST].val==(int)CRI->GetBP(0) && ops[BASE].val==(int)CRI->GetSP(0) && !ops[OFF].type)
          {
            assert(TFL->hasFP(*MF));
            assert(StackShift==0);
            unsigned CFIIndex = MF->addFrameInst(MCCFIInstruction::createDefCfa(nullptr, ops[DST].dwarf, sign*ops[OFF].val));
            BuildMI(*MB,II,dl, TII->get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(flag);
          }
          // restoring SP from BP (almost the same action, just opposite sign)
          else if (ops[DST].val==(int)CRI->GetSP(0) && ops[BASE].val==(int)CRI->GetBP(0) && !ops[OFF].type)
          {
            assert(TFL->hasFP(*MF));
            unsigned CFIIndex = MF->addFrameInst(MCCFIInstruction::createDefCfa(nullptr, ops[DST].dwarf, -sign*ops[OFF].val));
            BuildMI(*MB,II,dl, TII->get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(flag);
          }
          // note: another option is indirect sp shift - no cfi was generated for that
          break;
        // note: this can occur for multi-stacks
        case ISD::Register:
          // no action
          break;
        // cfi for this was added in CodasipGenFrameLowering::emitEpilogue already
        case ISD::LOAD:
          // no action
          break;
        default:
          assert(false);
      }
      break;
    }
    case ISD::STORE:
      assert(root.getOperand(1).getOpcode()==ISD::Register);
      storeOper(root.getOperand(1),VAL);
      root = root.getOperand(2);
      assert(root.getOpcode()==ISD::ADD);
      assert(root.getOperand(0).getOpcode()==ISD::Register);
      assert(root.getOperand(1).getOpcode()==ISD::Register);
      storeOper(root.getOperand(0),BASE);
      storeOper(root.getOperand(1),OFF);
      // store of RAR/BP
      assert(ops[VAL].type && ops[BASE].type);
      if (ops[BASE].val==(int)CRI->GetSP(0) && !ops[OFF].type)
      {
        MCCFIInstruction cfiOffset = MCCFIInstruction::createOffset(nullptr, ops[VAL].dwarf, ops[OFF].val-StackShift);
        unsigned CFIIndex = MF->addFrameInst(cfiOffset);
        BuildMI(*MB,II,dl, TII->get(TargetOpcode::CFI_INSTRUCTION)).addCFIIndex(CFIIndex).setMIFlag(flag);
      }
      else {
        errs() << "cfi emission: unsupported frame operation encountered\n";
      }
      break;
    default:
      errs() << "cfi emission: unsupported kind of a frame operation encountered\n";
  }
  // free dag
  delete sem;
  return true;
}

FunctionPass *llvm::createCodasipCfiAdded(CodasipTargetMachine& tm) {
  return new CfiAdder(tm);
}
