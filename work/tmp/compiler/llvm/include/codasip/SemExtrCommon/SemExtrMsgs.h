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
 *  \brief   Semantics extractor
 *  \author  Adam Husar
 *  \date    Jan 1, 2012
 */

#ifndef __SEMEXTRMSGS_H_
#define __SEMEXTRMSGS_H_

#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
using namespace llvm;
#define OUTPUT errs()
#define SE_LMX_EXIT() do { } while (0)
#define PRINT_INSTR_ELEMS() getInstructionElementsMsg(myGetNameStr(m_pCurrFunc))

// Ids are printed inside the message and point to online help.
// Message text is in code

// semextr message IDs
enum SemExtrMsgID
{
    // SE - Semantics extractor

    // ======= llc-semextr ========

    // errors 800 - 839
    SE800, SE801,

    // warnings 840 - 859

    // internal errors 860 - 889
    SE860,

    // internal warnings 890 - 899

    // internal sanity check (assert)
    SE900
 };

// enable the first line to check that all the message IDS are defined, however warnings are printed for LLVM
inline void _check_id(SemExtrMsgID) {}

#define SEASSERT(cond) do { \
    if (!(cond)) { \
        OUTPUT << "Your architecture is currently not supported (SE900): Check '" << #cond << "' failed. Please contact the Codasip support to resolve this issue.\n"; \
        SE_LMX_EXIT(); exit(-1); \
    } \
    } while (0)

#define SEASSERT_FN(cond) do { \
    if (!(cond)) { \
        SEASSERT(m_pCurrFunc != NULL && "error while printing - function/instruction pointer not set"); \
        OUTPUT << "Instruction " << myGetNameStr(m_pCurrFunc) << " from your architecture is currently not supported (SE900), check '" << #cond << "' failed "\
            << ". Please contact the Codasip support to resolve this issue. You can also try to disable this instruction.\n" << PRINT_INSTR_ELEMS() << "\n"; SE_LMX_EXIT(); exit(-1); \
    } \
    } while (0)

#define SEASSERT_LLCFN(cond) do { \
  if (!(cond)) { \
      OUTPUT << "Instruction " << llc_extr_utils::getCurrentFunctionName() << " from your architecture is currently not supported (SE900), check '" << #cond << "' failed "\
      << ". Please contact the Codasip support to resolve this issue. You can also try to disable this instruction.\n"; exit(-1); \
  } \
  } while (0)

// TODO: add instruction tree printing  -note: this macro is being used in llc extractor -> check before editing
#define SEERROR_LLCFN(id, arg) do { _check_id(id); \
  OUTPUT << "Error (" << #id << ") for instruction " << llc_extr_utils::getCurrentFunctionName() << ": " << arg << "\n" /*<< PRINT_INSTR_ELEMS()*/;  \
  exit(1); \
  } while (0)

#define SE_CHECK_CONDITION_2ARG(cond, msg) do { \
    SEASSERT(m_pCurrFunc != NULL && "Error print - function pointer not set"); \
    CHECK_CONDITION(cond) << msg << "\n" \
    << "Your architecture is currently not supported: Check '" << #cond << "' failed. Please contact the Codasip support to resolve this issue. " \
    << "You can also try to disable this instruction.\n" << PRINT_INSTR_ELEMS() << "\n"; \
    if (!(cond)) { SE_LMX_EXIT(); exit(-1); } \
    } while (0)
#define SE_CHECK_CONDITION(cond) SE_CHECK_CONDITION_2ARG(cond, "")

#define SE_CHECK_CONDITION_NOFUNC_2ARG(cond, msg) do { \
    CHECK_CONDITION(cond) << msg << "\n" \
    << "Your architecture is currently not supported: Check '" << #cond << "' failed. Please contact the Codasip support to resolve this issue.\n"; \
    if (!(cond)) { SE_LMX_EXIT(); exit(-1); } \
    } while (0)
#define SE_CHECK_CONDITION_NOFUNC(cond) SE_CHECK_CONDITION_NOFUNC_2ARG(cond, "")

#define SE_CHECK_NOT_NULL_2ARG(ptr, msg) do { \
    SEASSERT(m_pCurrFunc != NULL && "Error print - function pointer not set"); \
    CHECK_NOT_NULL(ptr) << msg << "\n" \
    << "Your architecture is currently not supported: Check '" << #ptr << " != NULL' failed. Please contact the Codasip support to resolve this issue. " \
    << "You can also try to disable this instruction.\n" << PRINT_INSTR_ELEMS() << "\n"; \
    if ((ptr) == NULL) { SE_LMX_EXIT(); exit(-1); } \
    } while (0)
#define SE_CHECK_NOT_NULL(ptr) SE_CHECK_NOT_NULL_2ARG(ptr, "")

#define SE_CHECK_NOT_NULL_NOFUNC_2ARG(ptr, msg) do { \
    CHECK_NOT_NULL(ptr) << msg << "\n" \
    << "Your architecture is currently not supported: Check '" << #ptr << " != NULL' failed. Please contact the Codasip support to resolve this issue.\n"; \
    if ((ptr) == NULL) { SE_LMX_EXIT(); exit(-1); } \
    } while (0)
#define SE_CHECK_NOT_NULL_NOFUNC(ptr) SE_CHECK_NOT_NULL_NOFUNC_2ARG(ptr, "")

#define SE_THROW_ERROR(msg) do { \
    SEASSERT(m_pCurrFunc != NULL && "Error print - function pointer not set"); \
    THROW_ERROR() << msg << "\n" \
    << "Instruction " << myGetNameStr(m_pCurrFunc) << " from your architecture is currently not supported. " \
    << "Please contact the Codasip support to resolve this issue. " \
    << "You can also try to disable this instruction.\n" << PRINT_INSTR_ELEMS() << "\n"; \
    SE_LMX_EXIT(); exit(-1); \
    } while (0)

#define SE_THROW_ERROR_NOFUNC(msg) do { \
    THROW_ERROR() << msg << "\n" \
    << "Your architecture is currently not supported. Please contact the Codasip support to resolve this issue.\n"; \
    SE_LMX_EXIT(); exit(-1); \
    } while (0)

#define SE_WARNING(id, ...) do { \
    SEASSERT(m_pCurrFunc != NULL && "Error print - function pointer not set"); \
    wrn::id(__VA_ARGS__) << note::ELEMENT_WARNING(myGetNameStr(m_pCurrFunc), PRINT_INSTR_ELEMS()); \
    } while (0)

#define SE_WARNING_NOARG(id) do { \
    SEASSERT(m_pCurrFunc != NULL && "Error print - function pointer not set"); \
    wrn::id() << note::ELEMENT_WARNING(myGetNameStr(m_pCurrFunc), PRINT_INSTR_ELEMS()); \
    } while (0)

#define SE_ERROR(id, ...) do { \
    SEASSERT(m_pCurrFunc != NULL && "error while printing - function/instruction pointer not set"); \
    err::id(__VA_ARGS__) << note::ELEMENT_ERROR(myGetNameStr(m_pCurrFunc), PRINT_INSTR_ELEMS()); \
    exit(1); \
    } while (0)

#define SE_ERROR_NOFUNC(id, ...) do { \
    err::id(__VA_ARGS__); \
    exit(1); \
    } while (0)

#endif /* __SEMEXTRMSGS_H_ */
