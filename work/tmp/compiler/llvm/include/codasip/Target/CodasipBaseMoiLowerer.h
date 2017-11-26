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
 * \file    CodasipBaseMoiLowerer.h
 * \date    26. 1. 2016
 * \author  Stanislav Melo
 * \version 5.5.0.
 * \brief   Base class for MoiLowerer
 */

#ifndef INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_
#define INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_

#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/Target/TargetRegisterInfo.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/MC/MCInstrDesc.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include <vector>
#include <list>
#include <map>

namespace llvm {

/// A map of opcodes and their count in pattern
typedef std::map<unsigned,unsigned> OpcodeCountMap;
/// A list of nodes
typedef std::list<SDNode*> NodeList;
/// A map of opcodes and found possible root nodes in CurDAG
typedef std::map<unsigned,NodeList> RootMap;
/// A list of nodelists
typedef std::list<NodeList> Node2List;
/// A map of opcodes and all possible mappings of corresponding model roots
typedef std::map<unsigned,Node2List> Mappingmap;
/// Group -> "has all operands covered by regs"
typedef std::pair<int,bool> GroupInfo;
typedef std::map<SDNode*, SDNode*> Map2Node;
typedef std::vector<SDValue> ValueVec;

/// Represents a multi-root pattern.
class BaseDagPattern
{
  protected:
    bool m_rootIsOp;
    MCInstrDesc m_insDesc;
    /// map of pattern roots opcodes of and their count
    OpcodeCountMap m_RootOpcodes;
    /// successfuly matched DAG roots that will be replaced
    NodeList m_FoundRoots;
    /// Opcode of a resulting instruction, if successfully matched.
    unsigned icode;
    /// Selection dag representing the semantics
    SelectionDAG* Pattern;
    // roots of pattern
    ValueVec m_PatternRoots;
    // must all operands be registers?
    bool allOpRegs;
    // map of pattern nodes matched to real nodes
    Map2Node m_globalPattToReal;
    // map of real nodes matched to pattern nodes
    Map2Node m_globalRealToPatt;
    /// Encountered operands.
    ValueVec m_FoundOperands;
  private:
    bool IsInOutIn(SDNode *Nu);
    // check if nodes of trees, that overlap in pattern, overlap in real dag
    bool CheckRequiredDuplicities(Map2Node &patToReal);
    // check that nodes of trees, that don't overlap in pattern, don't overlap in real dag
    bool CheckBadDuplicities(Map2Node patToReal);
    // update m_globalPattToReal and m_globalRealToPatt maps according to found nodes
    void AddFoundNodes(Map2Node patToReal);
    // add new found operands to m_FoundOperands
    bool CheckAndAddOperands(ValueVec operands);
    /// clears data in pattern so pattern can be reused
    void ReusePattern();
    /// Gets a map of "bijections" from the DAG.
    /// Actually, it's a bijection minus R-totalness.
    /// For each opcode - generates possible combinations of nodes that may be roots
    Mappingmap GetMappings(SelectionDAG *DAG);
    /// checks if node is matched
    bool IsMatched(SDNode *N);
    /// checks if matched nodes generate convex set
    bool FoundIllegalDataMemDep();
    /// checks if node has any uses outside of matched nodes (it is root)
    bool IsRoot(SDNode *root);
    /// check if node is operand of new matched instruction
    bool IsOperand(SDNode *N);
    /// check if node is used outside of already matched pattern
    /// operands of pattern are considered to be outside of pattern
    bool IsUsedOutside(SDNode *root);
    /// returns vector of return types of new node
    void GetReturnType(std::vector<EVT> &returnVec);
    /// reshuffle return values accordingly
    void SortReturnNodes();
    /// replaces all uses of matched nodes with new node
    void PlaceNewValue(SDValue newVal, SelectionDAG *DAG);
    /// function for replacing matched nodes with one new node
    void ReplaceNN(SelectionDAG *DAG);
    bool IsOperandOfRoot(SDNode *N);
    bool TryCommutativity(Map2Node &patToReal, std::vector<SDValue> &operands, SelectionDAG *DAG);
    bool isUsedMultipleTimesInPatt(SDNode *pattOp);
  public:
    static void GetRoots(std::vector<SDValue> &roots);
    static bool CheckTree
    (SDValue rootPatt, SDValue rootReal, std::map<SDNode*, SDNode*> &patToReal, std::vector<SDValue> &operands);
    bool FindMatch(NodeList nodelist, unsigned opcode, SelectionDAG *DAG);
    /// program continued to next group, push all group element on stack
    void PushAllVariationsOfGroupOnStack(Node2List &stack, Mappingmap::iterator group);
    /// program backtracked one level, it updates structures of matched nodes accordingly
    void UpdateMatchedNodes
    (std::vector<ValueVec> &operandsStack, std::vector<Map2Node> &nodesRTPStack,
     std::vector<Map2Node> &nodesPTRStack, Node2List &rootsStack);
    /// Try to find a match.
    bool BaseTryMatch(SelectionDAG *DAG);
    /// fill rootOpcodes map for use in TryMatch and GetMappings
    void PrepareMeta();

    BaseDagPattern();
    BaseDagPattern
    (SelectionDAG *DAG, int *pattInfo, const TargetMachine &TM, ValueVec &roots);
};

} // End llvm namespace

#endif /* INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_ */
