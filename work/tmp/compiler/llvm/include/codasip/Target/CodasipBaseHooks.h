//
// Hooks in llvm (mostly CodeGen) that can be used to modify selectionDAG and MachineInstr buulding ..
//
#ifndef CODASIPBASEHOOKS_H
#define CODASIPBASEHOOKS_H

#include "llvm/IR/Value.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/SelectionDAG.h"

using namespace llvm;

namespace llvm {
  class MachineInstr;
  class SDNode;
  class SelectionDAG;
  class SDLoc;
  class CallInst;
  class SDValue;
  class Value;
}

namespace llvm {

struct CodasipBaseHooks
{
    virtual void SDBuilder_Clear(void *builder) { }
    virtual const Value *SDBuilder_TargetIntrinsic_Process(void *builder, SelectionDAG &DAG, SmallVectorImpl<SDValue> &Ops,
                                                           const CallInst &I, SDLoc sdloc, unsigned Intrinsic, bool &is_processed) { return nullptr; }
    virtual void SDBuilder_TargetIntrinsic_Pair(void *builder, SelectionDAG &DAG, SDValue &Result, SDValue &Pair) { }
    virtual void SDBuilder_TargetIntrinsic_Result(void *builder, SDValue Result) { }
    virtual void EmitMachineNode_Notify(unsigned Opc, SDNode *Node, const MachineInstr *MI) { }
    virtual void MachineInstrCopy_Notify(const MachineInstr *, const MachineInstr *) { }
    virtual bool MachineInstr_Isspecial(unsigned opc) { return false; }

    virtual ~CodasipBaseHooks() { }
};

}

#endif
