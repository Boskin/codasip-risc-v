/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2015 Codasip Ltd
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of Codasip Ltd
 * and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip Ltd and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 *  \file
 *  \author Hons Petr
 *  \date   6. 10. 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef _SIMULATOR_DEBUG_INFO_H_
#define _SIMULATOR_DEBUG_INFO_H_

#include <stdint.h>
#include <vector>

#include "enumutils.h"
#include "simulator_private.h"

namespace codasip {
namespace simulator {
// forwards
class SimulatorInfo;

namespace codal {
// forwards
class Variable;
class Block;
class Function;

/// Describes current CodAL callstack
typedef std::vector<Address> CallStack;

/**
 *  \class  LineTable
 *  \brief  Contains mapping of CodAL statement address to CodAL source file and line.
 */
class LineTable
{
public:
    /// Index into file table, use 16bits so Entry can be stored at 32bits only
    typedef uint16_t FileIndex;
    /// Invalid file index
    static const FileIndex INVALID_FILE_INDEX = FileIndex(-1);

    /// Single entry in line table
    class Entry
    {
    public:
        /// Constructor
        Entry(const FileIndex fileIndex = INVALID_FILE_INDEX, const uint16_t line = 0);
        /// Return file index of entry
        FileIndex GetFileIndex() const;
        /// Return line of entry
        uint16_t GetLine() const;
        /// Return validity of entry
        bool IsValid() const;
    private:
        FileIndex m_FileIndex;
        uint16_t m_Line;
    };
    /**
     *  \brief  Search through all stored files and return index of file. If given file is not
     *          found, return INVALID_FILE_INDEX.
     */
    FileIndex GetFileIndex(const std::string& path) const;
    /**
     *  \brief  Returns number of files. Returned number - 1 is highest file index.
     */
    FileIndex GetFilesCount() const;
    /**
     *  \brief  Return line entry for given CodAL address. If given entry doesn't exists, invalid
     *          entry is returned.
     */
    const Entry& GetEntryAtAddress(const Address address) const;
    /**
     *  \brief  Get number of line entries stored in line table. Returned number - 1 is highest
     *          CodAL address that has associated line entry.
     */
    Address GetEntriesCount() const;
    /**
     *  \brief  Return file path at given index
     */
    const std::string& GetFileAtIndex(const FileIndex index) const;
    /**
     *  \brief  Sets given entry for given CodAL address
     */
    void InsertEntry(const Address address, const Entry& entry);
    /**
     *  \brief  Search through all stored files and return index of file. If given file is not
     *          found, assign given file path new file index
     */
    FileIndex GetOrCreateFileIndex(const std::string& path);

private:
    /// Container for files
    typedef std::vector<std::string> Files;
    /// Container for line entries
    typedef std::vector<Entry> Entries;

