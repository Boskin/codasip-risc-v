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


/* Creates target specific DAG from general one.
 * We should try to leave this file as it is and describe
 * as much as we can in td in InstrInfo.td */

#define DEBUG_TYPE "codasip-isel"

#include "llvm/IR/Intrinsics.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Target/TargetIntrinsicInfo.h"
#include "llvm/CodeGen/PseudoSourceValue.h"
#include "codasip/Target/CodasipBaseMoiLowerer.h"
#include "CodasipInstructionSemantics.h"
#include "Codasip.h"
#include "CodasipISelLowering.h"
#include "CodasipTargetMachine.h"
#include "CodasipMachineFunction.h"
#include "CodasipInstrInfo.h"

#include <cstdio>
#include <iostream>
#include <cassert>
#include <vector>
#include <list>
#include <set>
#include <map>
#include <algorithm>

#include <inttypes.h>
// on windows redefinition of macros
#undef PRId64
#undef PRIi64
#undef PRIo64
#undef PRIu64
#undef PRIx64
#undef PRIX64

using namespace llvm;
using namespace Codasip;

#define MOI_GROUP_MAP_SIZE  0

namespace {

class CodasipGenDAGToDAGISel: public SelectionDAGISel
{
protected:
  CodasipTargetMachine &TM;

public:
  explicit CodasipGenDAGToDAGISel(CodasipTargetMachine &tm):
  SelectionDAGISel(tm, tm.getOptLevel()), TM(tm) {}
  bool SelectInlineAsmMemoryOperand(const SDValue &Op, unsigned ConstraintCode, std::vector<SDValue> &OutOps) override;
  void PreprocessISelDAG() override;
  void PostprocessISelDAG() override {}
  StringRef getPassName() const {return "Codasip DAG2DAG Pattern Instruction Selection";}

  

protected:
  #include "CodasipGenDAGISel.inc"

  void Select(SDNode *Node) override;
  bool SelectOffsettable(const SDValue &Op, std::vector<SDValue> &OutOps);
  /** Checks a value for imm oper.
   * \param width  The real width. */
  bool CheckImm(int64_t Imm, int width, bool sign, int trunc) const;
  /// Same as CheckImm
  virtual bool CheckSymbol(SDNode *n, int width, bool sign, int trunc) const;
  /** Checks align and address space of a load/store.
   * \param space  Address space index.   */
  bool CheckLoadStore(const MemSDNode *n, int align, int space) const;
  /** Make checks if FI.
   * \param rc Class index. */
  bool CheckFI(SDNode *n, int rc) const;

  /// Mapping of instructions on MOI groups (instruction -> group)
  static int InstrGrpMap[][2];

  void LowerMoiPatterns(SelectionDAG *DAG)
  {
    bool was_change = false;
    std::vector<SDValue> roots;
    for (int i = 0; i <  MOI_GROUP_MAP_SIZE; ++i)
    {
      SelectionDAG *Pattern = GetCodasipPattern(TM, *MF, InstrGrpMap[i][0], roots);
      if (roots.empty())
      {
        continue;
      }
      BaseDagPattern DagPattern(Pattern, InstrGrpMap[i], TM, roots);
      do {
        was_change = false;
        was_change |= DagPattern.BaseTryMatch(DAG);
      } while (was_change);
      roots.clear();
    }
    DEBUG(dbgs() << "\n======= after MOI lowering =======\n";
          DAG->dump();
          dbgs() << "==================================\n");
  }
};

// moi map
int CodasipGenDAGToDAGISel::InstrGrpMap[MOI_GROUP_MAP_SIZE+1][2] = {

};

}

