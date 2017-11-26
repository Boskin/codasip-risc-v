/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2014 Codasip Ltd
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
 *  \author Pavel Richtarik
 *  \date   Oct 26, 2015
 *  \brief
 */

#ifndef SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_TYPES_H_
#define SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_TYPES_H_

#include <vector>
#include <map>
#include <unordered_map>
#include <ctime>
#include <queue>
#include <set>
#include <initializer_list>

#include "unwinder_wrapper.h"
#include "toolstypes.h"
#include "filesystem.h"
#include "codasip_io.h"
#include "codasip_integer.h"
#include "check_condition.h"

namespace codasip {
namespace profiler {
namespace runtime {

/**
 * \brief Dump data types
 */
namespace DumpTypes
{
    typedef uint8_t RecordType;
    typedef uint8_t AccessType;
    typedef uint32_t MagicEntry;
    typedef uint32_t ContainerSize;
    typedef uint32_t Id;
    typedef uint32_t BitWidth;
    typedef uint32_t Line;
    typedef uint8_t Column;
    typedef uint64_t Address;
    typedef uint64_t Counter;
}

namespace DumpConstants
{
    /// Magic entry constant
    static const DumpTypes::MagicEntry MAGIC_ENTRY = 0xabcdef05;
}

/**
 * \brief Dump record type
 */
enum DumpRecordType
{
    // stack
    DRT_STACK,
    // statistics
    DRT_STATS,
    // footer
    DRT_FOOTER
};

struct AccessStat
{
    // number of accesses
    DumpTypes::Counter missCount;
    // number of hits/stalls
    DumpTypes::Counter hitsCount;
};

struct PipelineStageStats
{
    Counter stalls;
    Counter clears;
};

struct AddressAccess
{
    Counter readsCount;
    Counter writesCount;
};

/// key => stage id
/// val => stage name
typedef std::unordered_map<DumpTypes::Id, std::string> PipelineStagesInfo;

struct PipelineInfo
{
    std::string name;
    PipelineStagesInfo stages;
};


struct CodalAddressInfo
{
    std::string file;
    unsigned line;
    Counter counter;
};

class CodalConditionInfo
{
public:
    struct BranchInfo
    {
        unsigned line;
        Counter counter;
    };

    /// address => address info
    typedef std::vector<BranchInfo> BranchesInfo;

    CodalConditionInfo();
    CodalConditionInfo(const codasip_address_t id,
        const std::string& file,
        const unsigned line,
        const unsigned branchesCount);

    /**
     * \brief Create a new branch, return branch id.
     */
    void AddBranch(const unsigned branchId,
        const std::string& file,
        const unsigned line);

    void Hit();
    void HitBranch(const unsigned branchId);

