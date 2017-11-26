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

#ifndef CODASIPBASEPEEPHOLE_H
#define CODASIPBASEPEEPHOLE_H

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

#include <map>
#include <vector>
#include <algorithm>
#include <cinttypes>
#include <utility>

#define UNDEFINED -1

namespace llvm {

typedef std::vector<MachineInstr*> MachineInstrVec;
typedef std::map<unsigned, std::vector<unsigned> > CodeMap;
// combination of pattern name and MBB name
typedef std::pair<std::string, std::string> PattReport;

// ********************* PATTERN OPERANDS **************************

// class that represents operand of pattern instruction
class PatternOp
{
  public:
    enum OpType
    {
      OTHER, // operand is reg or imm or else, it can't be created by peephole
      CONS   // operand is constant that can be created
    };

  private:
    // opcode of the ins
    OpType m_type;
    int64_t m_value;

  public:
    PatternOp(OpType type, int64_t value)
    {
      m_type = type;
      m_value = value;
    }

    OpType getOpType()
    {
      return m_type;
    }

    int64_t getOpVal()
    {
      return m_value;
    }
};

// first part represents index of pattern instruction, that defines
// operand in second part
typedef std::set<std::pair<unsigned,PatternOp*>> DeletedDefSet;

// ********************* PATTERN INSTRUCTION ***********************

// class that represents one instruction of pattern
// it represents both pattern and result part of pattern
class PatternInstr
{
  // opcode of the ins
  unsigned m_instruction;
  // IDs of operands, their order represents their place
  // in real instruction. First operand is always result of ins
  std::vector<PatternOp*> m_operands;
  // contains index of pat ins that is semanticly equivalent
  // with cur res ins. Default value is -1
  int m_oneToOneWith;
  // number of operands
  unsigned m_numOper;

  public:
  // constructors and destructors
  PatternInstr(unsigned opc);
  // constructors that requires opcode of ins, array of operand IDs,
  // and size of that array
  PatternInstr(unsigned opc, PatternOp *operands[], int size,
               int oneToOne = UNDEFINED);
  ~PatternInstr()
  {
    m_operands.clear();
  }
  unsigned getOpc() { return m_instruction; }
  void setSemEq(unsigned opc) { m_oneToOneWith = opc; }
  // return operand
  PatternOp* getOperand(unsigned index);
  // return operand that has the same id
  PatternOp* getOperandfromId(int64_t id,
                              PatternOp::OpType type = PatternOp::OTHER);
  // return number of operands
  unsigned getNumOperands();
  // check if operand has some semanticly equivalent instruction
  bool hasOneToOne();
  // return opcode of semanticly equivalent instruction
  unsigned getOneToOne();
  bool isImplicitDef(unsigned regNum, const TargetMachine *TM,
                     const TargetInstrInfo *TII);

};

// ********************* PATTERN ***********************************

// class representing whole pattern
class Pattern
{
  // instructions that need to be changed
  std::vector<PatternInstr> m_patternInstrs;
  // instructions that will replace m_patternInstrs
  std::vector<PatternInstr> m_replaceInstrs;
  std::string m_name;

  // Find if operand, on index opIdx, from pattern ins instIdx, is also in
  // some replace instruction. Return its coordinations (replace ins number
  // and oper number) in last two arguments. If operand wasn't found in
  // replace ins, return -1
  void getInReplace(int instIdx, int opIdx, int &replIdx, int &replOpIdx);

  public:
  std::string getName() { return m_name; }
  void setName(std::string name) { m_name = name; }
  DeletedDefSet m_defsDel;
  // return instruction that has same result operand as some
  // operand from pattern ins on index
  PatternOp *getConnectedWithPredecesIns(unsigned index);
  // checks if operand, on index opIdx, from pattern ins instIdx, is also
  // use operand in another pattern ins, after instIdx
  bool isInPattUse(/*int*/unsigned instIdx, int opIdx, const TargetInstrInfo *TII);
  bool isInPattUse(/*int*/unsigned instIdx, PatternOp *po, const TargetInstrInfo *TII);
  // checks if operand, on index opIdx, from pattern ins instIdx, is also
  // def operand in some replace ins
  bool isInReplaceDef(int instIndex, int opIndex, const TargetInstrInfo *TII);
  // finds out if result of this pat ins is also res of some replace ins
  bool hasInReplaceAllDefs(PatternInstr *pi, const TargetInstrInfo *TII);
  // returns size of m_patternInstrs
  unsigned getPattSize();
  // return size of m_replaceInstrs
  unsigned getReplaceSize();
  void getRiskyOperands(const TargetInstrInfo *TII, DeletedDefSet &defsDel);
  // return replace instruction, that is on position n in replace vector
  // first instrucion is on position 0
  PatternInstr *getReplaceInstr(int n);
  // return pattern instruction, that is on position n in pattern vector
  // first instrucion is on position 0
  PatternInstr *getPattInstr(int n);
  // adds instruction to pattern vector
  void addPatIns(PatternInstr pi);
  // adds instruction to result vector
  // second parameter is index to pattern vector, to instruction
  // that is semantically equivalent with this one
  void addResIns(PatternInstr pi, int setOneToOneWith = UNDEFINED);
  bool hasImplDefInReplace(unsigned regNum, const TargetMachine *TM,
                           const TargetInstrInfo *TII);

