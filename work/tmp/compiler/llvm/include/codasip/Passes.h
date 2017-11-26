/******************************************************************************
 *      "Copyright (C) 2014, Codasip s.r.o., All Rights Reserved"             *
 ******************************************************************************/

#ifndef CODASIP_PASSES_H
#define CODASIP_PASSES_H

#include "llvm/Pass.h"
#include "llvm/Target/TargetMachine.h"
#include <string>

namespace llvm {
  class FunctionPass;
  class MachineFunctionPass;
  class PassInfo;
  //class PassManagerBase; // must not be here - collides with legacy::PassManagerBase
  class TargetLowering;
  class TargetRegisterClass;
  class raw_ostream;
}

namespace llvm {

FunctionPass *createPreEmitVliwScheduler();
// createSuperBlockScheduler - This pass performs SuperBlock scheduling.
FunctionPass *createSuperBlockScheduler();
MachineFunctionPass *createTestLLCPass();
MachineFunctionPass *createRegisterSanitizerPass();
MachineFunctionPass *createCoalesFixerPass();
MachineFunctionPass *createHWLoopsPass();
MachineFunctionPass *createModuloSchedulingPass();
MachineFunctionPass *createModSchedFinalizerPass();

FunctionPass *createCodasipMipsDelaySlotFillerPass();

// FIXME ONLY FOR TESTING
FunctionPass *createTestPass();
FunctionPass *createSuperBlockSchedulingDriver();

}

#endif