    /**
     * \brief Getter
     */
    const BranchesInfo& GetBranches() const;
    const CodalAddressInfo& GetInfo() const;
    /** \} */

private:
    codasip_address_t m_Id;
    CodalAddressInfo m_Info;
    BranchesInfo m_Branches;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline CodalConditionInfo::CodalConditionInfo()
{
    m_Id = 0;
    m_Info.line = 0;
    m_Info.counter = 0;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline CodalConditionInfo::CodalConditionInfo(const codasip_address_t id,
    const std::string& file,
    const unsigned line,
    const unsigned branchesCount)
{
    DEBUG_CONDITION(branchesCount > 0);

    m_Id = id;
    m_Info.file = file;
    m_Info.line = line;
    m_Info.counter = 0;
    m_Branches.resize(branchesCount);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const CodalConditionInfo::BranchesInfo& CodalConditionInfo::GetBranches() const
{
    return m_Branches;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const CodalAddressInfo& CodalConditionInfo::GetInfo() const
{
    return m_Info;
}

class CodalExpressionInfo
{
public:
    struct TermInfo
    {
        size_t line;
        size_t column;
        std::string content;
    };

    typedef std::vector<TermInfo> Terms;
    typedef std::map<codasip_address_t, Counter> Combinations;

    CodalExpressionInfo();
    CodalExpressionInfo(const std::string& file,
        const unsigned line,
        const unsigned column,
        const std::string& content,
        const Terms& terms);

    /**
     * \brief Hit expression, with actual combination of term values.
     */
    void Hit(const std::initializer_list<bool>& terms);

    /**
     * \brief Getter
     */
    const Terms& GetTerms() const;
    const Combinations& GetCombinations() const;
    const std::string& GetFile() const;
    unsigned GetLine() const;
    unsigned GetColumn() const;
    const std::string& GetContent() const;
    /** \} */
private:
    std::string m_File;
    unsigned m_Line;
    unsigned m_Column;
    std::string m_Content;
    Terms m_Terms;
    // terms 101 -> index 9
    Combinations m_Combinations;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const CodalExpressionInfo::Terms& CodalExpressionInfo::GetTerms() const
{
    return m_Terms;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const CodalExpressionInfo::Combinations& CodalExpressionInfo::GetCombinations() const
{
    return m_Combinations;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& CodalExpressionInfo::GetFile() const
{
    return m_File;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline unsigned CodalExpressionInfo::GetLine() const
{
    return m_Line;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline unsigned CodalExpressionInfo::GetColumn() const
{
    return m_Column;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& CodalExpressionInfo::GetContent() const
{
    return m_Content;
}

class BlockAddress
{
public:

    /// type of the block address
    typedef enum
    {
        UNKNOWN,
        START,
        END
    } Flag;

    typedef std::vector<Counter> TimeStamps;

    /**
     * \{
     * \brief Constructor
     */
    BlockAddress();
    BlockAddress(const codasip_address_t address, const Flag flag, const std::string& name = "");
    /**
     * \}
     * \{
     * \brief Getter
     */
    codasip_address_t GetAddress() const;
    const std::string& GetName() const;
    Flag GetFlag() const;
    TimeStamps& GetTimeStamps();
    const TimeStamps& GetTimeStamps() const;
    /**
     * \}
     */
private:
    /// address
    codasip_address_t m_Address;
    /// type of the block
    Flag m_Flag;
    /// name of the block
    std::string m_Name;
    /// time stamps
    TimeStamps m_TimeStamps;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline BlockAddress::BlockAddress()
   : m_Address(0),
     m_Flag(UNKNOWN),
     m_Name("")
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline BlockAddress::BlockAddress(const codasip_address_t address,
    const Flag flag,
    const std::string& name)
   : m_Address(address),
     m_Flag(flag),
     m_Name(name)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline codasip_address_t BlockAddress::GetAddress() const
{
    return m_Address;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& BlockAddress::GetName() const
{
    return m_Name;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline BlockAddress::Flag BlockAddress::GetFlag() const
{
    return m_Flag;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline BlockAddress::TimeStamps& BlockAddress::GetTimeStamps()
{
    return m_TimeStamps;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const BlockAddress::TimeStamps& BlockAddress::GetTimeStamps() const
{
    return m_TimeStamps;
}

class BlockActivity
{
public:
    /**
     * \brief Constructor
     */
    BlockActivity();
    /**
     * \brief Start of the block was hit
     * \param name
     */
    void Inc(const std::string& name);
    /**
     * \brief End of the block was hit
     */
    void Dec(const std::string& name);
    /**
     * \brief Return true, is any block is active
     * @return
     */
    bool IsActive();

private:
    /// Container with block actrivity
    typedef std::map<std::string, Counter> Blocks;

    /// Blocks activity
    Blocks m_Blocks;
    /// at least one block is active
    unsigned m_Activity;
};


////////////////////////////////////////////////////////////////////////////////////////////////////
inline BlockActivity::BlockActivity()
  : m_Activity(false)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void BlockActivity::Inc(const std::string& name)
{
    ++m_Blocks[name];
    ++m_Activity;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void BlockActivity::Dec(const std::string& name)
{
    // protection when a source code is bad
    if (m_Blocks[name] > 0)
    {
        --m_Blocks[name];
    }
    // protection when a source code is bad
    if (m_Activity > 0)
    {
        --m_Activity;
    }

    // double check that it is really true that there is no block, this is a protection
    // when a source code is bad
    if (!m_Activity)
    {
        for (auto& block : m_Blocks)
        {
            m_Activity += block.second;
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline bool BlockActivity::IsActive()
{
    return m_Activity != 0;
}


/**
 * \class
 * \brief
 * \tparam T
 */
template <class T>
class DecodedInstructions
{
public:
    /// Container with hits, has to be map, codasip::Integer has no std::hash backend yet
    typedef typename std::conditional<std::is_arithmetic<T>::value,
        std::unordered_map<T, Counter>,
        std::map<T, Counter> >::type Hits;

    /**
     * \brief Log instruction hit and also all sequences
     * \param value instruction
     */
    void Hit(const T& value);
    /**
     * \copydoc DecoderBase::GetHits()
     */
    const Hits& GetHits() const;
    /**
     * \brief Reset all statistics
     */
    void Reset();
private:

    /// All hits
    Hits m_Hits;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DecodedInstructions<T>::Hit(const T& value)
{
    ++m_Hits[value];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const typename DecodedInstructions<T>::Hits& DecodedInstructions<T>::GetHits() const
{
    return m_Hits;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DecodedInstructions<T>::Reset()
{
    m_Hits.clear();
}

/**
 * \class  codasip::profiler::runtime::DecodedSequences
 * \brief  Logs instruction sequences
 * \tparam Storage type for instructions
 */
template <class T>
class DecodedSequences
{
public:
    /// Container with all tracked lengths
    typedef std::set<unsigned int> SequenceLengths;
    /// List of instructions
    typedef std::vector<T> Sequence;
    /// Sequence with statistics
    typedef std::map<Sequence, Counter> Sequences;

    /**
     * \brief Initialize sequences
     * \param lengths All tracked sequence lengths
     */
    DecodedSequences();
    /**
     * \copydoc DecoderBase::SetSequenceLengths()
     */
    void SetSequenceLengths(const SequenceLengths& sequenceLengths);
    /**
     * \brief Add one
     * \param value Decoded value
     */
    void Hit(const T& value);
    /**
     * \copydoc DecoderBase::GetSequences()
     */
    const Sequences& GetSequences() const;
    /**
     * \brief Reset all statistics
     */
    void Reset();
private:
    /// one queue for one length
    typedef std::deque<T> Deque;


    /// All lengths
    SequenceLengths m_SequenceLengths;
    /// Maximum length
    unsigned int m_MaxLenght;
    /// Main logger
    Deque m_Deque;
    /// All sequences
    Sequences m_Sequences;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline
void DecodedSequences<T>::SetSequenceLengths(const SequenceLengths& sequenceLengths)
{
    for (SequenceLengths::const_iterator it = sequenceLengths.begin();
        it != sequenceLengths.end();
        ++it)
    {
        unsigned int length = *it;

        m_MaxLenght = std::max(m_MaxLenght, length);

        m_SequenceLengths.insert(length);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DecodedSequences<T>::DecodedSequences()
  : m_MaxLenght(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DecodedSequences<T>::Hit(const T& value)
{
    // insert instruction
    m_Deque.push_back(value);
    // now, evaluate all lengths
    for (SequenceLengths::const_iterator it = m_SequenceLengths.begin();
        it != m_SequenceLengths.end();
        ++it)
    {
        size_t length = *it;
        // we have enough instructions for a sequence
        if (m_Deque.size() >= length)
        {
            // log a sequence
            ++m_Sequences[Sequence(m_Deque.begin(), m_Deque.begin() + length)];
        }
    }
    // erase the first instruction
    if (m_Deque.size() == m_MaxLenght)
    {
        m_Deque.pop_front();
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const typename DecodedSequences<T>::Sequences& DecodedSequences<T>::GetSequences() const
{
    return m_Sequences;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void DecodedSequences<T>::Reset()
{
    // erase logged queue and all statistics
    m_Deque.clear();
    m_Sequences.clear();
}


/**
 * \class
 * \brief
 */
class DecoderBase
{
public:
    /// container for all type of Hits
    typedef std::unordered_map<std::string, Counter> Hits;
    ///
    typedef std::vector<std::string> Sequence;
    ///
    typedef std::map<Sequence, Counter> Sequences;
    ///
    typedef std::set<unsigned int> SequenceLengths;


    /**
     * \brief Default constructor
     * \param id Id of the decoder
     * \param bitWidth Maximum bit width of an instruction
     */
    DecoderBase(const std::string& id, const std::string& signature, const unsigned int bitWidth);
    /**
     * \brief Destructor
     */
    virtual ~DecoderBase();
    /**
     * \brief Getter
     */
    const std::string& GetId() const;
    const std::string& GetSignature() const;
    unsigned int GetBitWidth() const;
    /** \} */
    /**
     * \brief Return printable hits statistics, should be called at the end of simulation
     */
    virtual Hits GetHits() const = 0;
    /**
     * \brief Return printable sequences, should be called at the end of simulation
     */
    virtual Sequences GetSequences() const = 0;
    /**
     * \brief Set tracked sequence lengths
     * \param sequenceLengths Container with lengths
     */
    virtual void SetSequenceLengths(const SequenceLengths& sequenceLengths) = 0;
    /**
     * \brief Reset all statistics
     */
    virtual void Reset() = 0;
private:
    ///
    std::string m_Id;
    ///
    std::string m_Signature;
    ///
    unsigned int m_BitWidth;
};

/**
 * \class
 * \brief
 * \tparam T
 */
template <class T>
class Decoder : public DecoderBase,
    public DecodedInstructions<T>,
    public DecodedSequences<T>
{
public:
    Decoder(const std::string& id, const std::string& signature, const unsigned int bitWidth);
    /**
     * \copydoc DecoderBase::Reset()
     */
    void Reset();
    /**
     * \brief Log instruction hit and also all sequences
     * \param value instruction
     */
    void Hit(const T& value);
    /**
     * \copydoc DecoderBase::GetHits()
     */
    DecoderBase::Hits GetHits() const;
    /**
     * \copydoc DecoderBase::GetSequences()
     */
    DecoderBase::Sequences GetSequences() const;
    /**
     * \copydoc DecoderBase::SetSequenceLengths()
     */
    void SetSequenceLengths(const DecoderBase::SequenceLengths& sequenceLengths);
private:
    /// True, if we log a sequences
    bool m_LogSequences;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Decoder<T>::Decoder(const std::string& id,
    const std::string& signature,
    const unsigned int bitWidth)
  : DecoderBase(id, signature, bitWidth),
    DecodedInstructions<T>::DecodedInstructions(),
    DecodedSequences<T>::DecodedSequences(),
    m_LogSequences(false)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Decoder<T>::Reset()
{
    DecodedInstructions<T>::Reset();
    DecodedSequences<T>::Reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Decoder<T>::Hit(const T& value)
{
    DecodedInstructions<T>::Hit(value);
    if (m_LogSequences)
    {
        DecodedSequences<T>::Hit(value);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief Get hex string value representation.
 * \param value
 */
template <class T>
inline std::string GetHexVal(T val)
{
    std::stringstream ss;
    ss << std::hex << "0x" << val;
    return ss.str();
}
inline std::string GetHexVal(char val)
{
    std::stringstream ss;
    ss << std::hex << "0x" << (int)val;
    return ss.str();
}
inline std::string GetHexVal(unsigned char val)
{
    std::stringstream ss;
    ss << std::hex << "0x" << (int)val;
    return ss.str();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DecoderBase::Hits Decoder<T>::GetHits() const
{
    // get hit in raw format
    const typename DecodedInstructions<T>::Hits& hitsImpl =  DecodedInstructions<T>::GetHits();
    // converted stats
    DecoderBase::Hits hits;

    // convert to string
    for (typename DecodedInstructions<T>::Hits::const_iterator it = hitsImpl.begin();
        it != hitsImpl.end();
        ++it)
    {
        // convert to hex and log
        hits[GetHexVal(it->first)] += it->second;
    }

    return hits;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline DecoderBase::Sequences Decoder<T>::GetSequences() const
{
    // get hit in raw format
    const typename DecodedSequences<T>::Sequences& sequencesImpl =
        DecodedSequences<T>::GetSequences();
    // converted stats
    DecoderBase::Sequences sequences;
    codasip::MaxInt buffer;

    // convert to readable stats
    for (typename DecodedSequences<T>::Sequences::const_iterator it = sequencesImpl.begin();
        it != sequencesImpl.end();
        ++it)
    {
        // convert sequence to strings
        DecoderBase::Sequence sequence;
        for (size_t ii = 0; ii < it->first.size(); ++ii)
        {
            // convert to hex
            buffer = it->first.at(ii);
            sequence.push_back(buffer.get_hex(true));
        }
        // log data
        sequences[sequence] += it->second;
    }
    return sequences;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Decoder<T>::SetSequenceLengths(const DecoderBase::SequenceLengths& sequenceLengths)
{
    m_LogSequences = sequenceLengths.size();
    DecodedSequences<T>::SetSequenceLengths(sequenceLengths);
}

/**
 * \class PpaOperand
 * \brief Class handling operators for PPA
 */
class PpaOperator
{
public:
    /// type of tracket item
    typedef enum
    {
        /// not known
        UNKNOWN,
        /// *
        MULTIPLIER,
        /// /, %
        DIVIDER,
        /// +, -, unary -
        ADDER,
        /// <<, >>, <<<, >>>
        MULTIPLEXOR,
        /// ||, &&
        LOGICAL,
        /// |, &, ^
        BITWISE,
        /// ==, !=, >=, <=
        COMPARATOR
    } Type;

    /**
     * \{
     * \brief Constructor
     */
    PpaOperator();
    PpaOperator(const std::string& designPath,
        const Type type,
        const Counter bitWidth,
        const Counter inputs);
    /** \} */
    /**
     * \{
     * \brief Getter
     */
    const std::string& GetDesignPath() const;
    Counter GetBitWidth() const;
    Counter GetInputs() const;
    Type GetType() const;
    /** \} */
private:
    /// design path
    std::string m_DesignPath;
    /// Type if power item
    Type m_Type;
    /// Address in the codal for later reference
    Counter m_BitWidth;
    /// Size, number of inputs
    Counter m_Inputs;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaOperator::PpaOperator()
   : m_DesignPath(""),
     m_Type(UNKNOWN),
     m_BitWidth(0),
     m_Inputs(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaOperator::PpaOperator(const std::string& designPath,
    const Type type,
    const Counter bitWidth,
    const Counter inputs)
   : m_DesignPath(designPath),
     m_Type(type),
     m_BitWidth(bitWidth),
     m_Inputs(inputs)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& PpaOperator::GetDesignPath() const
{
    return m_DesignPath;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Counter PpaOperator::GetBitWidth() const
{
    return m_BitWidth;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Counter PpaOperator::GetInputs() const
{
    return m_Inputs;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaOperator::Type PpaOperator::GetType() const
{
    return m_Type;
}


/**
 * \class PpaResource
 * \brief Class handling resources for PPA
 */
class PpaResource
{
public:
    /// type of tracket item
    typedef enum
    {
        /// not known
        UNKNOWN,
        /// register
        REGISTER,
        /// pipeline register
        PIPELINE_REGISTER,
        /// register_file
        REGISTER_FILE,
        /// interface
        INTERFACE
    } Type;
    /**
     * \{
     * \brief Constructor
     */
    PpaResource();
    PpaResource(const std::string signature,
        const std::string& designPath,
        const Type type,
        const Counter bitWidth,
        const Counter size,
        const int readPorts,
        const int writePorts);
    /** \} */
    /**
     * \{
     * \brief Getter
     */
    const std::string& GetDesignPath() const;
    const std::string& GetSignature() const;
    Counter GetBitWidth() const;
    Counter GetSize() const;
    Type GetType() const;
    int GetReadPorts() const;
    int GetWritePorts() const;
    /** \} */

private:
    /// signature
    std::string m_Signature;
    /// design path
    std::string m_DesignPath;
    /// type
    Type m_Type;
    /// bit width
    Counter m_BitWidth;
    /// Size
    Counter m_Size;
    /// number of read data ports
    int m_ReadPorts;
    /// number of write data ports
    int m_WritePorts;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaResource::PpaResource()
   : m_Signature(""),
     m_DesignPath(""),
     m_Type(UNKNOWN),
     m_BitWidth(-1),
     m_Size(0),
     m_ReadPorts(0),
     m_WritePorts(0)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaResource::PpaResource(const std::string signature,
    const std::string& designPath,
    const Type type,
    const Counter bitWidth,
    const Counter size,
    const int readPorts,
    const int writePorts)
   : m_Signature(signature),
     m_DesignPath(designPath),
     m_Type(type),
     m_BitWidth(bitWidth),
     m_Size(size),
     m_ReadPorts(readPorts),
     m_WritePorts(writePorts)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& PpaResource::GetDesignPath() const
{
    return m_DesignPath;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const std::string& PpaResource::GetSignature() const
{
    return m_Signature;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Counter PpaResource::GetBitWidth() const
{
    return m_BitWidth;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Counter PpaResource::GetSize() const
{
    return m_Size;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline PpaResource::Type PpaResource::GetType() const
{
    return m_Type;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline int PpaResource::GetReadPorts() const
{
    return m_ReadPorts;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline int PpaResource::GetWritePorts() const
{
    return m_WritePorts;
}

struct PpaActivityInfo
{
    Counter counter;
    std::string designPath;
};

/// key => pipeline id
/// val => pipeline info
typedef std::unordered_map<DumpTypes::Id, PipelineInfo> PipelinesDict;

/// key => codal address
/// val => codal address info (file, line)
typedef std::unordered_map<codasip_address_t, CodalAddressInfo> CodalAddressesDict;

/// key => condition id
/// val => condition info (file, line, hits, branches)
typedef std::unordered_map<codasip_address_t, CodalConditionInfo> CodalConditionsDict;

/// key => expression id
/// val => expression info (file, line, hits, combinations)
typedef std::unordered_map<codasip_address_t, CodalExpressionInfo> CodalExpressionsDict;

/// key => resource access type
/// val => access counter
typedef std::map<codasip::profiler::AccessType, Counter> ResourceStat;
/// info about resource
struct  ResourceInfo
{
    std::string signature;
    bool userDefined;
    ResourceStat resourceStat;
};
/// key => resource string id
/// val => resource access statistics
typedef std::unordered_map<std::string, ResourceInfo> ResourcesDict;

/// key => cache memory id
/// val => index of cache statistics (within sample)
typedef std::unordered_map<DumpTypes::Id, AccessStat> CachesStats;

/// key => stage id
/// val => stage statistics
typedef std::unordered_map<DumpTypes::Id, PipelineStageStats> PipelineStagesStats;

/// key => pipeline id
/// val => pipeline statistics
typedef std::unordered_map<DumpTypes::Id, PipelineStagesStats> PipelineStats;

/// key => decoder id
/// val => decoded values statistics
typedef std::unordered_map<DumpTypes::Id, DecoderBase*> DecodersStats;

/// key => accessed address
/// val => address access statistics (reads, writes)
typedef std::unordered_map<codasip_address_t, AddressAccess> AddressesStats;

/// key => interface id
/// val => addresses accessed by this interface
typedef std::unordered_map<DumpTypes::Id, AddressesStats> InterfacesStats;
/// val => list of block addresses on the certain address
typedef std::vector<BlockAddress> BlockAddresses;
/// key => address
/// val => clock cycles of hits for blocks
typedef std::unordered_map<codasip_address_t, BlockAddresses> BlocksAddressesStats;
/// key => id of hit item (e.g. multiplier)
/// val => PPA operator
typedef std::vector<PpaOperator> PpaOperators;
/// val => PPA resource
typedef std::vector<PpaResource> PpaResources;
/// key => Id of the activity block
/// val => PPA resource
typedef std::unordered_map<DumpTypes::Id, PpaActivityInfo> PpaActivity;

/**
 * \class   codasip::profiler::runtime::Sample
 * \brief   Sample containing runtime info in current time.
 */
class Sample
{
public:
    /// Constructor
    Sample();
    /**
     * \brief   Constructor
     * \param   address
     * \param   decoderStatsTpl DecodersStats object that is cloned - serves as a template,
     *          preserves decoders values type info
     */
    explicit Sample(DecodersStats& decoderStats, const codasip_address_t address);
    /**
     * \{
     * \brief Getter.
     */
    codasip_address_t GetAddress() const;
    Counter GetHits() const;
    const DecodersStats& GetDecoders() const;
    const CachesStats& GetCaches() const;
    const PipelineStats& GetPipelines() const;
    /** \} */
    
    /**
     * \{
     * \brief Setter.
     */
    void SetAddress(const codasip_address_t address);
    void Hit();

    template<class TInt>
    void DecoderHit(const int decoderId, const TInt value);

    void CacheHit(const int cacheIndex);
    void CacheMiss(const int cacheIndex);

    void PipelineStall(const int pipelineId, const int stageId);
    void PipelineClear(const int pipelineId, const int stageId);
    /** \} */

private:
    /// address
    codasip_address_t m_Address;
    /// number of accesses
    Counter m_Hits;

    DecodersStats* m_Decoders;
    CachesStats m_Caches;
    PipelineStats m_Pipelines;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Sample::Sample()
  : m_Address(0),
    m_Hits(0),
    m_Decoders(NULL)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Sample::Sample(DecodersStats& decoderStats, const codasip_address_t address)
  : m_Address(address),
    m_Hits(0),
    m_Decoders(&decoderStats)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline codasip_address_t Sample::GetAddress() const
{
    return m_Address;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline Counter Sample::GetHits() const
{
    return m_Hits;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const DecodersStats& Sample::GetDecoders() const
{
    return *m_Decoders;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const CachesStats& Sample::GetCaches() const
{
    return m_Caches;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline const PipelineStats& Sample::GetPipelines() const
{
    return m_Pipelines;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::SetAddress(codasip_address_t address)
{
    m_Address = address;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::Hit()
{
    m_Hits++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class TInt>
inline void Sample::DecoderHit(const int decoderId, const TInt value)
{
    // find decoder
    DecodersStats::iterator itDecoder = m_Decoders->find(decoderId);
    DEBUG_CONDITION(itDecoder != m_Decoders->end()) << "Decoder " << decoderId << " not found";
    Decoder<TInt>* decoder =
        static_cast< Decoder<TInt>* >(&(*itDecoder->second));
    DEBUG_CONDITION(decoder != NULL) << "Cannot cast decoder " << decoderId;

    decoder->Hit(value);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::CacheHit(const int cacheIndex)
{
    m_Caches[cacheIndex].hitsCount++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::CacheMiss(const int cacheIndex)
{
    m_Caches[cacheIndex].missCount++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::PipelineStall(const int pipelineId, const int stageId)
{
    m_Pipelines[pipelineId][stageId].stalls++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
inline void Sample::PipelineClear(const int pipelineId, const int stageId)
{
    m_Pipelines[pipelineId][stageId].clears++;
}

/// samples dictionary
typedef std::unordered_map<codasip_address_t, Sample> SamplesDict;

/**
 * \class   codasip::profiler::runtime::CallStack
 * \brief   Class containing a stack snapshot.
 */
class CallStack
{
public:
    debugger::UnwinderWrapper::Callstack& GetAddresses();
    const debugger::UnwinderWrapper::Callstack& GetAddresses() const;

    void SetClockCycle(const Counter clockCycle);
    Counter GetClockCycle() const;

    bool Valid() const;
private:
    ///
    debugger::UnwinderWrapper::Callstack m_CallStack;
    ///
    Counter m_ClockCycle;
};

inline debugger::UnwinderWrapper::Callstack& CallStack::GetAddresses()
{
    return m_CallStack;
}

inline const debugger::UnwinderWrapper::Callstack& CallStack::GetAddresses() const
{
    return m_CallStack;
}

inline void CallStack::SetClockCycle(const Counter clockCycle)
{
    m_ClockCycle = clockCycle;
}

inline Counter CallStack::GetClockCycle() const
{
    return m_ClockCycle;
}

inline bool CallStack::Valid() const
{
    return m_CallStack.size();
}

} // namespace codasip::profiler::runtime
} // namespace codasip::profiler
} // namespace codasip

#endif // SIMULATORS2_PROFILERL_PROFILER_RT_PROFILER_RT_TYPES_H_
