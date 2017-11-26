//===----- BunchOfSuperBlocks.h - SuperBlock ------------------------------===//
//
// author : Tomas Minac
// mail   : minac@codasip.com
// about  : this class implement abstraction upon bunch of SuperBlocks.
//          Similar to BunchOfSuperBlocks.h from opt-superblocks, but
//          here is used MachineBasicBlock instead BasicBlock etc.
//          
//===----------------------------------------------------------------------===//

#ifndef __BUNCHOFSUPERBLOCK_H__
#define __BUNCHOFSUPERBLOCK_H__

#include "llvm/IR/Module.h"
#include "SuperBlock.h"
#include <set>
#include <map>

#define PATTERN_STRING ".__SP__"
#define SEPARATOR_STRING "__"

namespace llvm {

class SuperBlock;


class BunchOfSuperBlocks {
  private:
    std::string patternString;
    std::string separatorString;
    std::vector<SuperBlock *> bunchOfSBBs;

    std::map<unsigned , SuperBlock *> mapNumbToSuperBlock;
    std::map<unsigned , SuperBlock *>::iterator itMapNumbToSuperBlock;

    std::set<const BasicBlock* > mapAlReadyProcessed;

    void processBasicBlock(MachineBasicBlock *bb);
    void fixSuperBlocks();
    bool isSuccOfPred(SuperBlock::iterator &sbbIt, SuperBlock *sb);
  
  public:
    typedef std::vector<SuperBlock*>::iterator iterator;
    typedef std::vector<SuperBlock*>::const_iterator const_iterator;
    inline iterator                begin()       { return bunchOfSBBs.begin(); }
    inline const_iterator          begin() const { return bunchOfSBBs.begin(); }
    inline iterator                end  ()       { return bunchOfSBBs.end();   }
    inline const_iterator          end  () const { return bunchOfSBBs.end();   }

    inline size_t                   size() const { return bunchOfSBBs.size();  }
    inline bool                    empty() const { return bunchOfSBBs.empty(); }
    BunchOfSuperBlocks(){
      patternString=PATTERN_STRING;
      separatorString=SEPARATOR_STRING;
    }
    
    void addToBunch(SuperBlock *superBlock) {
      bunchOfSBBs.push_back(superBlock);
    }


    void dump() {
      for(iterator it=begin();it!=end();++it) {
        errs()<<"\nSuperBlock: ";
        (*it)->dump();
        errs()<<"--------------------------------\n";
      }
    }

    void readFunction(MachineFunction *f);
    void readModule(Module *m);

    void processBasicBlock(MachineBasicBlock *mbb, std::vector<SuperBlock*> &vecOfNotMarkedBB);

};

} // End llvm namespace



#endif
