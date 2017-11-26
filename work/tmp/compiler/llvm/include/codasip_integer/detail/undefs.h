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
 *  \author Potesil Josef
 *  \date   22. 2. 2016
 *  \brief  Remove all macro definitions common to \ref CODASIP_INT.
 */

#ifndef INC_CODASIP_INTEGER_DETAIL_UNDEFS_H_
#define INC_CODASIP_INTEGER_DETAIL_UNDEFS_H_

#ifdef _CODASIP_INT_INLINE
#undef _CODASIP_INT_INLINE
#endif

#ifdef _CODASIP_INT_ENABLE_IF
#undef _CODASIP_INT_ENABLE_IF
#endif

#ifdef _CODASIP_INT_INTEGRAL_CND
#undef _CODASIP_INT_INTEGRAL_CND
#endif

#ifdef _CODASIP_INT_ENABLE_IF_POD
#undef _CODASIP_INT_ENABLE_IF_POD
#endif

#ifdef _CODASIP_INT_VECTOR_ASSERTIONS
#undef _CODASIP_INT_VECTOR_ASSERTIONS
#endif

#ifdef _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS
#undef _CODASIP_INT_VECTOR_SCALAR_ASSERTIONS
#endif

#endif // INC_CODASIP_INTEGER_DETAIL_UNDEFS_H_
