//===- IseGenConf.h - Isegen configuration parser -------------------------===//
//===----------------------------------------------------------------------===//
//
// author: Albert Mikó
// email:  miko@codasip.com
//
// implements functionality for configuring Isegen
//
//===----------------------------------------------------------------------===//
#ifndef __CODASIP_ISEGEN_CONF_H__
#define __CODASIP_ISEGEN_CONF_H__ 

#include <fstream>
#include <iostream>
#include <map>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#define _CODASIP_ISEGEN_CONFIG_REGISTER_CLASSES

using std::string;
using std::map;

// pattern defining binary format of instructions
typedef enum {BINARY_NUM, REGISTER, OPCODE, END_OF_PATTERN} InstFormatPatternType;
struct InstFormatPatternMember {
	InstFormatPatternType type; 
	std::string value; // if BINARY_NUM
	int width; // if REGISTER or OPCODE
};

struct RegisterClass {
	RegisterClass() {}; // default constructor, for special cases only (eg.: create-ise pass) 
	RegisterClass(map<string,string>& string_items, map<string,int>& int_items);

	std::string prefix, fixed_prefix, read, write;
	std::string reg_element; // name of element that represents register operands in Codal
	int bits; // width of register
	int idx_bits; // num. of bits in register index (=5 for 32 registers... )
	int first_fixed_idx, last_fixed_idx;
	int next_fixed_idx; // keep track of which registers are used
};

class IseGenConf
{
public:
	bool configureIseGen(std::string& configName);
	bool configureIseGen(std::ifstream& config);
	void setConfigDefaults();
	void resetFixedRegCounters();

	std::string OUTFILE_HEADER, OUTFILE_UTILS_HEADER;
	std::string OPCODE_PREFIX;

	int FIRST_ISE_OPCODE, LAST_ISE_OPCODE;

	int MAX_REG_OPERANDS; 
	int OPCODE_BITWIDTH;
	int REG_BITWIDTH; // number of bits in register address (in the instruction binary pattern)
	int INSTRUCTION_BITWIDTH;
	int POINTER_BITWIDTH;

#ifndef _CODASIP_ISEGEN_CONFIG_REGISTER_CLASSES
	// deprecated 
	std::string REG_INSTANCE_PREFIX;
	std::string REGREAD, REGWRITE;
	std::string FIXED_REG_PREFIX;
	int FIRST_FIXED_REG_INDEX;
	int LAST_FIXED_REG_INDEX;
#endif

	// binary format of instruction -- define bitwidth and position of opcode and register operands in instructions
	std::vector<InstFormatPatternMember> inst_binary_format; 

	// all register classes
	std::vector<RegisterClass> regs;

private:
	bool configInstFormat(std::istream& config);
	bool configRegisterClass(std::istream& config);

	// config items will be read into these two maps
	std::map<std::string,int>         config_items_int;
	std::map<std::string,std::string> config_items_str; 

	// set of register prefixes (and fixedreg prefixes) -- each register prefix must be unique
	std::set<std::string> regs_prefixes;

}; // class IseGenConf

#endif // __CODASIP_ISEGEN_CONF_H__
// EOF
