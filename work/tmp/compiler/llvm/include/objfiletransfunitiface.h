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
 *  \author Martin Ministr
 *  \date   19. 1. 2015
 *  \brief  Declaration of the class.
 */

#ifndef OBJFILETRANSFUNITIFACE_H_
#define OBJFILETRANSFUNITIFACE_H_

#include <string>


namespace codasip {
namespace assembler {


class ObjFileTransfUnitIface
{
public:
    static void TransformTablesToObjFile(const std::string& objectFileName);
};


}   // codasip::assembler
}   // codasip

#endif  // OBJFILETRANSFUNITIFACE_H_
