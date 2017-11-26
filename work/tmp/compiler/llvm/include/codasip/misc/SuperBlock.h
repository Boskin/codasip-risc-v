//===----- SuperBlock.h - SuperBlock -------------------------------------===//
//
// author : Tomas Minac
// mail   : minac@codasip.com
// about  : this class implement abstraction upon SuperBlock, very similar like
//          in opt-superblock, but here we use Machine* prefix before
//          MachineBasicBlock etc.
//          
//===----------------------------------------------------------------------===//

#ifndef __SUPERBLOCK_H__
#define __SUPERBLOCK_H__

#include "llvm/CodeGen/SchedulerRegistry.h"
#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/ScheduleHazardRecognizer.h"
#include "llvm/CodeGen/ScheduleDAG.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Target/TargetLowering.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetInstrInfo.h"
#include "llvm/Target/TargetRegisterInfo.h"
#include <vector>
#include <string>
#include <sstream>

namespace llvm {

class MachineBasicBlock;

class SuperBlock {
  private:
    // SuperBlock is vector of BasicBlocks
    std::vector<MachineBasicBlock *> bbs;
    
  public:
    //ctors
    SuperBlock(){}
    SuperBlock(std::vector<MachineBasicBlock*> &newSuperBlock) {
      bbs=newSuperBlock;
    }
    //dector implicit
    //
    static SuperBlock *Create() {
      return new SuperBlock();
    }
    static SuperBlock *Create(std::vector<MachineBasicBlock*> &newSuperBlock) {
      return new SuperBlock(newSuperBlock);
    }
    typedef std::vector<MachineBasicBlock*>::iterator iterator;
    typedef std::vector<MachineBasicBlock*>::const_iterator const_iterator;
    typedef std::vector<MachineBasicBlock*>::reverse_iterator reverse_iterator;
    typedef std::vector<MachineBasicBlock*>::const_reverse_iterator const_reverse_iterator;
    inline iterator                begin()       { return bbs.begin(); }
    inline const_iterator          begin() const { return bbs.begin(); }
    inline iterator                end  ()       { return bbs.end();   }
    inline const_iterator          end  () const { return bbs.end();   }
    inline reverse_iterator                rbegin()       { return bbs.rbegin(); }
    inline const_reverse_iterator          rbegin() const { return bbs.rbegin(); }
    inline reverse_iterator                rend  ()       { return bbs.rend();   }
    inline const_reverse_iterator          rend  () const { return bbs.rend();   }

    inline size_t                   size() const { return bbs.size();  }
    inline bool                    empty() const { return bbs.empty(); }

    void addToEnd(MachineBasicBlock *bb) {
      bbs.push_back(bb);
    }

    /// isBBInSBB - check if BasicBlock is in SuperBlock
    bool isBBInSBB(MachineBasicBlock *bb) {
      for(iterator it=begin();it!=end();++it) {
        MachineBasicBlock *tmp=*it;
        if(tmp==bb) {
          return true;
        }
      }
      return false;
    }

    MachineBasicBlock *operator[](int i) {
      if(i<0 || (unsigned)i>=bbs.size()) return NULL;
      return bbs[i];
    }
    
    /// sizeInst - return count of instruction in SuperBlock
    size_t sizeInst() {
      size_t sum=0;
      for(iterator it=begin();it!=end();++it) {
        sum+=(*it)->size();
      }
      return sum;
    }

    void dump() {
      for(unsigned i=0;i<bbs.size();++i) {
        errs()<<bbs[i]->getBasicBlock()->getName()<<"\n";
      }
    }
    
    void dump(bool longVersion) {
      if(longVersion) {
        for(unsigned i=0;i<bbs.size();++i) {
          errs()<<*(bbs[i])<<"\n";
        }
      }
      else {
        dump();
      }
    }

    void erase(iterator start, iterator end) {
      bbs.erase(start, end);
    }

};

} // End llvm namespace

#endif
