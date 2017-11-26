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
 *  \author Martin Ministr
 *  \date   11. 8. 2015
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef COMPILERDEV_SEMEXTRCOMMON_H_
#define COMPILERDEV_SEMEXTRCOMMON_H_

#define LLVM_NO_EXCEPTIONS

#include "utility/codasip_log.h"
#include "utility/stringutils.h"
#include "semextr/defines.h"
#include "codasip/SemExtrCommon/SemExtrMsgs.h"
#include "semextr/semextrcommonl/semextrcommon.h"
//#include "semextr/semextr_messagesl/message_printer.h"
#include "messagesl/include/semextr_err_messages.h"
#include "messagesl/include/semextr_wrn_messages.h"
#include "messagesl/include/semextr_note_messages.h"

using namespace codasip::semextr;
using namespace codasip::logging;

#endif  // COMPILERDEV_SEMEXTRCOMMON_H_
