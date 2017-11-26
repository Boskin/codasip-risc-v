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

#ifndef SIMULATORS2_RESOURCES_CSR_FU_FVE_RESOURCE_H_
#define SIMULATORS2_RESOURCES_CSR_FU_FVE_RESOURCE_H_

#include "csr_helpers.h"
#include <type_traits>

namespace codasip {
namespace resources {

/**
 *  \class  codasip::resource::FuFveResource
 *  \brief  Storage for functional verification emulating resources
 *          (e.g. signal/port/register)
 *  \tparam _BitWidth Bit width
 *  \tparam _IsSigned Sign
 */
template<class T, Index _Bpw, bool _AsyncWrite, bool _IsMemoryProtocol>
class FuFveResource
{
public:
    typedef T data_type;
    typedef typename std::underlying_type<Command>::type CommandUnderlyingType;
    typedef typename std::underlying_type<Status>::type StatusUnderlyingType;
    typedef typename std::underlying_type<Response>::type ResponseUnderlyingType;
private:
    static const bool HAS_SUBBLOCKS = _Bpw > 1;
    /// holding variable
    data_type m_D0, m_Q0;

    /// pre-stored return values for request response
    Status m_Rs;
    /// pre-stored return values for input finish response
    Response m_Ifr;
    /// pre-stored return values for output finish response
    Response m_Ofr;
    /// pre-stored return values for finish response
    Response m_Fr;

    /// write enable
    bool m_We;
    /// write address
    codasip_address_t m_Wa;
    /// read enable
    bool m_Re;
    /// read address
    codasip_address_t m_Ra;

    /// address
    codasip_address_t m_A;
    /// write subblock index
    Index m_Bi;
    /// write subblock count
    Index m_Bc;
    // request command
    Command m_Rc;


    /// info for FVE whether the FVE should check the resource
    /// check data
    bool m_CheckData;

    // register file
    /// check write address
    bool m_CheckWA;
    /// check read address
    bool m_CheckRA;

