//===- IseDiff.h - Compare ISEs in LLVM IR format -------------------------===//
//===----------------------------------------------------------------------===//
//
// author: Albert Mikó
// email:  miko@codasip.com
//
// 
//
//===----------------------------------------------------------------------===//

#ifndef __ISEDIFF_CLASS_H__
#define __ISEDIFF_CLASS_H__ 
#include "llvm/IR/Module.h"

#include "codasip/Ise/IR2Cmap.h"

using namespace llvm;

/* work with 2 modules: 
 *   M_prog  - ISEs extracted from application (as class variable)
 *   M_model - ISEs currently in codal model (as param of runOnModule)
 */
class IseDiff 
{
public:
	IseDiff(Module &_M_model, Module &_M_prog);
	~IseDiff();
	
	int run();
	Module& M_prog; 
	Module& M_model;

private:
	// constants for indexing
	static const int PROG = 0, MODEL = 1;

	// mapping of functions by number of their inputs -- functions with different input count are different
	std::map<unsigned, std::vector<Function*> > functionsByInputCount[2]; 
	unsigned maxInputCount;

	IR2Cmap IR2Cmapping;
	
	/**
     * fill functionsByInputCount map
     * sort functions from M_prog and M_model by number of parameters
	 */
	void sortFunctionsByInputCount(); 

	/**
     * merge functions F and G
     * side effect: G will be erased from the module
     * side effect: ir2c mapping will be updated
	 */
	void mergeFunctions(Function* F, Function* G);

	/**
     * compare functions F and G
     * order of parameters and return values is not important 
     * NOTE: current implementation uses FunctionComparator from MergeFunc pass, where order of parameters IS important
	 * @return true if functions are equivalent
	 */
	bool matchFunctions(Function* F, Function* G);

	/**
     * compare instructions A and B
     * order of operands and return values is not important
	 * @return true if functions are equivalent
	 */
	bool isSameOperation(Instruction* A, Instruction* B);

}; // class IseDiff

namespace llvm {
IseDiff* createIseDiff(Module& M_prog, Module& M_model);
}
#endif
