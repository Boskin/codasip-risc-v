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
 * @file	codasip_windows.h
 * @brief	Header file for single point of windows.h inclusion
 * @author	Hons Petr
 * @date	7.7.2014
 */

#ifndef CODASIP_WINDOWS_H_
#define CODASIP_WINDOWS_H_

#ifdef _WIN32

#include "compiler.h"

// include only from this place, so we can undefine not needed macros
// that are causing problems in rest of Codasip Framework
#ifdef _MSC_VER
#define NOMINMAX		// remove MIN and MAX define in windows.h
#endif

#ifdef _MINGW
#undef WINVER
#undef _WIN32_WINNT
#define WINVER 0x0601       // windows7
#define _WIN32_WINNT 0x0601 // windows7
#endif

#include <windows.h>

#undef NOMINMAX
#undef GetClassName
#undef SendMessage
#undef GetMessage
#undef FindResource
#undef interface	// Used only by COM, not needed
#undef CreateDirectory
#undef CopyFile
#undef Yield
#undef ERROR
#undef PURE
#undef AddPort
#undef INTERFACE
#undef CONST
#undef UNALIGNED
#undef IN
#undef TRUE
#undef FALSE
#undef EVENT_MAX
#undef OUT
#undef OPTIONAL
#undef VOID

#endif /* _WIN32 */

#endif /* CODASIP_WINDOWS_H_ */
