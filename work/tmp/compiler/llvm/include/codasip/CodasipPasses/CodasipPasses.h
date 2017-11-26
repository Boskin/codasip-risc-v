#ifndef __CODASIP_PASSES_H__
#define __CODASIP_PASSES_H__

namespace llvm
{

// ********** pass running utilities ***********
// first argument is name of function that creates a pass, second is pass index string
// expect that M and TD are defined
#define RUN_MODULE_PASS(create_function_name, index_str, notPrintll)	\
		{ \
	const char* name; \
	ModulePass* pass = create_function_name(&name); \
	runModulePass(*M.get(), TD, pass, name, (index_str), (notPrintll)); \
		}

#define RUN_FUNCTION_PASS(create_function_name, index_str, notPrintll)	\
		{ \
	const char* name; \
	FunctionPass* pass = create_function_name(&name); \
	runFunctionPass(*M.get(), TD, pass, name, (index_str),(notPrintll)); \
		}

#define RUN_FUNCTION_PASS_2ARGS(create_function_name, index_str, arg1, arg2, notPrintll, decorate)	\
		{ \
	const char* name; \
	FunctionPass* pass = create_function_name((arg1), (arg2), (decorate), &name); \
	runFunctionPass(*M.get(), TD, pass, name, (index_str), (notPrintll)); \
		}

#define RUN_FUNCTION_PASS_3ARGS(create_function_name, index_str, arg1, arg2, arg3, notPrintll,decorate)	\
		{ \
	const char* name; \
	FunctionPass* pass = create_function_name((arg1), (arg2), (srg3)); \
	runFunctionPass(*M.get(), TD, pass, name, (index_str), (notPrintll),(decorate)); \
		}


void runFunctionPasses(Module& M, FunctionPassManager& FPasses);

void runO3Passes(Module& M, const DataLayout* TD, const char* index_str, bool notPrintll = false);
void runPass(Module& M, const DataLayout* TD, Pass* pass, const char* name, const char* index_str, bool notPrintll  = false, bool addAA = false);
void runModulePass(Module& M, const DataLayout* TD, ModulePass* pass, const char* name, const char* index_str, bool notPrintll = false);
void runFunctionPass(
		Module& M, const DataLayout* TD, FunctionPass* pass, const char* name, const char* index_str, bool notPrintll);

void runLoopPass(Module& M, const DataLayout* TD, Pass* pass, const char* name, const char* index_str, bool notPrintll);

/*void addOptimizationPasses(PassManagerBase &MPM, FunctionPassManager &FPM,
		unsigned OptLevel, unsigned SizeLevel = 0);*/

void debugPrintModule(Module* M, const char* outfile_name);

// ************ passes **********


FunctionPass *createCompactShortEvaluation(const char** name = NULL);
FunctionPass *createTransformPhiInstrToSelect(const char** name = NULL);

} // llvm

#endif //__CODASIP_PASSES_H__