// invoked before the selection
// note: space cast nodes represent a meta-information
void CodasipGenDAGToDAGISel::PreprocessISelDAG()
{
  // note: we are doing multiple loops for simplicity
  CodasipFunctionInfo *info = MF->getInfo<CodasipFunctionInfo>();
  // remove all address space casts
  for (SelectionDAG::allnodes_iterator I = CurDAG->allnodes_begin();  I != CurDAG->allnodes_end(); ++I)
  {
    SDNode *N = &(*I);
    if (N->getOpcode()==ISD::ADDRSPACECAST)
    {
      assert(N->getNumOperands()==1);
      SDValue op = N->getOperand(0);
      // remember space (source doesn't matter)
      if (op->getOpcode()==ISD::FrameIndex)
      {
        const AddrSpaceCastSDNode *asc = cast<AddrSpaceCastSDNode>(N);
        const unsigned space = asc->getDestAddressSpace();
        const FrameIndexSDNode *fi = cast<FrameIndexSDNode>(op.getNode());
        const int ind = fi->getIndex();
        const bool check = info->SetAdrSpace(ind,space);
        assert(!check && "unexpected address space conflict");
      }
      else {
        errs() << "It's forbidden to use address space casts. They are reserved for internal usage only (marking of multi-stack local variables).\n";
        errs() << "This could be caused by casting pointer from one address space to pointer from another.\n";
        exit(1);
      }
      // replace
      ReplaceUses(N,op.getNode());
    }
  }
  // revisit these FIs later
  std::set<int> FIs2Revisist;
  // handle implicit FIs (all explicit are marked now)
  for (SelectionDAG::allnodes_iterator I = CurDAG->allnodes_begin();  I != CurDAG->allnodes_end(); ++I)
  {
    SDNode *N = &(*I);
    if (MemSDNode::classof(N))
    {
      MemSDNode *MN = cast<MemSDNode>(N);
      // has FI?
      SDNode *base = MN->getBasePtr().getNode();
      if (base->getOpcode() != ISD::FrameIndex) {
        continue;
      }
      const FrameIndexSDNode *fi = cast<FrameIndexSDNode>(base);
      const int ind = fi->getIndex();
      // has explicit setting?
      if (info->HasExplAdrSpace(ind))
      {
        // note: MN->getAddressSpace() doesn't return a valid information (result of the above?)
        continue;
      }
      // desired space
      EVT vt = MN->getMemoryVT();
      unsigned space = GetSpace4Vt(vt);
      // existing record?
      if (info->HasAdrSpace(ind))
      {
        unsigned space2 = info->GetAdrSpace(ind);
        if (space != space2)
        {
          // prioritize higher, keep orig otherwise
          if (space < space2) {
            space = space2;
          }
          // print warning
          StringRef name = MF->getName();
          errs() << "Conflicting memory accesses to frame index " << ind << " in function " << name.str() << ". "
                 << "It's accessed as different types from different memory spaces (different stacks). This may result in faulty ASM.\n";
        }
      }
      // mark
      info->SetAdrSpace(ind,space,true);
      info->MarkImplSpace(ind);
      // revisit later
      FIs2Revisist.insert(ind);
    }
  }
  // prepare nodes for MOIs
  if (TM.getOptLevel() >= 3) {
    LowerMoiPatterns(CurDAG);
  }
  // go through the nodes and find all frame indexes
  for (SelectionDAG::allnodes_iterator I = CurDAG->allnodes_begin();  I != CurDAG->allnodes_end(); ++I)
  {
    SDNode *N = &(*I);
    SDLoc dl(N);
    if (N->getOpcode()==ISD::FrameIndex)
    {
      // === turn (fi) into (add tfi,0)
      // prepare vt list
      SDVTList vts = N->getVTList();
      // make a copy (target version)
      FrameIndexSDNode *fi = cast<FrameIndexSDNode>(N);
      SDValue tfi = CurDAG->getTargetFrameIndex(fi->getIndex(), fi->getValueType(0));
      // prepare zero
      SDValue zr = CurDAG->getConstant(0, dl, fi->getValueType(0));
      // morph the original into (add tfi,0)
      SDValue ops[2] = {tfi,zr};
      ArrayRef<SDValue> aref(ops,2);
      N = CurDAG->MorphNodeTo(N, ISD::ADD, vts, aref);
      // === now handle the case, when there already was an add
      //     original: (add fi,imm)   preprocessed: (add (add tfi,0),imm)   desired: (add tfi,0) & (add tfi,imm)
      // go through all uses of the add node (the original fi)
      for (SDNode::use_iterator i=N->use_begin(); !i.atEnd(); ++i)
      {
        // is it an add?
        if (i->getOpcode()==ISD::ADD)
        {
          // and is adding an imm/const?
          if (i->getOperand(1).getOpcode()==ISD::Constant) {
            // redirect the first operand of this add to the newly created tfi
            CurDAG->UpdateNodeOperands(*i,tfi,i->getOperand(1));
          }
        }
      }
    }
  }
  //CurDAG->viewGraph();
  // tidy up
  CurDAG->RemoveDeadNodes();
}


