/* A Bison parser, made by GNU Bison 2.4.2.  */

/* Skeleton interface for Bison GLR parsers in C
   
      Copyright (C) 2002-2006, 2009-2010 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* "%code requires" blocks.  */

/* Line 2638 of glr.c  */
#line 33 "merged_parser_gen.yy"

#include "loc_options.h"
#ifndef ASM_INSTR_TOKEN_RECOGNIZER
#include "directivehandleriface.h"
#endif



/* Line 2638 of glr.c  */
#line 47 "merged_parser_gen.hpp"

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_STRING = 1001,
     T_ID = 10096,
     T_MACRO_CALL = 10097,
     T_BIN_CONST = 10098,
     T_OCT_CONST = 10099,
     T_DEC_CONST = 10100,
     T_HEX_CONST = 10101,
     T_DOUBLE_CONST = 10102,
     T_MACRO_ARGUMENT_EVALUATOR = 10103,
     T_NEWLINE = 10104,
     T_DOT = 10105,
     T_DELIM = 10106,
     T_LABEL_DELIM = 10107,
     T_OP_NEG = 10108,
     T_OP_BIN_NEG = 10109,
     T_OP_MULT = 10110,
     T_OP_DIV = 10111,
     T_OP_MOD = 10112,
     T_OP_PLUS = 10113,
     T_OP_MINUS = 10114,
     T_OP_LSHIFT = 10115,
     T_OP_RSHIFT = 10116,
     T_OP_BIN_AND = 10117,
     T_OP_BIN_XOR = 10118,
     T_OP_BIN_OR = 10119,
     T_PAR_LEFT = 10120,
     T_PAR_RIGHT = 10121,
     T_AND_ASSIGN = 10122,
     T_ADD_ASSIGN = 10123,
     T_SUB_ASSIGN = 10124,
     T_MUL_ASSIGN = 10125,
     T_DIV_ASSIGN = 10126,
     T_ASSIGN = 10127,
     UMINUS = 10128,
     UPLUS = 10129,
     T_ABS_ORG = 10130,
     T_ADDRESS_SPACE = 10131,
     T_ALIGN = 10132,
     T_BALIGN = 10133,
     T_BALIGNW = 10134,
     T_BALIGNL = 10135,
     T_P2ALIGN = 10136,
     T_P2ALIGNW = 10137,
     T_P2ALIGNL = 10138,
     T_ALTMACRO = 10139,
     T_ALTMACRO_LOCAL = 10140,
     T_ASCII = 10141,
     T_ASCIZ = 10142,
     T_BIT = 10143,
     T_BUNDLE_ALIGN_END = 10144,
     T_BYTE = 10145,
     T_HWORD = 10146,
     T_INT = 10147,
     T_LONG = 10148,
     T_QUAD = 10149,
     T_SHORT = 10150,
     T_WORD = 10151,
     T_HALF = 10152,
     T_DWORD = 10153,
     T_2BYTE = 10154,
     T_4BYTE = 10155,
     T_CFI_STARTPROC = 10156,
     T_CFI_ENDPROC = 10157,
     T_CFI_DEF_CFA = 10158,
     T_CFI_DEF_CFA_REGISTER = 10159,
     T_CFI_DEF_CFA_OFFSET = 10160,
     T_CFI_ADJUST_CFA_OFFSET = 10161,
     T_CFI_OFFSET = 10162,
     T_CFI_VAL_OFFSET = 10163,
     T_CFI_REGISTER = 10164,
     T_CFI_SAME_VALUE = 10165,
     T_CFI_RETURN_COLUMN = 10166,
     T_CODASIP_RETSTRUCT_REG = 10167,
     T_CODASIP_RETVAL_REGS = 10168,
     T_COMM = 10169,
     T_LCOMM = 10170,
     T_DATA = 10171,
     T_TEXT = 10172,
     T_BSS = 10173,
     T_DEBUG_OFF = 10174,
     T_DEBUG_ON = 10175,
     T_DOUBLE = 10176,
     T_FLOAT = 10177,
     T_SINGLE = 10178,
     T_ENDM = 10179,
     T_EQU = 10180,
     T_SET = 10181,
     T_EQUIV = 10182,
     T_EQV = 10183,
     T_ERR = 10184,
     T_ERROR = 10185,
     T_FILE = 10186,
     T_FILL = 10187,
     T_GLOBAL = 10188,
     T_GLOBL = 10189,
     T_IDENT = 10190,
     T_INCBIN = 10191,
     T_LINE = 10192,
     T_LIST = 10193,
     T_LOC = 10194,
     T_LOCAL = 10195,
     T_MACRO = 10196,
     T_NOALTMACRO = 10197,
     T_NOLIST = 10198,
     T_ORG = 10199,
     T_POPSECTION = 10200,
     T_PREVIOUS = 10201,
     T_PROFILER = 10202,
     T_PUSHSECTION = 10203,
     T_SECTION = 10204,
     T_SECTION_ADJUSTABLE = 10205,
     T_ENDIAN_BIG = 10206,
     T_ENDIAN_LITTLE = 10207,
     T_SIZE = 10208,
     T_SKIP = 10209,
     T_SPACE = 10210,
     T_ZERO = 10211,
     T_SLEB128 = 10212,
     T_ULEB128 = 10213,
     T_TYPE = 10214,
     T_WARNING = 10215,
     T_WEAK = 10216,
     YT_X1_ = 10000,
     YT_X2_ = 10001,
     YT_X3_ = 10002,
     YT_X4_ = 10003,
     YT_X5_ = 10004,
     YT_X6_ = 10005,
     YT_X7_ = 10006,
     YT_X8_ = 10007,
     YT_X9_ = 10008,
     YT_X10_ = 10009,
     YT_X11_ = 10010,
     YT_X12_ = 10011,
     YT_X13_ = 10012,
     YT_X14_ = 10013,
     YT_X15_ = 10014,
     YT_X16_ = 10015,
     YT_X17_ = 10016,
     YT_X18_ = 10017,
     YT_X19_ = 10018,
     YT_X20_ = 10019,
     YT_X21_ = 10020,
     YT_X22_ = 10021,
     YT_X23_ = 10022,
     YT_X24_ = 10023,
     YT_X25_ = 10024,
     YT_X26_ = 10025,
     YT_X27_ = 10026,
     YT_X28_ = 10027,
     YT_X29_ = 10028,
     YT_X30_ = 10029,
     YT_X31_ = 10030,
     YT_SLLI_ = 10031,
     YT_SRLI_ = 10032,
     YT_SRAI_ = 10033,
     YT_ADDI_ = 10034,
     YT_SLTI_ = 10035,
     YT_SLTIU_ = 10036,
     YT_ANDI_ = 10037,
     YT_ORI_ = 10038,
     YT_XORI_ = 10039,
     YT_BEQ_ = 10040,
     YT_BNE_ = 10041,
     YT_BLT_ = 10042,
     YT_BLTU_ = 10043,
     YT_BGE_ = 10044,
     YT_BGEU_ = 10045,
     YT_LUI_ = 10046,
     YT_AUIPC_ = 10047,
     YT_LB_ = 10048,
     YT_LH_ = 10049,
     YT_LW_ = 10050,
     YT_LBU_ = 10051,
     YT_LHU_ = 10052,
     YT_SB_ = 10053,
     YT_SH_ = 10054,
     YT_SW_ = 10055,
     YT_ADD_ = 10056,
     YT_SLT_ = 10057,
     YT_SLTU_ = 10058,
     YT_AND_ = 10059,
     YT_OR_ = 10060,
     YT_XOR_ = 10061,
     YT_SLL_ = 10062,
     YT_SRL_ = 10063,
     YT_SUB_ = 10064,
     YT_SRA_ = 10065,
     YT_NOP_ = 10066,
     YT_HALT_ = 10067,
     YT_SYSCALL_ = 10068,
     YT_X0_ = 10069,
     YT_JAL_ = 10070,
     YT_JALR_ = 10071,
     YT_LI_ = 10072,
     YT_MV_ = 10073,
     YT_NOT_ = 10074,
     YT_NEG_ = 10075,
     YT_SEQZ_ = 10076,
     YT_SNEZ_ = 10077,
     YT_SLTZ_ = 10078,
     YT_SGTZ_ = 10079,
     YT_BEQZ_ = 10080,
     YT_BNEZ_ = 10081,
     YT_BLEZ_ = 10082,
     YT_BGEZ_ = 10083,
     YT_BLTZ_ = 10084,
     YT_BGTZ_ = 10085,
     YT_BGT_ = 10086,
     YT_BLE_ = 10087,
     YT_BGTU_ = 10088,
     YT_BLEU_ = 10089,
     YT_J_ = 10090,
     YT_JR_ = 10091,
     YT_RET_ = 10092,
     YT_CALL_ = 10093,
     YT_CALL_0x5f_REG_ = 10094
   };
#endif


#ifndef YYSTYPE
typedef union YYSTYPE
{

/* Line 2638 of glr.c  */
#line 105 "merged_parser_gen.yy"

    std::string* text;
    codasip::assembler::Token* tok;
    codasip::assembler::TokenList* tokList;
    codasip::assembler::TokenNode* tokNode;
    int num;
    bool boolean;
    codasip::assembler::DataDirectiveType datadirtype;
    codasip::assembler::LocOptions* locOptions;
#ifndef ASM_INSTR_TOKEN_RECOGNIZER
    codasip::assembler::SectionFlags* sectionFlags;
#else
    class SectionFlags* sectionFlags;
#endif
    codasip::assembler::SymbolDefinitionOperatorEnum symbolDefinitionOperator;



/* Line 2638 of glr.c  */
#line 301 "merged_parser_gen.hpp"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
#endif

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{

  char yydummy;

} YYLTYPE;
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif



extern YYSTYPE yylval;