    // interfaces
    /// check address
    bool m_CheckA;
    /// check write subblock index
    bool m_CheckBi;
    /// check write subblock count
    bool m_CheckBc;
    /// check request commnand
    bool m_CheckRc;

public:
    /// \brief Ctor
    FuFveResource()
      : m_D0(0),
        m_Q0(0),
        m_Rs(CP_ST_ERROR),
        m_Ifr(CP_RS_ERROR),
        m_Ofr(CP_RS_ERROR),
        m_Fr(CP_RS_ERROR),
        m_We(false),
        m_Wa(0),
        m_Re(false),
        m_Ra(0),
        m_A(0),
        m_Bi(0),
        m_Bc(0),
        m_Rc(CP_CMD_NONE),
        m_CheckData(false),
        m_CheckWA(false),
        m_CheckRA(false),
        m_CheckA(false),
        m_CheckBi(false),
        m_CheckBc(false),
        m_CheckRc(false)
    {}
    /**
     * \{
     * \brief Write data into holding variable
     * \param data Data
     */
    void dwrite(const data_type data)
    {
        m_D0 = data;
        if ( _AsyncWrite )
        {
            m_Q0 = data;
        }
        m_CheckData = true;
        m_We = true;
    }
    void dwrite(const data_type data, const codasip_address_t addr)
    {
        m_CheckWA = true;
        m_Wa = addr;
        dwrite(data);
    }
    void dwrite(const data_type data,
        const codasip_address_t addr,
        const Index bi,
        const Index bc)
    {
        m_CheckData = true; m_D0 = data;
        m_CheckA = true; m_A = addr;
        m_CheckBi = true; m_Bi = bi;
        m_CheckBc = true; m_Bc = bc;
    }
    void write(const data_type data)
    {
        dwrite(data);
    }
    void write(const data_type data, const codasip_address_t addr)
    {
        dwrite(data, addr);
    }
    void write(const data_type data,
        const codasip_address_t addr,
        const Index bi,
        const Index bc)
    {
        dwrite(data, addr, bi, bc);
    }
    /**
     * \} \{
     * \brief Return current value of holding variable
     */
    data_type dread()
    {
        m_Re = true;
        return m_Q0;
    }
    data_type dread(const codasip_address_t addr)
    {
        m_CheckRA = true;
        m_Ra = addr;
        return dread();
    }
    data_type dread(const codasip_address_t addr, const Index bi, const Index bc)
    {
        m_CheckA = true; m_A = addr;
        m_CheckBi = true; m_Bi = bi;
        m_CheckBc = true; m_Bc = bc;
        return m_Q0;
    }
    data_type read() {
        return dread();
    }
    data_type read(const codasip_address_t addr)
    {
        return dread(addr);
    }
    data_type read(const codasip_address_t addr, const Index bi, const Index bc)
    {
        return dread(addr, bi, bc);
    }
    /**
     * \} \{
     * \brief Request (read/write) functionality
     */
    StatusUnderlyingType request(const CommandUnderlyingType type,
        const codasip_address_t addr,
        const Index bi = 0,
        const Index bc = _Bpw)
    {
        m_CheckRc = true; m_Rc = static_cast<Command>(type);
        m_CheckA = true; m_A = addr;
        m_CheckBi = true; m_Bi = bi;
        m_CheckBc = true; m_Bc = bc;
        return m_Rs;
    }
    template<typename _DstType>
    ResponseUnderlyingType ifinish(const CommandUnderlyingType,
        _DstType& data)
    {
        data.write(m_Q0);
        return get_ifr();
    }
    ResponseUnderlyingType ofinish(const CommandUnderlyingType,
        const data_type data)
    {
        m_CheckData = true;
        m_D0 = data;
        return get_ofr();
    }
    template<typename _SrcType>
    ResponseUnderlyingType ofinish(const CommandUnderlyingType type,
        _SrcType& data)
    {
        return ofinish( type, data.read() );
    }
    template<typename _DstType>
    ResponseUnderlyingType finish(const CommandUnderlyingType type,
        _DstType& data )
    {
        switch (type)
        {
            case CP_CMD_READ:
            case CP_CMD_INVALIDATE:
            case CP_CMD_INVALIDATE_ALL:
                return ifinish( type, data );
            case CP_CMD_WRITE:
            case CP_CMD_FLUSH:
            case CP_CMD_FLUSH_ALL:
                return ofinish( type, data );
            default:
                return get_ifr();
        }
    }
    template<typename _DstType, typename _SrcType>
    ResponseUnderlyingType finish(const CommandUnderlyingType type,
        _DstType& idata,
        _SrcType& odata)
    {
        ifinish( type, idata );
        ofinish( type, odata );
        return get_fr();
    }
    /**
     * \} \{
     * \brief Cache emulation
     */
    void invalidate(const codasip_address_t addr)
    {
        m_CheckRA = true; m_Ra = addr;
    }
    void flush(const codasip_address_t addr) {
        m_CheckWA = true; m_Wa = addr;
    }
    /**
     * \}
     * \brief Setter request response
     * \param rr Request response (RC_OK, CP_RS_WAIT, ...)
     */
    void set_rs(const StatusUnderlyingType rs) {
        m_Rs = static_cast<Status>(rs);
    }
    void set_ifr(const ResponseUnderlyingType ifr) {
        m_Ifr = static_cast<Response>(ifr);
    }
    void set_ofr(const ResponseUnderlyingType ofr) {
        m_Ofr = static_cast<Response>(ofr);
    }
    void set_fr(const ResponseUnderlyingType fr) {
        m_Fr = static_cast<Response>(fr);
    }
    /**
     *  \{
     *  \brief  Provide getter method for monitoring purposes.
     */
    StatusUnderlyingType get_rs() const { return m_Rs; }
    ResponseUnderlyingType get_ifr() const { return _IsMemoryProtocol ? m_Ifr : get_fr(); }
    ResponseUnderlyingType get_ofr() const { return _IsMemoryProtocol ? m_Ofr : get_fr(); }
    ResponseUnderlyingType get_fr() const { return m_Fr; }
    /**
     * \}
     * \brief Set data which are read in runtime
     * \param data Data
     */
    void set_data(const data_type data)
    {
        m_Q0 = data;
        if ( _AsyncWrite )
        {
            m_D0 = data;
        }
    }
    /**
     * \{
     * \brief Getter of internal attribute
     */
    data_type get_data() const
    {
        return m_D0;
    }
    bool check_data() const
    {
        return m_CheckData;
    }
    //  methods for write ports
    Index  get_we() const
    {
        return m_We;
    }
    codasip_address_t get_wa() const
    {
        return m_Wa;
    }
    bool check_wa() const {
        return m_CheckWA;
    }
    codasip_address_t get_a() const
    {
        return m_A;
    }
    bool check_a() const
    {
        return m_CheckA;
    }
    Index get_bi() const
    {
        return m_Bi;
    }
    bool check_bi() const
    {
        return m_CheckBi;
    }
    Index get_bc() const
    {
        return m_Bc;
    }
    bool check_bc() const
    {
        return m_CheckBc;
    }
    // methods for read ports
    Index  get_re() const
    {
        return m_Re;
    }
    codasip_address_t get_ra() const
    {
        return m_Ra;
    }
    bool check_ra() const
    {
        return m_CheckRA;
    }
    CommandUnderlyingType get_rc() const
    {
        return m_Rc;
    }
    bool check_rc() const
    {
        return m_CheckRc;
    }

    /**
     *  \}
     *  \brief  Always check write enable signal.
     */
    bool check_we() const
    {
        return true;
    }
    /**
     *  \brief  Indicates whether to check read enable signal from register
     *          file. The read enable should not be always checked like
     *          write enable signal because the semantic of ternary operator
     *          in HW is different. For example:
     *  \code
     *  int a = ( cond ) ? b : regs[addr];
     *  \endcode
     *          This situation is handled differently by HW and simulator.
     */
    bool check_re() const
    {
        return m_Re;
    }
    /**
     *  \brief  Clear all stored values.
     */
    void clear()
    {
        m_D0 = 0; m_Q0 = 0;
        m_Rs = CP_ST_BUSY;
        m_Ifr = m_Ofr = m_Fr = CP_RS_IDLE;
        m_We = false;
        m_Wa = 0;
        m_Re = false;
        m_Ra = 0;
        m_A = m_Bi = m_Bc = 0;
        m_Rc = CP_CMD_NONE;
        m_CheckData = false;
        m_CheckWA = m_CheckRA = false;
        m_CheckA = m_CheckBi = m_CheckBc = false;
        m_CheckRc = false;
    }
};

}   // namespace resources
}   // namespace codasip

#endif  // SIMULATORS2_RESOURCES_CSR_FU_FVE_RESOURCE_H_
