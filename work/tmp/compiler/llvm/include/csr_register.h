/**
 * Codasip Ltd
 * 
 * CONFIDENTIAL 
 *
 * Copyright 2016 Codasip Ltd
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
 *  \author Zdenek Prikryl
 *  \date   Feb 22, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_REGISTER_H_
#define SIMULATORS2_RESOURCES_CSR_REGISTER_H_

#include "csr_helpers.h"
#include "simulator_resources.h"

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATORS
 *  \{
 *  \class  Register
 *  \brief  Class representing a register
 *  \}
 */
template<class T>
class Register : public T, public simulator::RegisterInfo
{
public:
    /**
     * \copydoc Sentinel::Sentinel
     */
    Register(const std::string& name, const Uid uid);
    /**
     * \{
     * \copydoc VariableStorage::read
     */
    typename T::data_type read() const;
    typename T::data_type dread() const;
    /**
     * \}
     * \{
     * \brief Read with bit mask
     */
    typename T::data_type read(const typename T::data_type mask) const;
    typename T::data_type dread(const typename T::data_type mask) const;
    /**
     * \}
     * \{
     * \copydoc VariableStorage::write
     */
    void write(const typename T::data_type data);
    void dwrite(const typename T::data_type data);
    /**
     * \}
     * \{
     * \brief Write with bit mask
     */
    void write(const typename T::data_type data, const typename T::data_type mask);
    void dwrite(const typename T::data_type data, const typename T::data_type mask);
    /** \} */

    /// \copydoc ResourceInfo::GetUid
    Uid GetUid() const override;
    /// \copydoc ResourceInfo::GetName
    const std::string& GetName() const override;
    /// \copydoc ResourceInfo::GetBitWidth
    unsigned GetBitWidth() const override;
    /// \copydoc RegisterInfo::IsArchitectural
    bool IsArchitectural() const override;
    /// \copydoc RegisterInfo::GetPipelineStage
    const std::string& GetPipelineStage() const override;

    /**
     *  \brief  Set flag that this register is architectural
     */
    void set_architectural(const bool);
    /**
     *  \brief  Set pipeline stage of register
     */
    void set_pipeline_stage(const std::string&);

private:
    std::string m_PipeLine;
    bool m_Arch;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Register<T>::Register(const std::string& name, const Uid uid)
  : T(name, uid),
    m_Arch(false)
{}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename T::data_type Register<T>::read() const
{
    return T::read();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename T::data_type Register<T>::dread() const
{
    return T::dread();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename T::data_type Register<T>::read(const typename T::data_type mask) const
{
    return T::read() & mask;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline typename T::data_type Register<T>::dread(const typename T::data_type mask) const
{
    return T::dread() & mask;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::write(const typename T::data_type data, const typename T::data_type mask)
{
    T::write((data & mask) | ((~mask) & T::dread()));
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::write(const typename T::data_type data)
{
    T::write(data);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::dwrite(const typename T::data_type data, const typename T::data_type mask)
{
    T::dwrite((data & mask) | ((~mask) & T::dread()));
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::dwrite(const typename T::data_type data)
{
    T::dwrite(data);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Uid Register<T>::GetUid() const
{
    return T::get_uid();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const std::string& Register<T>::GetName() const
{
    return T::get_name();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline unsigned Register<T>::GetBitWidth() const
{
    return T::WORD_BITS;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline bool Register<T>::IsArchitectural() const
{
    return m_Arch;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline const std::string& Register<T>::GetPipelineStage() const
{
    return m_PipeLine;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::set_architectural(const bool arch)
{
    m_Arch = arch;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline void Register<T>::set_pipeline_stage(const std::string& pipeline)
{
    m_PipeLine = pipeline;
}

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_REGISTER_H_
