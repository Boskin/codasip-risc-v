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
 *  \author Petr Hons
 *  \date   26. 11. 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef _UNWINDER_WRAPPER_H_
#define _UNWINDER_WRAPPER_H_

#include <vector>
#include "simulator_private.h"

namespace codasip {
namespace objfile {
class ObjectFile;
}
namespace debugger {
class DebugInfo;
class Unwinder;


/**
 * \class UnwinderWrapper
 * \brief This class is simplified wrapper of Unwinder for C callstack unwinding in profiler.
 *        It enables reusing debugger unwinder object if debugger is present.
 */
class UnwinderWrapper
{
public:
    /// Container for callstack storage, lower index is younger frame. 0th frame is current frame.
    typedef std::vector<codasip_address_t> Callstack;

    /**
     *  \brief  Constructor.
     */
    UnwinderWrapper();
    /**
     *  \brief  Destructor.
     */
    ~UnwinderWrapper();

    /**
     *  \brief  Used from simulator without debugger. Load debugging information from given object
     *          file. The object of loaded executable must be valid for entire simulation.
     *  \param  objectFile Loaded executable. This object cannot be deleted after this method ends,
     *          its needed for entire simulation.
     *  \param  sim Simulator information, mostly used for register name mapping to DWARF number
     *  \throw  Throws on error during debug info parsing
     */
    void LoadDebugInfo(const objfile::ObjectFile& objectFile,
        simulator::SimulatorPrivateInterface& sim);
    /**
     *  \brief  Used from debugger. Store already present unwinder object into wrapper. This object
     *          won't be deleted when this wrapper ends
     */
    void SetUnwinder(Unwinder*);
    /**
     *  \brief  Unwind current callstack and store it into given container
     *  \param[out] callstack Container that will be filled with current call stack (program counter
     *          values of each frame).
     */
    void Unwind(Callstack& callstack);

private:
    /// Reset internal variables
    void Reset();

    Unwinder* m_Unwinder;
    DebugInfo* m_DebugInfo;
};

}   // namespace codasip::debugger
}   // namespace codasip

#endif  // _UNWINDER_WRAPPER_H_
