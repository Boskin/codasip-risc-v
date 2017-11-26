/**
 * Codasip Ltd
 *
 * Copyright 2016 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2016-08-19 14:05:32
 * \author  Stanislav Melo
 * \version 6.2.0
 * \brief   peephole optimizer that is run before register allocation
 */


#ifndef CODASIPPREPOSTRAPEEPHOLE_H
#define CODASIPPREPOSTRAPEEPHOLE_H

#include "llvm/Target/TargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/CodeGen/LiveIntervalAnalysis.h"
#include "llvm/CodeGen/LiveVariables.h"
#include "llvm/CodeGen/LiveRangeEdit.h"
#include "llvm/CodeGen/LiveStackAnalysis.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/CodeGen/ISDOpcodes.h"
#include "codasip/Target/CodasipBasePeephole.h"

#include <map>
#include <set>
#include <vector>
#include <algorithm>
#include <cinttypes>

namespace llvm {

typedef std::vector<MachineInstr*> MachineInstrVec;
typedef std::set<std::pair<unsigned,PatternOp*>> DeletedDefSet;

// ********************** PRE RA PEEPHOLE **************************

class PreRAPeephole: public CodasipPeepholeBase, public MachineFunctionPass
{
  LiveIntervals *LI;
  static char ID;
  // obligatory function
  StringRef getPassName() const {return "CodasipPeephole-preRA ";}
  // find all instructions of pattern except first one
  bool findTheRest(MachineInstr *miIn);
  // check data dependencies if pattern instructions are not connected
  bool dataDepCheck(MachineInstr *beginMI, MachineInstr *endMI);
  // create new result operand
  bool createResOp(int resIndex, unsigned opIndex, MachineInstrBuilder &MIB, unsigned mcidIdx);
  // create conversion instruction
  bool convertOperand(MachineOperand &fromMo, unsigned toRc, MachineInstr *pos,
                      unsigned &resReg);
  // create convert instructions for outside uses
  void convertReturnValue();
  // help function for creating virtual registers
  unsigned createVirtReg(unsigned rc);
  // return true if patt ins on position PattInsIndex can have outside uses,
  // also fill outsideUses with those outside insts
  bool checkOutsideUses(std::map<int,MachineInstrVec> &outsideUses);
  // find next instruction of pattern, that was connected
  // to previous one in pattern
  bool findNextConnectedInstr(MachineInstr *miIn, unsigned index,
                              PatternOp *connectedOper);
  bool canGoUp(MachineInstr *lastFound);
  bool canGoDown(MachineInstr *lastFound);
  public:
  // other passes that this pass uses
  void getAnalysisUsage(AnalysisUsage &AU) const
  {
    AU.addRequired<LiveIntervals>();
    MachineFunctionPass::getAnalysisUsage(AU);
  }
  bool runOnMachineFunction(MachineFunction &F);
  // constructor
  PreRAPeephole(TargetMachine &tm, const TargetInstrInfo *tii,
                const TargetRegisterInfo *tri, char &ID):
    CodasipPeepholeBase(tm, tii, tri), MachineFunctionPass(ID) {}
  // destructor
  ~PreRAPeephole()
  {
    clearHelpStructures();
    m_vectorOfPatterns.clear();
  }

};

// ********************* POST RA PEEPHOLE **************************

class PostRAPeephole: public CodasipPeepholeBase, public MachineFunctionPass
{
  static char ID;
  MachineInstrBuilder &setInstFlags(MachineInstrBuilder &MIB);
  // obligatory function
  StringRef getPassName() const {return "CodasipPeephole-postRA ";}
  // find all instructions of pattern except first one
  bool findTheRest(MachineInstr *miIn);
  bool canGoUp(MachineInstr *lastFound);
  bool canGoDown(MachineInstr *lastFound);
  // check data dependencies if pattern instructions are not connected
//  bool dataDepCheckAux(MachineInstr *beginMI, MachineInstr *endMI,
//                       MachineInstr *newlyFound);
  bool checkBetween(MachineInstr *beginMi, unsigned examinedReg, bool &checkSuccMbbs);
  bool isUseInMi(MachineInstr *mi, unsigned examinedReg);
  bool isDeletedDefUsedOutside();
  bool dataDepCheckAux(MachineInstr *beginMI, MachineInstr *endMI, MachineInstr *examined);

  public:
  bool runOnMachineFunction(MachineFunction &F);
  // constructor
  PostRAPeephole(TargetMachine &tm, const TargetInstrInfo *tii,
                 const TargetRegisterInfo *tri, char &ID):
    CodasipPeepholeBase(tm, tii, tri), MachineFunctionPass(ID) {}
  // destructor
  ~PostRAPeephole()
  {
    clearHelpStructures();
    m_vectorOfPatterns.clear();
  }
};

} // End of llvm namespace

#endif  // CODASIPPREPOSTRAPEEPHOLE_H
