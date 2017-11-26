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


#include "Codasip.h"
#include "CodasipTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/CodeGen/ScoreboardHazardRecognizer.h"

#include <list>
#include <set>

namespace llvm {

/// Represents writes which occusrs in the same cycle.
typedef std::set<unsigned> regList;
/// Our own version of a scoreboard for register writes.
struct RegisterBoard: public std::list<regList>
{
  unsigned getDepth() const {return size();}
  /// Creates a list with 'n' empty items.
  void reset(unsigned n);
  /** Advances/perishes older records, adds a new one.
   * Hence, the depth (size of the list) remains same. */
  void advance();
  /** Is the given register pending?
   * In other words: does it have a record? */
  bool isPending(unsigned r);
  /** Adds a register in the given cycle.
   * Asserts if the list isn't long enough. */
  void addReg(unsigned c, unsigned r);
  /// Prints the scoreboard.
  void dump() const;
};
  
/// Codasip post-RA hazard recognizer
class MachineHazardRecognizer: public ScoreboardHazardRecognizer
{
  const TargetInstrInfo *TII;
public:
  MachineHazardRecognizer(const InstrItineraryData *ItinData, const TargetInstrInfo *tii)
  :ScoreboardHazardRecognizer(ItinData,NULL), TII(tii) {}
  // check scoreboards
  bool Empty();
  // enriched Advance and Reset
  void Reset();
  void AdvanceCycle();
  // our own hazard detection
  // - almost same as in llvm but over machine instr
  ScheduleHazardRecognizer::HazardType getMachHazardType(const MachineInstr *MI, int Stalls=0);
  // another mi variation
  void EmitMachInstruction(const MachineInstr *MI);
  void EmitMachInstruction2(const MachineInstr *MI);
private:
  // for data hazards
  RegisterBoard Registers;
};

}
