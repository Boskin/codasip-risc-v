#ifndef SEMEXTRUTILS_H_
#define SEMEXTRUTILS_H_


#include <stdio.h>
#include <string>
#include <vector>
#include <map>
#include <assert.h>
#include <stdlib.h>
#include <iostream>
#include <set>
#include "codasip/SemExtrCommon/SemExtrCommon.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/Debug.h"


#include "SemExtrConstants.h"

namespace llvm {

class BasicBlock;
class Instruction;
class Value;
class Function;
class IntrinsicInst;
class CallInst;

}

using namespace llvm;
using namespace std;



bool isIgnoredFuncCall(Instruction* i);
bool isIgnoredFuncCall(const string &name);
bool isIgnoredGlobalVariable(const string& name);
bool isIgnoredIntrinsic(Instruction *i);
bool isIgnoredCodasipBuiltin(Instruction *i);

/*
enum EMemRegItemType
{
	tError,
	tRegOp,
	tRegRes,
	tPcRegRes,
	tInvisRegRes,
	tMemRes,
	tInstr,
	tSlots
} ;*/

// ============= general analysis utilities ================
string myGetNameStr(Value* v);
string myGetFunctionName(Function* f);


// memreg rewriter utils
Intrinsic::ID getIntrIdByType(
		const bool bIsRead, const bool isInstructionOperand, const ResInfo::Type resType, const Type& llvmType);
Intrinsic::ID getIntrIdByType(
		const bool isRead, const bool isInstructionOperand, const ResInfo::Type resType, const DataType& dt);

//utility functions used after memreg rewrite
bool isBBEmpty(BasicBlock* BB);

bool containsCycles(Function* F);
bool containsCycles(BasicBlock *currBB, set<BasicBlock*> setPrevBBs = set<BasicBlock*>());

void getVectorTypeBitwidthAndCount(const Type* type, int& base_width, int& count);

//as resOp gets either constant expression or an instruction representing getelementptr
//if the register or memory address is constant, returns true and in arguments returns accessed resource name and accessed resource array index
bool getConstantElementPtrResNameAndIdx(Value* resOp, string* psResName, int* pnAddress, Function* m_pCurrentFunction, bool* pRemoveInstruction = NULL);
void getConstantElementPtrResNameAndOperand(Value* resOp, string* psResName, int* pnRegIdx, Value** ppAddrOp);

void getRegAccessClassAndOperandIndex(Instruction* regAccess, int* reg_class_index, int* operand_index);

//returns true for several functions such as _compiler_unused or loads that must be kept in the instruction semantics
bool functionCallMustBeKept(const CallInst* ci);
bool functionCallMustBeKept(const string& name);
bool functionWhichIsNotUserFunction(const string& name);

string getTypeName(Type* t);
string getCGIROpName(Instruction* i, Function* m_pCurrFunc);
string getRegWriteIntrTypeStr(IntrinsicInst* ii);

bool instructionWritesToRegister(Instruction* regRead,Function *f);
bool instrHasSideEffect(Instruction* i);
bool bbHasSideEffects(BasicBlock *bb,Function *f);

std::string getInstructionElementsMsg(const std::string& name);

FILE* openFileMsgFail(const char* file, const char* mode);

// must be called when opt-semextr is started
void initFunctionDebugPrints();

//========== modification functions ==============

// appends a command for an instruction to a special file with comments
// the form of this file is the same as for all intermediate files
// passes before semantics writer use this file to store comments
void appendInstrComment(Function* F, const char* passName, const char* comment);

void replaceFunctionBodyWithExtrRemovedCall(Function* F);

//void replaceFunctionBodyWithReturnBB(Function* F);

Instruction *insertNewInstBefore(Instruction *New, Instruction &Old);
Instruction *insertNewInstAfter(Instruction *New, Instruction &Old);

// ============ special operations ===============


//returns btNone if function is not recognized
ECodasipBuiltinType getCodasipBuiltinType(Instruction* i);


bool isCodasipBuiltinWithPrefixAndType(Instruction* i, const char* sPrefix);
bool isCodasipBuiltinLoad(Instruction* i);
bool isCodasipBuiltinStore(Instruction* i);
DataType getCodasipBuiltinLoadStoreType(Instruction* i);

bool isCodasipStoreExitCode(Instruction* i);
bool isImmRead(Instruction* i);
bool isSubInstrRead(Instruction* i);
bool isRegOpIndex(Instruction* i);

//reg instrinsics test also returns true works for branch and getnextpc instructions
bool isRegRead(const Intrinsic::ID id, bool* isOpRead = NULL);
bool isRegRead(Instruction* i, bool* isOpRead = NULL);
bool isRegOpRead(Instruction* i);
bool isRegWrite(const Intrinsic::ID id, bool* isOpWrite = NULL);
bool isRegWrite(Instruction* i, bool* isOpWrite = NULL);
bool isRegOpWrite(Instruction* i);

bool isMemRead(const Intrinsic::ID id);
bool isMemRead(Instruction* i);
bool isMemWrite(const Intrinsic::ID id);
bool isMemWrite(Instruction* i);
bool isRegopaddress(Instruction* i);
bool isPropagatedRegOpIndex(Instruction *i);

bool isBranch(Instruction* i);
bool isBranch(const Intrinsic::ID id);
bool isGetNextPc(Instruction* i);
bool isGetNextPc(const Intrinsic::ID id);

bool isAssert(Instruction* i);
bool isError(Instruction* i);
bool isFatal(Instruction* i);
bool isWarning(Instruction* i);
bool isNop(Instruction* i);
bool isHalt(Instruction* i);
bool isSyscall(Instruction* i);
bool isPreprocessorDefine(Instruction* i);

bool isCompilerBuiltin(Instruction* i);
bool isCompilerPriority(Instruction* i);
bool isCompilerUnused(Instruction* i);
bool isCompilerUndefined(Instruction* i);
bool isCompilerScheduleClass(Instruction* i);
bool isCompilerPredicate(Instruction* i, bool* type = NULL); // type can be NULL, if not, then true or false is set
bool isCompilerFlagCmp(Instruction* i);
bool isExtractorRemoved(Instruction* i);

bool canBuiltinNoUnwindAttrBeSet(CallInst *ci);
bool isLLVMPrefixFunction(const string &name);
bool isCompilerLatency(Instruction* i);
bool isCompilerCompare(Instruction* i);

// register bitcasts are replaced in FloatRegRewriter and if possible, the are merged with register read or write
bool isIntToFloatBitcastReg(Instruction* i);
bool isFloatToIntBitcastReg(Instruction* i);

// integer vector bitcasts are replaced in VectorRegRewriter and if possible merged with register read or write
bool isIntToIntVecBitcastReg(Instruction *i);
bool isIntVecToIntBitcastReg(Instruction *i);

int getIntToFloatBitcastRegBitwidth(Instruction* i);
int getFloatToIntBitcastRegBitwidth(Instruction* i);

ConstantInt * getConstant1(Module* M);

// print location of instruction in Codal model
// location information is get from debug metadata
void printLocation(Instruction *I);
codasip::Location getLocation(Instruction *I);

// convert value to string
string valueToString(Value *val);

// convert type to string
string typeToString(Type *val);

// check whether the given type is legal
bool isTypeLegal(Type *T);

// get legal types on the architecture
ArrayRef<string> getLegalTypes();

#endif /*SEMEXTRUTILS_H_*/
