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


// Main td file of Codasip template.

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Classes used for relation maps.
//===----------------------------------------------------------------------===//
// PredRel - Filter class used to relate non-predicated instructions with their
// predicated forms.
class PredRel;

//===----------------------------------------------------------------------===//
// Generate mapping table to relate non-predicate instructions with their
// predicated formats - true and false.
//
def getPredOpcode : InstrMapping {
  // Choose a FilterClass that is used as a base class for all the
  // instructions modeling this relationship. This is done to reduce the
  // search space only to these set of instructions.
  let FilterClass = "PredRel";

  // Instructions with same values for all the fields in RowFields form a
  // row in the resulting relation table.
  // For example, if we want to relate 'ADD' (non-predicated) with 'Add_pt'
  // (predicated true) and 'Add_pf' (predicated false), then all 3
  // instructions need to have same value for BaseOpcode field. It can be any
  // unique value (Ex: XYZ) and should not be shared with any other
  // instruction not related to 'add'.
  let RowFields = ["BaseOpcode"];

  // List of attributes that can be used to define key and column instructions
  // for a relation. Key instruction is passed as an argument
  // to the function used for querying relation tables. Column instructions
  // are the instructions they (key) can transform into.
  //
  // Here, we choose 'PredSense' as ColFields since this is the unique
  // attribute of the key (non-predicated) and column (true/false)
  // instructions involved in this relationship model.
  let ColFields = ["PredSense"];

  // The key column contains non-predicated instructions.
  let KeyCol = ["none"];

  // Two value columns - first column contains instructions with
  // PredSense=true while second column has instructions with PredSense=false.
  let ValueCols = [["true"], ["false"]];
}

//===----------------------------------------------------------------------===//
// Generate mapping table to relate predicate-true instructions with their
// predicate-false forms
//
def getFalsePredOpcode : InstrMapping {
  let FilterClass = "PredRel";
  let RowFields = ["BaseOpcode"];
  let ColFields = ["PredSense"];
  let KeyCol = ["true"];
  let ValueCols = [["false"]];
}

//===----------------------------------------------------------------------===//
// Generate mapping table to relate predicate-false instructions with their
// predicate-true forms
//
def getTruePredOpcode : InstrMapping {
  let FilterClass = "PredRel";
  let RowFields = ["BaseOpcode"];
  let ColFields = ["PredSense"];
  let KeyCol = ["false"];
  let ValueCols = [["true"]];
}

//===----------------------------------------------------------------------===//
// Content files
//===----------------------------------------------------------------------===//
include "CodasipRegisterInfo.td"
include "CodasipSchedule.td"
include "CodasipInstrInfo.td"
include "CodasipCallingConv.td"

def CodasipInstrInfo : InstrInfo;

//===----------------------------------------------------------------------===//
// Top-level definitions
//===----------------------------------------------------------------------===//

def CodasipFeature: SubtargetFeature<"codasip","codasip","true","This is a Codasip target.">;

 
def CodasipProc: Processor<"codasip", CodasipItineraries, [CodasipFeature]>;


def Codasip: Target {
  let InstructionSet = CodasipInstrInfo;
}