    /// List of CodAL source files
    Files m_Files;
    /// Mapping of address (vector index) to line entry (value)
    Entries m_Entries;
};

/**
 *  \class  DebugInfoVisitor
 *  \brief  Visitor design pattern implementation over simulator debug information
 */
class DebugInfoVisitor
{
public:
    virtual ~DebugInfoVisitor();
    virtual void Visit(const Variable& variable);
    virtual void Visit(const Block& block);
    virtual void Visit(const Function& function);
};

/// Macro for simple adding support for Visitor pattern
#define DEBUGINFO_VISITABLE \
    virtual void Accept(DebugInfoVisitor& visitor) const;

/**
 *  \class  VariableType
 *  \brief  Stores information about CodAL variable type
 */
class VariableType
{
public:
    CODASIP_ENUM_CLASS_STR(Type,
        /// bool
        (BOOL, "BOOL"),
        /// intxx, uintxx
        (INTEGER, "INTEGER"),
        /// float, double
        (REAL, "REAL")
    );
    /**
     *  \brief  Constructor
     *  \param  type Type identifier
     *  \param  bitwidth Bitwidth (for vectors/array bitwidth of single element)
     *  \param  isSigned True if type is signed, false for unsigned
     *  \param  vectorElementCount Count of vector elements, or 0
     *  \param  arraySize Number of array elements, or 0
     */
    VariableType(const Type type,
        const unsigned bitwidth,
        const bool isSigned,
        const unsigned vectorElementCount = 0,
        const unsigned arraySize = 0);
    /**
     *  \brief  Return type identifier
     */
    Type GetType() const;
    /**
     *  \brief  Return bitwidth of type.
     *  \param  element If set to true and this type describes vector, return bitwidth of vector
     *          element (v4i5 -> 5), if false (default) return bitwidth of entire type (v4i5 -> 20)
     */
    unsigned GetBitWidth(const bool element = false) const;
    /**
     *  \brief  Return true if given type is signed, false for unsigned
     */
    bool IsSigned() const;
    /**
     *  \brief  Return count of vector elements (v4i5 -> 4)
     */
    unsigned GetVectorElements() const;
    /**
     *  \brief  Return count of array cells (uint32[20] -> 20) or 0 for not arrayed variables
     */
    unsigned GetArraySize() const;
    /**
     *  \brief  Return type string description
     */
    std::string GetDescription() const;
    /**
     *  \brief  Set count of vector elements
     */
    void SetVectorElements(const unsigned);

private:
    Type m_Type;
    unsigned m_Bitwidth;
    bool m_Signed;
    unsigned m_VectorElements;
    unsigned m_ArraySize;
};

/**
 *  \class  Variable
 *  \brief  Describes single CodAL variable
 */
class Variable
{
public:
    DEBUGINFO_VISITABLE
    /**
     *  \brief  Constructor
     *  \param  name Name of variable
     *  \param  uid UID of variable
     *  \param  type Type of variable. Object of type is copied
     */
    Variable(const std::string& name, const Uid uid, const VariableType& type);
    /**
     *  \brief  Destructor
     */
    virtual ~Variable() ;
    /**
     *  \brief  Return name of variable
     */
    const std::string& GetName() const;
    /**
     *  \brief  Return UID of variable, is used to retrieve content of variable from simulator
     */
    Uid GetUid() const;
    /**
     *  \brief  Return type of variable
     */
    const VariableType& GetType() const;
    /**
     *  \brief  Return type of variable
     */
    VariableType& GetType();
    /**
     *  \brief  Return block where variable is declared
     */
    Block& GetBlock() const;
    /**
     *  \brief  Sets internal block
     */
    void SetBlock(Block& block);

private:
    Block* m_Block;
    std::string m_Name;
    Uid m_UID;
    VariableType m_Type;
};

/**
 *  \class  Block
 *  \brief  Base class for all lexical CodAL blocks (compound statement, function, etc.)
 */
class Block
{
public:
    DEBUGINFO_VISITABLE

    /// Describes single range of addresses
    class Range
    {
    public:
        /**
         *  \brief  Constructor
         *  \param  low Lowest address of range
         *  \param  high Highest address of range
         */
        Range(const unsigned low, const unsigned high);
        /**
         *  \brief  Return lowest address of range
         */
        unsigned GetLow() const;
        /**
         *  \brief  Return highest address of range
         */
        unsigned GetHigh() const;
        /**
         *  \brief  Comparison operator for range sorting
         */
        bool operator< (const Range &rhs) const;
        /**
         *  \brief  Return true if given address is present in range
         */
        bool Contains(const unsigned addr) const;
        /**
         *  \brief  Return true if entire given range is present in current range
         */
        bool Contains(const Range& range) const;
        /**
         *  \brief  Return true if current and given range intersects or can be joined
         *          into single one.
         */
        bool CanBeCombined(const Range &rhs) const;
        /**
         *  \brief  Set high address range
         */
        void SetHigh(const unsigned high);

    private:
        /// Lowest address of range
        unsigned m_Low;
        /// Highest address of range
        unsigned m_High;
    };
    /// Container to store ranges
    typedef std::vector<Range> Ranges;
    /// Container to store variables
    typedef std::vector<Variable> Variables;
    /// Container for children blocks
    typedef std::vector<Block*> Blocks;

