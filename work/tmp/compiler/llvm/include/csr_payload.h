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
 *  \date   Feb 23, 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef SIMULATORS2_RESOURCES_CSR_PAYLOAD_H_
#define SIMULATORS2_RESOURCES_CSR_PAYLOAD_H_

#include "csr_helpers.h"

namespace codasip {
namespace resources {

/**
 *  \addtogroup SIMULATOR
 *  \{
 *  \class  Payload
 *  \brief  Generic payload for data transfer over interface
 *  \}
 */
template<class T>
class Payload
{
public:
    /// typedef
    typedef T data_type;
    /**
     * \brief Constructor
     */
    Payload();
    /**
     * \brief Clear all data
     */
    void reset();
    /**
     * \{
     * \brief Getter
     */
    codasip_address_t get_address() const;
    T get_data() const;
    Index get_bi() const;
    Index get_bc() const;
    Command get_command() const;
    Uid get_uid() const;
    Response get_response() const;
    Status get_status() const;
    /**
     * \}
     * \{
     * \brief Setter
     */
    void set_address(const codasip_address_t address);
    void set_data(const T data);
    void set_bi(const Index bi);
    void set_bc(const Index bc);
    void set_command(const Command command);
    void set_uid(const Uid uid);
    void set_response(const Response response);
    void set_status(const Status status);
    /** \} */
    /**
     * \brief Update this payload content with the src. Checks if the commands are the same.
     *        Otherwise, data is set to 0 and response is CP_RS_IDLE.
     * \param src   Source payload
     * \return true if updated, false if not (different commands)
     */
    bool update_cmd_args(const Payload<T>& src);
    /**
     * \brief Comparison operator.
     */
    bool operator==(const Payload<T>& p) const;

private:
    /// UID of the payload
    Uid m_Uid;
    /// Command for the request
    Command m_Command;
    /// Address of the request
    codasip_address_t m_Address;
    /// data that should be written
    T m_Data;
    /// byte index
    Index m_Bi;
    /// byte count
    Index m_Bc;
    /// Status of slave
    Status m_Status;
    /// Response from slave
    Response m_Response;
};

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
inline Payload<T>::Payload()
{
    reset();
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template <class T>
RES_INLINE void Payload<T>::reset()
{
    m_Uid = 0;
    m_Command = CP_CMD_NONE;
    m_Address = 0;
    m_Data = 0;
    m_Bi = 0;
    m_Bc = 0;
    m_Status = CP_ST_BUSY;
    m_Response = CP_RS_IDLE;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE codasip_address_t Payload<T>::get_address() const
{
    return m_Address;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_address(const codasip_address_t address)
{
    m_Address = address;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE T Payload<T>::get_data() const
{
    return m_Data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_data(const T data)
{
    m_Data = data;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Index Payload<T>::get_bi() const
{
    return m_Bi;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_bi(const Index bi)
{
    m_Bi = bi;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Index Payload<T>::get_bc() const
{
    return m_Bc;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_bc(const Index bc)
{
    m_Bc = bc;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Command Payload<T>::get_command() const
{
    return m_Command;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_command(const Command command)
{
    m_Command = command;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Uid Payload<T>::get_uid() const
{
    return m_Uid;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_uid(const Uid uid)
{
    m_Uid = uid;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Response Payload<T>::get_response() const
{
    return m_Response;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_response(const Response response)
{
    m_Response = response;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE Status Payload<T>::get_status() const
{
    return m_Status;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE void Payload<T>::set_status(const Status status)
{
    m_Status = status;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE bool Payload<T>::update_cmd_args(const Payload<T>& src)
{
    const bool update = (m_Command == src.get_command());
    if(update)
    {
        m_Uid = src.get_uid();
        m_Address = src.get_address();
        m_Data = src.get_data();
        m_Bi = src.get_bi();
        m_Bc = src.get_bc();
        m_Status = src.get_status();
        m_Response = src.get_response();
    }
    else
    {
        m_Data = 0;
        m_Response = CP_RS_IDLE;
    }
    return update;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
RES_INLINE bool Payload<T>::operator==(const Payload<T>& p) const
{
    return (
        m_Uid == p.m_Uid &&
        m_Command == p.m_Command &&
        m_Address == p.m_Address &&
        m_Data == p.m_Data &&
        m_Bi == p.m_Bi &&
        m_Bc == p.m_Bc &&
        m_Status == p.m_Status &&
        m_Response == p.m_Response);
}


}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_PAYLOAD_H_