// we should try to leave this on automatic processes of llvm
void CodasipGenDAGToDAGISel::Select(SDNode *Node)
{
  if (Node->isMachineOpcode()) return;
  SelectCode(Node);
}

// return true if failed
bool CodasipGenDAGToDAGISel::SelectOffsettable(const SDValue &Op, std::vector<SDValue> &OutOps)
{
  // is it an add? (anything local is)
  if (Op.getOpcode() != ISD::ADD) return true;
  assert(Op.getNumOperands()==2);
  // are ops tfi and a constant?
  const SDValue &op1 = Op.getOperand(0);
  const SDValue &op2 = Op.getOperand(1);
  assert(op1.getOpcode()==ISD::TargetFrameIndex);
  if (op2.getOpcode() != ISD::Constant) return true;
  ConstantSDNode *imm = static_cast<ConstantSDNode*>(op2.getNode());
  SDValue timm = CurDAG->getTargetConstant(*imm->getConstantIntValue(), imm, imm->getValueType(0));
  // all is ok
  OutOps.push_back(op1);
  OutOps.push_back(timm);
  return false;
}

// select an address
bool CodasipGenDAGToDAGISel::
SelectInlineAsmMemoryOperand(const SDValue& Op, unsigned ConstraintCode, std::vector<SDValue>& OutOps)
{
  switch (ConstraintCode)
  {
    // general
    case InlineAsm::Constraint_m:
    {
      bool check = SelectOffsettable(Op,OutOps);
      if (check) {
        OutOps.push_back(Op);
      }
      break;
    }
    // only offsetable
    case InlineAsm::Constraint_o:
      return SelectOffsettable(Op,OutOps);
    // non-offsetable
    case InlineAsm::Constraint_v:
      OutOps.push_back(Op);
      break;
    // unsupported
    default:
      return SelectionDAGISel::SelectInlineAsmMemoryOperand(Op,ConstraintCode,OutOps);
  }
  // all ok
  return false;
}

bool CodasipGenDAGToDAGISel::CheckSymbol(SDNode *n, int width, bool sign, int trunc) const
{
  // get the address node
  assert(n->getNumOperands()==1);
  SDValue op = n->getOperand(0);
  // is the address data or code?
  bool isData = true;
  // name of the symbol
  std::string name;
  // analyze the symbol
  switch (op.getOpcode())
  {
    case ISD::TargetExternalSymbol:
      name = cast<ExternalSymbolSDNode>(op)->getSymbol();
      isData = false; // should be an external function 
      break;
    case ISD::TargetGlobalAddress:
    {
      const GlobalValue *gv = cast<GlobalAddressSDNode>(op)->getGlobal();
      assert(gv->hasName());
      name = gv->getName().str();
      // var or func?
      if (GlobalObject::classof(gv)) {
        isData = GlobalVariable::classof(gv);
      }
      else {
        // don't analyse for now
        return true;
      }
      break;
    }
    default:
      // allow anything else for now
      return true;
  }
  // analyze name to get a width
  int dw = 32;
  int cw = dw;
  if (false) {}
  
  // if signed, then width is simply one bit smaller
  // note: what about relative addresses?
  if (sign) --width;
  // fits?
  if (isData) {
      return dw <= width;
  }
  else {
      return cw <= width;
  }
}