  // method for special conditions that may be supplied with patterns
  virtual bool userCondition(MachineInstrVec foundInst) { return true; }
  virtual ~Pattern()
  {
    m_patternInstrs.clear();
    m_replaceInstrs.clear();
  }
};

// ******************* PEEPHOLE REPORT *****************************

class CodasipPeepholeReport
{
    std::vector<PattReport> m_foundPattReports;
    unsigned m_erasedIns = 0;
    unsigned m_createdIns = 0;
  public:
    void print(bool isPreRa);
    void update(const MachineInstrVec *foundIns,
                const MachineInstrVec *createdIns, Pattern *pat);
    ~CodasipPeepholeReport()
    {
      m_foundPattReports.clear();
    }
};

// ******************** PEEPHOLE PASS ******************************

class CodasipPeepholeBase
{
  protected:
    unsigned m_realOpcode;
    CodeMap CallRetClones;
    CodeMap EqualInstructions;
    TargetMachine &TM;
    const TargetInstrInfo *TII;
    const TargetRegisterInfo *TRI;
    MachineRegisterInfo *MRI;
    // map of pattern operands and real operands
    std::map<PatternOp*, MachineOperand*> m_operand2real;
    // instructions that were matched
    MachineInstrVec m_foundInst;
    // newly created instructions to replace matched ones
    MachineInstrVec m_newInst;
    MachineInstrVec m_debVal;
    // pattern currently being examined
    Pattern* m_curPat;
    // vector of all patterns
    std::vector<Pattern*> m_vectorOfPatterns;
    // map of patt ins index and insts that use his result
    // outside of pattern
    std::map<int,MachineInstrVec> m_outsideUse;
    MachineInstrVec m_cfiIns;
    std::set<MachineOperand*> m_matchedOper;
    std::vector<MachineOperand> m_variadicOper;
    MachineInstr *m_place;
    // clear maps
    void clearHelpStructures();
  public:
    MachineOperand *getMachineOp(PatternOp *po);
    void addVariableOperands(MachineInstrBuilder &MIB);
    // creates new instructions according to result vector of pattern
    void makeNewInstructions();
    // runing optimization on one machine basic block
    bool runOptim(MachineBasicBlock *MBB, CodasipPeepholeReport &report);
    // call methods for creating new ins and erase old ones
    void replace(MachineBasicBlock* MBB);
    // find next instruction of pattern, that was NOT connected
    // to previous one in pattern
    bool findNextInstrWOChain(MachineInstr *miIn, unsigned index);
    void addCodeMap(CodeMap cm, bool isRetClones);
    // add already existing operands (operands of pattern instructions)
    // to new instruction
    bool getRealOperand(unsigned resIndex, unsigned opIndex,
                        MachineInstrBuilder &MIB, unsigned mcidIdx);
    // if new result instruction does not share any parameters
    // from pattern or already build result instructions
    // make new parameters
    bool createOperands(int resIndex, int opIndex,
                        MachineInstrBuilder &MIB);
    // update map of found operands of pattern
    void addOperands2Map(PatternInstr *pi, MachineInstr *mi, unsigned idx);
    // check if register classes of operands differ
    unsigned genConvIns(unsigned rc1, unsigned rc2);
    // check if this instruction is beginning of pattern pt
    bool findFirst(MachineInstr *mi, Pattern* pt);
    // check if data dependencies of pattern are correct in found instructions
    bool checkOperands(PatternInstr *pi, MachineInstr *mi);
    // add pattern to search vector
    void addPattern(Pattern *pat);
    bool findNewPlace(MachineInstr *lastFound);
    bool checkClonesEquals(unsigned piOpc, unsigned miOpc, unsigned &realOpc);
    // constructor
    CodasipPeepholeBase(TargetMachine &tm, const TargetInstrInfo *tii,
                        const TargetRegisterInfo *tri):
      TM(tm), TII(tii), TRI(tri)
    {
      m_curPat = nullptr;
      MRI = nullptr;
      m_place = nullptr;
    }
    // destructor
    virtual ~CodasipPeepholeBase()
    {
      clearHelpStructures();
      m_vectorOfPatterns.clear();
      CallRetClones.clear();
      EqualInstructions.clear();
    }
    // virtual methods
    virtual bool canGoUp(MachineInstr *lastFound) {return false;};
    virtual bool canGoDown(MachineInstr *lastFound) {return false;};
    // check data dependencies if pattern
    // instructions are not connected
    virtual bool findNewPlace(MachineInstr *beginMI, MachineInstr *endMI)
      {return false;}
    // find all instructions of pattern except first one
    virtual bool findTheRest(MachineInstr *miIn) {return false;};
    // create new result operand
    virtual bool createResOp(int resIndex, unsigned opIndex,
                             MachineInstrBuilder &MIB, unsigned mcidIdx)
      {return false;}
    // create conversion instruction
    virtual bool convertOperand(MachineOperand &mo, unsigned toRc,
                                MachineInstr *pos, unsigned &resReg)
      {return false;}
    // create convert instructions for outside uses
    virtual void convertReturnValue() {return;}
    virtual MachineInstrBuilder &setInstFlags(MachineInstrBuilder &MIB)
      {return MIB;}
};

} // End of llvm namespace

#endif /* INCLUDE_CODASIP_TARGET_CODASIPBASEPEEPHOLE_H_ */
