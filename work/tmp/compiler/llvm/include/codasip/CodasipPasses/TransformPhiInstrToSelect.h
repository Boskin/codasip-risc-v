/**
 * Simple class which is used by CompactShortEvaluation pass.
 * It finds basic blocks with phi nodes, and try find this pattern
 *                      bb0
 *                     /  \
 *                    /    |
 *                   bb1   |
 *                    \    |
 *                     \  /
 *                      bb2 with phi node
 *  is triangle in graph of basic blocks. It is importnat to bb0 has two succesors and
 *  bb1 has only one succesor. bb2 has to contain phi node.
 *  This triangle is possible tranform to this
 *                      bb0
 *                       |
 *                       |
 *                      bb1
 *                       |
 *                    select instr
 *                       |
 *                      bb2
 *  If bb2 contain simple phi node with two arguments it is simple to transform.
 *  But if phi node contain more then two arguments, we take two of them which contains
 *  bb0 and bb1 basic block. Create select instr and result of select instr add like argument
 *  to phi node.
 *  And another pattern is important:
 *
 *          bb0
 *         /  \
 *        /    \
 *      bb1    bb2
 *       \      /
 *         \  /
 *         bb3 with phi node
 *
 *
 * Author:  Tomas Minac <xminac01@stud.fit.vutbr.cz>
 * Date:    16.07.2012
 */

#ifndef __TRANSFERPHIINSTRTOSELECT_H__
#define __TRANSFERPHIINSTRTOSELECT_H__

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Transforms/Utils/Cloning.h"

#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/Support/Debug.h"

#include <vector>

#include "codasip/SemExtrCommon/SemExtrUtils.h"

using namespace llvm;
using namespace std;

class TransformPhiInstrToSelect {
public:
	map<BasicBlock *, unsigned> mapBBtoIncomingEdge;

	TransformPhiInstrToSelect(){}; //constructor
	bool testForTriangle(Function *F);
	void createNewInstr(BranchInst *branchInst,BasicBlock * bb, BasicBlock *secondBB, bool firstRight);
	bool checkForMerging(Function *F, BasicBlock *bbF, BasicBlock *bbS);
	bool checkForMerging(Function *F,BasicBlock*bb0,  BasicBlock *bbF, BasicBlock *bbS);
	void setMapBBtoIncomingEdge(Function *F);
	//void reConnectAllPredecessor(Function *F, BasicBlock *bb, BasicBlock *firstBB, BasicBlock *brotherBB, bool neg);
	bool isPhiNodeInBB(BasicBlock *bb, BasicBlock *firstBB, BasicBlock *secondBB);
	void repairPhiNode(ValueToValueMapTy &VMap, BasicBlock *origBB, BasicBlock *cloneBB);
	void repairInstruction(ValueToValueMapTy &VMap, BasicBlock *origBB, BasicBlock *cloneBB);

	vector<PHINode *> vecPhiNodes;
	vector<SelectInst *> vecSelectInst;

	//prepare for alone pass
	/*virtual bool runOnFunction(Function &F);
        void tryJointBBWithPredessors(Function &F);*/

	// for error messages only
	void setCurrentFunction(Function* F) { m_pCurrFunc = F; }
private:
	Function* m_pCurrFunc;


};
#endif
