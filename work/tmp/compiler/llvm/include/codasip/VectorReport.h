//===-- VectorReport.h - Report about Auto-Vectorization -------------*- C++ -*-===//
//===----------------------------------------------------------------------===//
//
// This file defines the VectorReport class for creating a report about
// the auto-vectorization process.
//
//===----------------------------------------------------------------------===//

#ifndef VECTORREPORT_H
#define	VECTORREPORT_H

#include "llvm/IR/DebugInfo.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <set>
#include <fstream>
#include <sstream>

namespace llvm{

class VectorReport{

public:
    
    // Type of report
    enum ReportType{
       LoopReport,
       SLPReport,
       BBReport
    };
    
    // Level of report
    enum ReportLevel{
    	NoReport,
    	VecOnly,
    	NotVecOnly,
    	All
    };

    VectorReport() : MakeReport(NoReport) {}

    VectorReport(ReportLevel CreateReport, ReportType type);

    // Prints out the records
    ~VectorReport();

    // Create information about the given loop
    void createLoopInfo(Loop *L);

    // Create information about the given function
    void createFunctionInfo(Function &F);

    // Adds the current record in the record set
    void printReport(bool success);

    // Return name of the given function
    std::string getFunctionName(Function &F);

    // Add information about the line and the column in
    // original source code this instruction corresponds to
    void addInstructionLocation(Instruction *I);

    // Copy important items
    VectorReport& operator=(const VectorReport& other){
        MakeReport = other.MakeReport;
        Type = other.Type;
        ReportName = other.ReportName;
        return *this;
    }

    // Add data about currently vectorized loop or function
    template<typename T>
    VectorReport &operator<<(T x){
    	if (MakeReport)
    		message << x;
    	return *this;
    }

private:

    // What level of report is to be made
    ReportLevel MakeReport;

    // File to write the report to
    std::ofstream file;

    // Vectorization information about single loop/function
    std::ostringstream message;

    // Information about single loop/function
    std::ostringstream info;

    // Object used for comparison of records
    struct CompareRecords
      : public std::binary_function<std::string, std::string, bool> {
      bool operator()(const std::string &LS, const std::string &RS){

    	std::stringstream lss(LS), rss(RS);
    	std::string lstr, rstr;
    	unsigned lnum, rnum;

    	for (unsigned i = 0; i < 3; i++){
    		std::getline(lss, lstr, ':');
    		std::getline(rss, rstr, ':');

    		std::istringstream(lstr) >> lnum;
    		std::istringstream(rstr) >> rnum;

    		if (lnum != rnum) return lnum < rnum;
    		if (lstr != rstr) return lstr < rstr;
    	}

    	return lstr < rstr;
      }
    };

    // Ordered set of records
    std::set<std::string, CompareRecords> records;

    // Name of the report as a string
    std::string ReportName;

    // What type of report is to be made
    ReportType Type;

    // Open the report file
    bool openFile(std::string Filename);

    // Find DISubprogram representing specified function
    DISubprogram *findSubprogram(Function *F);

    // Take string containing filename with optional relative path,
    // strip off the path and return only the filename
    inline std::string getNameWithoutPath(const std::string &NameWithPath){
    	return NameWithPath.substr(NameWithPath.find_last_of('/')+1);
    }

    // Clear the content of the stringstreams
    void resetState(){
    	message.str("");
    	info.str("");
    }
};
}

#endif	/* VECTORREPORT_H */

