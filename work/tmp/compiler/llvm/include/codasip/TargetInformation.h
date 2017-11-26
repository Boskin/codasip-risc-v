#ifndef TARGETINFORMATION_H
#define TARGETINFORMATION_H

#include "llvm/ADT/StringRef.h"
#include "llvm/CodeGen/ValueTypes.h"
#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <fstream>
#include <iterator>

using namespace llvm;
using namespace std;

class TargetInformation {

public:

	// constructor
	TargetInformation();

	// returns number of scalar registers
    int getNumOfScalarRegs() const;

    // returns number of vector registers
    int getNumOfVectorRegs() const;

    // returns width of the widest scalar registers
    int getWidestScalarReg() const;

    // returns width of the widest vector register
    int getWidestVectorReg() const;

    // returns maximum unroll factor
    int getUnrollFactor() const;

    // returns address computation cost
    int getAddressComputationCost() const;

    // returns cost of the given instruction with the given operands
    int getInstructionCost(string instruction, string operands) const;
    int getInstructionCost(string instruction, string operands1, string operands2) const;

    // returns types legal on the architecture
    vector<string> getLegalTypes();

    // converts string to MVT::SimpleValueType
    MVT::SimpleValueType getSimpleValueType(std::string s);
	
    // converts ISD::NodeType to C-like string
    static const char* GetOpDumpName(unsigned opc);

private:

    // processes one line of the input file
    void processLine(StringRef line);

    // adds record to the records map
    void addLineToMap(string &id, vector<string> &tokens);

    // removes C-like comments from the fstream
    void removeComments(ifstream &buffer, stringstream &result);

    // sets what string is to be converted to what SimpleValueType
    void setConversions();
};

#endif // TARGETINFORMATION_H
