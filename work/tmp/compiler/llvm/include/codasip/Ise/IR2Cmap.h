//===- IR2Cmap.h - manipulation with IR2C mappings ------------------------===//
//===----------------------------------------------------------------------===//
//
// author: Albert Mikó
// email:  xmikoa00@stud.fit.vutbr.cz
//
// This file implements a class for building, changing and printing of
// IR value to C variable maps for ISEs
//
//===----------------------------------------------------------------------===//
#ifndef __ISE_IR2C_MAP_H__
#define __ISE_IR2C_MAP_H__

#include <vector>
#include <map>
#include <string>
#include <sstream>

using namespace std;

struct _ISE_IR2CmapReg {
    vector<string> n; // also support SIMD registers
    // string n; // single name

    string getTypeStr(void) { return type; };
    size_t getVecItemCount();

    /// \return bit width of scalar type or bit width of one item in vector type
    size_t getItemBitWidth();

    /** \brief set type string for mapping
     *  \param vecItems number of items in vector, 0 for scalar
     *  \param bits     number of bits in one item
     *  \param isFloat  float if true, int if false           */
    void setTypeStr(size_t vecItems, size_t bits, bool isFloat);

    /// \return true if successful
    bool setTypeStr(string typeStr);

    friend std::ostream& operator<<(std::ostream& stream, _ISE_IR2CmapReg& reg);
private:
    // type of variable (one of: i<N>, f<N>, v<I>i<N>, v<I>f<N> eg.: i32, v4i32, f64
    //   where <I> ~ number of items, <N> ~ number of bits (per item)
    string type;
};

// map for one ISE
struct _ISE_IR2Cmap {
    vector<_ISE_IR2CmapReg> inputs, outputs; // names of inputs and outputs of ISEs
    string ise_name;
    string builtin_name;
}; // ISE_IR2Cmap

// map for all ises
class IR2Cmap {
    map<string,_ISE_IR2Cmap> mapping; // mapping by iseName

    bool isePresent(string iseName);
    bool readRegister(ifstream& mapFile, string& iseName, string buf, bool input=true);

public:
// --- reading mapping from file
    bool readFromFile(string mapFileName);
// --- writing mapping to file
    bool writeToFile(string mapFileName);

//--- manipulating the data in memory

    // when setting builtin names, we need to transitively set builtin names for all ISEs,
    //   which used the old builtin name(which we are overwriting here)
    bool setBuiltinName(string iseName, string builtinName);

    _ISE_IR2Cmap* getMapping(string iseName);
    string getBuiltinName(string iseName);
    bool addMapping(string iseName);
    bool addInputReg(string iseName, size_t bits=32, size_t vecItems=0, bool isFloat=false);
    bool addOutputReg(string iseName, size_t bits=32, size_t vecItems=0, bool isFloat=false);
    bool addInput(string iseName, string inputName);
    bool addOutput(string iseName, string outputName);
#if 0 // only for advanced ise-diff (which is not yet implemented)
    bool changeInput(string iseName, unsigned index, string inputName);
    bool changeOutput(string iseName, unsigned index, string outputName);
#endif
};

inline bool IR2Cmap::isePresent(string iseName) {
    return (mapping.find(iseName)!=mapping.end());
} // checkIfPresent