    /**
     *  \brief  Constructor
     *  \param  parent Parent block, or NULL if parent block doesn't exist (e.g. compilation unit)
     */
    explicit Block(Block* parent);
    /**
     *  \brief  Destructor
     */
    virtual ~Block();
    /**
     *  \brief  Return lowest address of block
     */
    Address GetLow() const;
    /**
     *  \brief  Return parent block or NULL, if no parent block exists
     */
    Block* GetParent() const;
    /**
     *  \brief  Add sub block. Memory of the block will be managed by this object
     */
    void AddChild(Block& block);
    /**
     *  \brief  Add variable that is declared in this block. Copy of passed object will be created.
     */
    void AddVariable(const Variable& var);
    /**
     *  \brief  Add new address for this block. Automatically changes parent blocks to include
     *          this range.
     */
    void AddAddress(const Address addr);
    /**
     *  \brief  Add range for this block. The range won't be added to parent block
     */
    void AddRange(const Address low, const Address high);
    /**
     *  \brief  Optimize stored ranges in curent and all child blocks
     */
    void ConsolidateRanges();
    /**
     *  \brief  Return best-match block for given address
     */
    const Block* FindDeepest(const Address addr) const;
    /**
     *  \brief  Returns function that this block belongs to. If this block describes function,
     *          return itself. If this block is not contained in function or function
     *          couldn't be found, return NULL.
     */
    virtual Function* GetFunction();
    /**
     *  \brief  Return variables declared in this block
     */
    const Variables& GetVariables() const;
    /**
     *  \brief  Return container of child blocks
     */
    const Blocks& GetChildBlocks() const;
    Blocks& GetChildBlocks();
    /**
     *  \brief  Return ranges this block is valid in.
     */
    const Ranges& GetRanges() const;
    /**
     *  \brief  Return true if given address is contained in ranges associated with current block.
     */
    bool Contains(const Address addr) const;
    /**
     *  \brief  Get variable by ID
     */
    Variable* GetVariable(const std::string& name);

private:
    /**
     *  \brief  Sets parent block
     */
    void SetParent(Block& block);

    /// Parent block
    Block* m_Parent;
    /// Ranges of current block
    Ranges m_Ranges;
    /// Children blocks
    Blocks m_Children;
    /// Variables declared in this block
    Variables m_Variables;
};

/**
 *  \class  Function
 *  \brief  Describes single CodAL function or section (semantics, decoders, etc.)
 */
class Function : public Block
{
public:
    DEBUGINFO_VISITABLE

    /// From which object was the function created
    CODASIP_ENUM_CLASS_STR(Type,
        (EVENT, "EVENT"),
        (ELEMENT, "ELEMENT"),
        (FUNCTION, "FUNCTION")
    );

    /**
     *  \brief  Constructor
     *  \param  type Type of function
     *  \param  name Name of function or event
     */
    Function(const Type type, const std::string& name);

    ///  \copydoc Block::GetFunction
    virtual Function* GetFunction();

    Type GetType() const;
    const std::string& GetName() const;

private:
    /// Type of function
    Type m_Type;
    /// Name of function / event
    std::string m_Name;
};

/**
 *  \brief  Class holding all debug info for given simulator instance. This class is used
 *          to pass all CodAL debug info from simulator to debugger.
 */
class DebugInfo
{
public:
    DebugInfo()
      : m_Root(nullptr)
    {}

    /// Line table containing all CodaAL infos
    LineTable m_LineTable;
    /// Global block, that is parent of all debug information
    Block m_Root;
    /// Current CodAL call stack
    CallStack m_CallStack;
};

}   // namespace codasip::simulator::codal
}   // namespace codasip::simulator
}   // namespace codasip


#undef DEBUGINFO_VISITABLE
#endif  // _SIMULATOR_DEBUG_INFO_H_