bool CodasipGenDAGToDAGISel::CheckImm(int64_t Imm, int width, bool sign, int trunc) const
{
  return CheckImmImpl(Imm,width,sign,trunc);
}

// move this to ins.inf.cpp?
bool llvm::CheckImmImpl(int64_t Imm, int width, bool sign, int trunc)
{
  const int MAX = 64;
  assert(width<MAX && "unsupported imm operand");
  if (width>MAX) return false;
  uint64_t imm = Imm;
  // check MSB
  uint64_t mask = -1;
  if (sign)
  {
    mask <<= (width-1);
    if ((imm&mask) != mask && (imm&mask)) {
      return false;
    }
  }
  else
  {
    mask >>= (MAX-width);
    if ((imm&mask) != imm) {
      return false;
    }
  }
  // check LSB
  if (trunc)
  {
    mask = -1;
    mask >>= (MAX-trunc);
    if (imm&mask) {
      return false;
    }
  }
  // all ok
  return true;
}

bool CodasipGenDAGToDAGISel::CheckLoadStore(const MemSDNode *n, int align, int space) const
{
  assert(n);
  CodasipFunctionInfo *info = MF->getInfo<CodasipFunctionInfo>();
  const MachinePointerInfo &pi = n->getPointerInfo();
  int al = n->getAlignment();
  int as = 0;
  // normal value
  if (pi.V.is<const Value*>())
  {
    as = pi.getAddrSpace();
  }
  else
  {
    const PseudoSourceValue *psv = pi.V.get<const llvm::PseudoSourceValue*>();
    assert(psv && "is neither a Value nor a PseudoValue");
    const FixedStackPseudoSourceValue *fpsv = dyn_cast<const FixedStackPseudoSourceValue>(psv);
    // remove this completely?
    if (fpsv)
    {
      int FI = fpsv->getFrameIndex();
      if (info->HasAdrSpace(FI)) {
        as = info->GetAdrSpace(FI);
      }
    }
    else
    {
      // get type
      EVT vt = n->getMemoryVT();
      as = GetSpace4Vt(vt);
    }
  }
  return align<=al && as==space;
}

bool CodasipGenDAGToDAGISel::CheckFI(SDNode *N, int rci) const
{
  // is rci a dummy class?
  bool isDummy = false;
  switch (rci)
  {
    default: break;
    
      isDummy = true;
  }
  // is FI?
  const bool isFI = FrameIndexSDNode::classof(N);
  // dummy class operand can be only FI
  if (isDummy && !isFI) return false;
  // normal case: nothing to check if not FI 
  if (!isFI) return true;
  FrameIndexSDNode *fin = cast<FrameIndexSDNode>(N);
  int FI = fin->getIndex();
  // get space
  CodasipFunctionInfo *info = MF->getInfo<CodasipFunctionInfo>();
  int space = 0;
  if (info->HasAdrSpace(FI)) {
    space = info->GetAdrSpace(FI);
  }
  // get FP
  const TargetRegisterInfo *RI = TM.getRegisterInfo();
  const CodasipRegisterInfo *CRI = static_cast<const CodasipRegisterInfo*>(RI);
  unsigned FP = CRI->getFrameRegister(*MF,space);
  // is call param?
  const bool callParam = info->IsOutFI(FI);
  if (callParam) {
    FP = CRI->GetSP(space);
  }
  // does the reg class contain FP?
  const TargetRegisterClass *RC = RI->getRegClass(rci);
  return RC->contains(FP);
}

// user's reimplementation
#include "CodasipCustSelDAG.inc"

/// Creates this pass.
FunctionPass *llvm::createCodasipISelDag(CodasipTargetMachine &TM) {
  return new CodasipDAGToDAGISel(TM);
}