inline _ISE_IR2Cmap* IR2Cmap::getMapping(string iseName) {
    if (!isePresent(iseName)) return NULL;
    return &(mapping[iseName]);
}
inline string IR2Cmap::getBuiltinName(string iseName) {
    if (!isePresent(iseName)) return "";
    return mapping[iseName].builtin_name;
} // getBuiltinName
inline bool IR2Cmap::addMapping(string iseName) {
    if (isePresent(iseName))
        return false;
    mapping[iseName].ise_name = iseName;
    mapping[iseName].builtin_name = iseName; // default - if ISE is not yet in model, it will get a new builtin
    return true;
} // addMapping
inline bool IR2Cmap::addInputReg(string iseName, size_t bits, size_t vecItems, bool isFloat) {
    if (!isePresent(iseName))
        return false;
    mapping[iseName].inputs.push_back(_ISE_IR2CmapReg());
    mapping[iseName].inputs.back().setTypeStr(vecItems,bits,isFloat);
    return true;
}
inline bool IR2Cmap::addOutputReg(string iseName, size_t bits, size_t vecItems, bool isFloat) {
    if (!isePresent(iseName))
        return false;
    mapping[iseName].outputs.push_back(_ISE_IR2CmapReg());
    mapping[iseName].outputs.back().setTypeStr(vecItems,bits,isFloat);
    return true;
}
inline bool IR2Cmap::addInput(string iseName, string inputName) {
    if (!isePresent(iseName))
        return false;
    size_t lastRegIdx = mapping[iseName].inputs.size()-1;
    mapping[iseName].inputs[lastRegIdx].n.push_back(inputName);
    return true;
} // addInput
inline bool IR2Cmap::addOutput(string iseName, string outputName) {
    if (!isePresent(iseName))
        return false;
    size_t lastRegIdx = mapping[iseName].outputs.size()-1;
    mapping[iseName].outputs[lastRegIdx].n.push_back(outputName);
    return true;
} // addInput
#if 0 // only for advanced ise-diff (which is not yet implemented)
inline bool IR2Cmap::changeInput(string iseName, unsigned index, string inputName) {
    if (!isePresent(iseName))
        return false;
    if (mapping[iseName].inputs.size()<index)
        return false;
    mapping[iseName].inputs[index] = inputName;
    return true;
} // setInput
inline bool IR2Cmap::changeOutput(string iseName, unsigned index, string outputName) {
    if (!isePresent(iseName))
        return false;
    if (mapping[iseName].outputs.size()<index)
        return false;
    mapping[iseName].outputs[index] = outputName;
    return true;
} // setOutput
#endif

inline size_t _ISE_IR2CmapReg::getVecItemCount() {
    if (type.size()<2 || type[0]!='v') return 0;
    // ready for max 2 digit item counts, expand/change to universal version if necessary
    size_t itemCount = type[1]-'0';
    if (type[2]>='0' && type[2]<='9')
        itemCount = 10*itemCount + (type[2] - '0');
    return itemCount;
}

inline size_t _ISE_IR2CmapReg::getItemBitWidth() {
    size_t i=0, bitWidth=0;
    const size_t s=type.size();
    if (s<2) return 0;
    if (type[0]=='v') { // skip over v<I> part
        for (i=1; type[i]>='0' && type[i]<='9'; ++i);
    }
    ++i; // skip over type specifier (i|f)
    for (;i<s;++i) bitWidth = bitWidth*10 + (type[i]-'0');
    return bitWidth;
}

inline void _ISE_IR2CmapReg::setTypeStr(size_t vecItems, size_t bits, bool isFloat) {
    stringstream ss;
    if (vecItems) ss << "v" << vecItems;
    ss << (isFloat?("f"):("i"));
    ss << bits;
    type = ss.str();
}

inline bool _ISE_IR2CmapReg::setTypeStr(string typeStr) {
    const size_t s = typeStr.size();
    size_t i = 0;
    if (s<2) return false;
    if (typeStr[i]=='v') {
        ++i;
        while (i<s && typeStr[i]>='0' && typeStr[i]<='9') ++i;
    }
    else return false;
    if ((i<s) && (typeStr[i]=='i' || typeStr[i]=='f')) {
        ++i;
        while (i<s && typeStr[i]>='0' && typeStr[i]<='9') ++i;
    }
    else return false;
    if (typeStr[s-1]<'0' || typeStr[s-1]>'9') return false;

    type = typeStr;
    return true;
}

#endif // __ISE_IR2C_MAP_H__
