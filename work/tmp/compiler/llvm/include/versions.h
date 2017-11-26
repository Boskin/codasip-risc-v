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
 *  \author Zdenek Prikryl
 *  \date   6.4.2011
 *  \brief  Versions
 */

#ifndef VERSIONS_H_
#define VERSIONS_H_

#include <string>

static const std::string XML_CODAL_VERSION = "3.5.2";
static const std::string XML_COMPONENT_VERSION = "3.4.0";
/// backward compatibility for older component XML
static const std::string XML_COMPONENT_VERSION_COMPATIBILITY = "3.3.0";
static const std::string CGIR_VERSION = "2.0.0";

#ifdef CODASIP_FRAMEWORK_RELEASE_VERSION
    static const std::string CODASIP_FRAMEWORK_VERSION = CODASIP_FRAMEWORK_RELEASE_VERSION;
#else
    static const std::string CODASIP_FRAMEWORK_VERSION = "99.99.99.internal";
#endif

static const std::string GENTOOL_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string LINKER_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string CODALC_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string PLATFORMC_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string MW_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string CMDLINE_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string GENINSTRMAN_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string RANDOMGEN_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string ASM_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string DSM_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string PROFILER_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string ISIM_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string QEMUGEN_VERSION = CODASIP_FRAMEWORK_VERSION;
/// Used by the parser of cgirparser.
static const std::string ARCHIVER_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string DEARCHIVER_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string BINTRAN_VERSION = CODASIP_FRAMEWORK_VERSION;

static const std::string SEMEXTR_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string BACKENDGEN_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string BUILTINGEN_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string CGIRPRINTER_VERSION = CODASIP_FRAMEWORK_VERSION;
static const std::string SYNTAXGEN_VERSION = CODASIP_FRAMEWORK_VERSION;

#endif /* VERSIONS_H_ */
