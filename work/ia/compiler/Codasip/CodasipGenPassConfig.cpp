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


#include "CodasipGenPassConfig.h"

#include "codasip/Passes.h"

extern bool __codasip_pass_disable__;

using namespace llvm;

// Register DAG2DAG pass.
bool CodasipGenPassConfig::addInstSelector()
{
  addPass(createCodasipISelDag(*static_cast<CodasipTargetMachine*>(TM)));
  return false;
}

// post-isel
void CodasipGenPassConfig::addMachinePasses()
{
  CodasipTargetMachine &tm = getTM<CodasipTargetMachine>();
  // code-size optim, only emulations, no jumps
  if (tm.OL>=CodeGenOpt::Default) {
    addPass(createCodasipSmallerInstructionsPass(*static_cast<CodasipTargetMachine*>(TM), OnlyEmul)); 
  }
  TargetPassConfig::addMachinePasses();
}

bool CodasipGenPassConfig::addSuperBlockPreRegAlloc()
{
  CodasipTargetMachine &tm = getTM<CodasipTargetMachine>();
  if (tm.OL>=CodeGenOpt::Default) {
    if (!__codasip_pass_disable__) {
      addPass(createSuperBlockScheduler());  
      return true;
    }
  }
  return false;
}

void CodasipGenPassConfig::addPreRegAlloc()
{
  CodasipTargetMachine &tm = getTM<CodasipTargetMachine>();
  if (tm.OL>=CodeGenOpt::Default) {
    addPass(createHWLoopsPass());
    addPass(createCodasipMoiOptimPass(*static_cast<CodasipTargetMachine*>(TM)));
    addPass(createCodasipPreRAPeepholePass(*static_cast<CodasipTargetMachine*>(TM)));
  }
}

// note: this isn't called if -O0
void CodasipGenPassConfig::addMachineLateOptimization()
{
  CodasipTargetMachine &tm = getTM<CodasipTargetMachine>();
  // add FP_OPERAND replace pass
  addPass(createCodasipFpOperReplaceerPass(*static_cast<CodasipTargetMachine*>(TM)));
  // this method is called only when optimization level is not -O0
  // first execute default LLVM passes
  TargetPassConfig::addMachineLateOptimization();
  if (tm.OL>=CodeGenOpt::Default) {
    // code-size optim, normal instructions + jumps if lt info
    addPass(createCodasipSmallerInstructionsPass(*static_cast<CodasipTargetMachine*>(TM), LtoJump));

  }
}

void CodasipGenPassConfig::addPreSched2()
{
  if (getOptLevel() != CodeGenOpt::None)
  {
    
  }
}

void CodasipGenPassConfig::addPreEmitPass()
{
  CodasipTargetMachine& tm = getTM<CodasipTargetMachine>();
  // note: this is actully third pass of dummy expansion
  addPass(createCodasipCallCompletionPass(tm));
  // code-size optim, no jump instructions
  if (tm.OL>=CodeGenOpt::Default) {
    // must be after CodasipCallCompletionPass
    addPass(createCodasipPostRAPeepholePass(tm));
    // code-size optim only normal instructions, no jumps
    addPass(createCodasipSmallerInstructionsPass(tm,NormalInst));
  }
  // sequences, vliw, simple nops
  
  addPass(createCodasipMipsDelaySlotFillerPass());
  addPass(createCodasipNoopAdderPass(tm));
  
  // jumps
  addPass(createCodasipJumpLengthCheckerPass(tm));
  // code-size optim only jump instructions
  if (tm.OL>=CodeGenOpt::Default) {
    addPass(createCodasipSmallerInstructionsPass(tm,OnlyJump));
  }
  // note: and this is actually fourth dummy expansion, dummies can be inserted even after the third one
  addPass(createCodasipCallCompletionPass(tm));
  // this must be last
  addPass(createCodasipCfiAdded(tm));
}

// IR manipulation pass

namespace {
class CodasipPreISel: public ModulePass
{
  CodasipTargetMachine &TM;
public:
  static char ID;
  explicit CodasipPreISel(CodasipTargetMachine &tm): ModulePass(ID), TM(tm) {}

  virtual bool runOnModule(Module &M);

  StringRef getPassName() const {
    return "CodasipPreISel";
  }
};
}

char CodasipPreISel::ID = 0;

bool CodasipPreISel::runOnModule(Module &M)
{
  const CodasipTargetLowering *TL = TM.getTargetLowering();
  const DataLayout &td = TM.getDataLayout();
  bool changed = false;
  // check weird types
  for (Module::iterator MI=M.begin(); MI!=M.end(); ++MI)
  {
    for (Function::iterator FI=MI->begin(); FI!=MI->end(); ++FI)
    {
      for (BasicBlock::iterator BI=FI->begin(); BI!=FI->end(); ++BI)
      {
        // Check calls for half float operands
        if (BI->getOpcode() == Instruction::Call)
        {
          CallInst *call = cast<CallInst>(BI);
          for (User::op_iterator it=call->arg_operands().begin(); it!=call->arg_operands().end(); ++it)
          {
            Value *val = it->get();
            Type *t = val->getType();
            if (t->isHalfTy() && !TL->isTypeLegal(EVT::getEVT(t,true))) {
              errs() <<
                  "The input application contains half-float operands in a call. "
                  "However, the architecture doesn't support this type. "
                  "This isn't allowed in LLVM. Edit your application.\n"
                  ;
              exit(1);
            }
          }
        }
        // check va_args
        if (BI->getOpcode() == Instruction::VAArg)
        {
          Type* t = BI->getType();
          // try to get EVT
          EVT et = TL->getValueType(td,t,true);
          // check
          if (et.isSimple() && et==MVT::Other) {
            errs() << "There's an invalid type in va_arg. This isn't allowed. Edit your application.\n";
            exit(1);
          }
        }
        // == Non-power-of-2 types
        // load
        if (BI->getOpcode() != Instruction::Load) {
          continue;
        }
        // type
        //LLVMContext &c = BI->getContext();
        Type *t = BI->getType();
        if (isa<VectorType>(t)) {
          continue;
        }
        EVT et = EVT::getEVT(t,true); //return unhandled as "Other"
        // Pavel's type?
        // - not MVT at all
        if (et.isExtended()) {
          continue;
        }
        // - completely unhandled (structure, function, etc.)
        if (et.getSimpleVT()==MVT::Other) {
          continue;
        }
        // - MVT, but not Pavel's
        if (et.isOriginal()) {
          continue;
        }
        // is legal?
        if (!TL->isTypeLegal(et))
        {
          // warning
          errs() <<
              "It seems your program may contain integer variables of not-power-of-2 size (" << et.getEVTString() << ") which aren't directly supported by your HW. "
              "If it's true, there are three possibilities of what went wrong:\n"
              "1) You have used such variable by mistake.\n"
              "2) The processor model needs a general register class for this data type and a full set of basic operations for it. "
                 "Please see the compiler manual, chapter 'Model and Extraction', section 'Codal Description'.\n"
              "3) In any case, you may contact the Codasip support for further guidelines and help.\n"
              "Note: the compilation will continue but the behaviour may be undefined.\n"
              ;
          //exit(1);
        }
      }
    }
  }
  return changed;
}

// Add the pass defined above
bool CodasipGenPassConfig::addPreISel()
{
  addPass(new CodasipPreISel(getCodasipTargetMachine()));
  return TargetPassConfig::addPreISel();
}

