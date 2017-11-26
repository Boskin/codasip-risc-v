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
 *  \author Martin Ministr
 *  \date   18. 10. 2016
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef INSTRSET_ASSEMBLER_ASMFIXEDL_ASM_SYMBOL_TABLE_H_
#define INSTRSET_ASSEMBLER_ASMFIXEDL_ASM_SYMBOL_TABLE_H_

#include <map>
#include <string>

#include "asmsymbol.h"


namespace codasip {
namespace assembler {


////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *  \brief This class serves as symbol table for symbols in assembler. Is used by these classes:
 *
 *         First pass:
 *             DirectiveHandlerUnit to define new symbols that were defined as labels or
 *                 using directives like .comm, .equiv or .global.
 *             ExprHandlingUnit to retrieve information about symbols used in expressions and
 *                 to create new pseudo symbols that substitute expressions. (not supported now)
 *
 *         Second pass:
 *             ObjFileTransfUnit to retrieve information for final object file generation.
 *                 Also to resolve fixups. (not supported now)
 */
class AsmSymbolTable
{
public:
    /// local symbols are scoped across whole input file
    typedef std::multimap<int, AsmSymbol*> LocalSymbols;

    /**
     * \brief Frees all contained assembler symbols.
     */
    ~AsmSymbolTable();

    /**
     *  \brief Declares new symbol in this symbol table.
     *         Declared symbol is represented by a AsmSymbol class object that has undefined
     *         expression value.
     *
     *         Fails if symbol with same name is already present.
     *
     *         Declared (or in meaning of object file undefined) symbol can be
     *         determined its method IsDefined.
     *
     *  \return Newly created symbol, owner of this symbol is this symbol table.
     */
    AsmSymbol& DeclareSymbol(const Location& location, const std::string& name,
        const bool isGlobal = false);
    /**
     *  \brief Defines new symbol with its expression value in this symbol table.
     *         Symbol with same name could have been already declared, in this case sets its symbol
     *         expression.
     *
     *         Also a check for recursive definition of this symbol is performed.
     *         (symbol must not be recursively defined)
     *
     *         Prints error message if symbol with same name was already defined.
     *
     *         Symbols visibility is set to non-global by default (its m_IsGlobal member is false).
     *         If symbol with same name was already declared, its global visibility property is
     *         inherited.
     *
     *         Created symbol becomes owner of its expression m_SymbolExpression.
     *
     *  \return Newly created symbol, owner of this symbol is this symbol table.
     *          Is symbol with same name was already defined, returns pointer to symbol with name.
     */
    AsmSymbol& DefineSymbol(const Location& location, const std::string& name,
        ExprElemBase* symbolExpression, const bool isPseudoSymbol = false);
    /**
     * \brief Tries to find symbol with name. If such a symbol is found,
     *        pointer to this symbol is returned. If symbol is not found, returns NULL.
     * \param[in] name
     * \param[in] findLocalSymbol sometimes it is not desired to lookup for local symbol
     *                            they could have multiple definition and are not global.
     * \param[in] fromParser does bison read whole line?
     */
    AsmSymbol* Find(const std::string& name, const bool findLocalSymbol = false,
        const bool fromParser = false);
    /**
     * \brief Adds local symbol to symbol table. It is called only as helper for local symbols.
     * \param[in] symbol local symbol
     */
    void AddLocalSymbolToTable(AsmSymbol& symbol);
    /**
     * \brief Get best corresponding local symbol that matches local symbol index
     *        and is closest to the given line.
     * \param[in] relocationLine
     * \param[in] localSymbolIndex
     * \param[in] forward
     */
    AsmSymbol& GetCorrespondingLocalSymbol(const size_t relocationLine, const int localSymbolIndex,
        const bool forward);
    /**
     *  \brief Renames symbol
     *  \param[in] oldName old name
     *  \param[in] newName new name
     */
    void RenameSymbol(const std::string& oldName, const std::string& newName);
    /**
     *  \brief Returns count of symbols stored in assembler symbol table.
     */
    int Count() const;
    /**
     *  \brief Returns symbol with given index. Fails if index is out of range.
     */
    AsmSymbol& GetSymbol(const int index);

    /**
     *  \brief Prints debug information about section parameters and contents into output file.
     */
    void DebugPrint(FILE* fout) const;

private:
    void AddToTable(AsmSymbol& symbol);
    bool CheckRecurSymbolDef(const std::string& name, const ExprElemBase& expression);

    const LocalSymbols& GetLocalSymbols() const;

    /**
     *  \brief This map contains pointers to all symbols that are contained in symbol table.
     *         Is used for fast searching for symbol by its name. Is NOT an owner of contained
     *         symbol instances (unlike m_arrSymbols).
     */
    std::map<std::string, AsmSymbol*> m_MapSymbols;
    /**
     *  \brief This map contains pointers to all symbols that are contained in symbol table.
     *         Is used to store symbol pointers and for indexed access.
     *         Is owner of contained objects.
     */
    std::vector<AsmSymbol*> m_ArrSymbols;

    /// local symbols
    LocalSymbols m_LocalSymbols;
};


}
}


#endif  // INSTRSET_ASSEMBLER_ASMFIXEDL_ASM_SYMBOL_TABLE_H_
