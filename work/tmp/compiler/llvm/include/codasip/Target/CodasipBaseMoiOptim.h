/**************************************************************************************************
 *                     Copyright (c) 2016  Codasip, Ltd. All Rights Reserved.                     *
 **************************************************************************************************/
/**
 *  \file
 *  \author jan
 *  \date   27 Jan 2016
 *  \brief  Declaration/Implementation of the class.
 */

// This pass is run before register allocation and performs a local optimisation
// which replaces certain sequences of instructions into MOIs.

// Note: this is still in a prototype phase

#ifndef INCLUDE_CODASIP_TARGET_CODASIPBASEMOIOPTIM_H_
#define INCLUDE_CODASIP_TARGET_CODASIPBASEMOIOPTIM_H_

#define DEBUG_TYPE "moi-optim"

#include "llvm/Target/TargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Support/Debug.h"

#include <map>
#include <set>
#include <list>
#include <vector>
#include <algorithm>

#include <cstdio>
#include <iostream>

namespace llvm
{

// MOI peephole optimizer
struct BaseMoiOptim: public MachineFunctionPass
{
  TargetMachine &TM;
  const TargetInstrInfo *TII;

  BaseMoiOptim(TargetMachine &tm, const TargetInstrInfo *tii, char &ID);
  StringRef getPassName() const override {return "Codasip MOI machine code optimizer";}
  bool MakeOptim(MachineBasicBlock &MBB);

  bool runOnMachineFunction(MachineFunction &F);

  void getAnalysisUsage(AnalysisUsage &AU) const
  {
    // we do not preserve live intervals
    MachineFunctionPass::getAnalysisUsage(AU);
  }

  /** A mapping of operands of one instruction on another.
   * [I1op:I2op] - I1 is MOI, I2 is replaceable */
  typedef std::map<unsigned,unsigned> OpIndMap;
  /** A mapping of SOI operands on fixed regs of a MOI
   * [I1fr:I2op] - I1 is MOI, I2 is replaceable */
  typedef std::map<unsigned,unsigned> FixrIndMap;
  /** An instruction replaceable by a MOI (potentially).
   * Various meta-info is added. */
  struct MOI_ReplItem
  {
    /// The instruction itself.
    unsigned ins;
    /// A mapping of indexes. [MOIop:RIop]
    OpIndMap om;
    /// A mapping of fixregs. [I1fr:I2op]
    FixrIndMap fm;
  };
  /// A list of instructions for a MOI
  typedef std::vector<MOI_ReplItem> MoiData;
  /// An item of moi data (MOI:replaceables)
  typedef std::pair<unsigned,MoiData> MoiItem;
  /// Storage for MOI data (draft)
  struct MoiMap: std::vector<MoiItem>
  {
    // for convenience
    void push_back(unsigned c)
    {
      std::vector<MoiItem>::push_back(MoiItem(c,MoiData()));
    }
  };
  /// MOI data computed by backendgen
  MoiMap Mois;
  /// A record for optimising the search process
  typedef std::set<unsigned> OpcSet;
  /// All simple instruction which can be replaced by a MOI
  OpcSet Sois;
};

}//namespace llvm

#endif  // CODASIPBASEMOIOPTIM_H_
