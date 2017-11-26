#define native_int8  char
#define native_int16 short
#define native_int32 long
#define native_int64 long long
#define __regopindex_type int __attribute__((bit_width(32)))
__regopindex_type codasip_regopindex(int, int) __attribute__((const));
#define bool _Bool
typedef int int12 __attribute__((bit_width(12)));
typedef int int13 __attribute__((bit_width(13)));
typedef signed native_int16 int16;
typedef int int21 __attribute__((bit_width(21)));
typedef signed native_int32 int32;
typedef int int5 __attribute__((bit_width(5)));
typedef int int7 __attribute__((bit_width(7)));
typedef signed native_int8 int8;
typedef unsigned int uint1 __attribute__((bit_width(1)));
typedef unsigned int uint10 __attribute__((bit_width(10)));
typedef unsigned int uint104 __attribute__((bit_width(104)));
typedef unsigned int uint112 __attribute__((bit_width(112)));
typedef unsigned int uint120 __attribute__((bit_width(120)));
typedef unsigned int uint128 __attribute__((bit_width(128)));
typedef unsigned native_int16 uint16;
typedef unsigned int uint17 __attribute__((bit_width(17)));
typedef unsigned int uint2 __attribute__((bit_width(2)));
typedef unsigned int uint20 __attribute__((bit_width(20)));
typedef unsigned int uint24 __attribute__((bit_width(24)));
typedef unsigned int uint3 __attribute__((bit_width(3)));
typedef unsigned native_int32 uint32;
typedef unsigned int uint40 __attribute__((bit_width(40)));
typedef unsigned int uint48 __attribute__((bit_width(48)));
typedef unsigned int uint5 __attribute__((bit_width(5)));
typedef unsigned int uint56 __attribute__((bit_width(56)));
typedef unsigned native_int64 uint64;
typedef unsigned int uint7 __attribute__((bit_width(7)));
typedef unsigned int uint72 __attribute__((bit_width(72)));
typedef unsigned native_int8 uint8;
typedef unsigned int uint80 __attribute__((bit_width(80)));
typedef unsigned int uint88 __attribute__((bit_width(88)));
typedef unsigned int uint96 __attribute__((bit_width(96)));
void _codasip_assert_function(uint1 condition, const char text[], const char file[], int line);
#ifndef codasip_assert
#define codasip_assert(condition, ...) if (condition); else _codasip_assert_function((condition), #condition, __FILE__, __LINE__);
#endif
void _codasip_error_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_error
#define codasip_error(verbosity, text, ...) _codasip_error_function((verbosity), text, __FILE__, __LINE__);
#endif
void _codasip_fatal_function(int exit_code, const char text[], const char file[], int line);
#ifndef codasip_fatal
#define codasip_fatal(exit_code, text, ...) _codasip_fatal_function((exit_code), text, __FILE__, __LINE__);
#endif
void _codasip_warning_function(int verbosity, const char text[], const char file[], int line);
#ifndef codasip_warning
#define codasip_warning(verbosity, text, ...) _codasip_warning_function((verbosity), text, __FILE__, __LINE__);
#endif
int12 codasip_immread_int12(int32) __attribute__((const));
int13 codasip_immread_int13(int32) __attribute__((const));
int21 codasip_immread_int21(int32) __attribute__((const));
int32 __attribute__((const)) codasip_syscall(uint64 arguments_address);
uint20 codasip_immread_uint20(int32) __attribute__((const));
uint32 codasip_immread_uint32(int32) __attribute__((const));
uint5 codasip_immread_uint5(int32) __attribute__((const));
void codasip_compiler_schedule_class(int32 index);
void codasip_compiler_undefined();
void codasip_compiler_unused();
void codasip_halt();
void codasip_nop();
volatile uint32 if_code__[2048];
volatile uint8 if_code__sb1__[2048];
volatile uint16 if_code__sb2__[2048];
volatile uint24 if_code__sb3__[2048];
volatile uint32 if_code__sb4__[2048];
volatile uint40 if_code__sb5__[2048];
volatile uint48 if_code__sb6__[2048];
volatile uint56 if_code__sb7__[2048];
volatile uint64 if_code__sb8__[2048];
volatile uint72 if_code__sb9__[2048];
volatile uint80 if_code__sb10__[2048];
volatile uint88 if_code__sb11__[2048];
volatile uint96 if_code__sb12__[2048];
volatile uint104 if_code__sb13__[2048];
volatile uint112 if_code__sb14__[2048];
volatile uint120 if_code__sb15__[2048];
volatile uint128 if_code__sb16__[2048];
volatile uint32 if_data__[2048];
volatile uint8 if_data__sb1__[2048];
volatile uint16 if_data__sb2__[2048];
volatile uint24 if_data__sb3__[2048];
volatile uint32 if_data__sb4__[2048];
volatile uint40 if_data__sb5__[2048];
volatile uint48 if_data__sb6__[2048];
volatile uint56 if_data__sb7__[2048];
volatile uint64 if_data__sb8__[2048];
volatile uint72 if_data__sb9__[2048];
volatile uint80 if_data__sb10__[2048];
volatile uint88 if_data__sb11__[2048];
volatile uint96 if_data__sb12__[2048];
volatile uint104 if_data__sb13__[2048];
volatile uint112 if_data__sb14__[2048];
volatile uint120 if_data__sb15__[2048];
volatile uint128 if_data__sb16__[2048];
volatile uint32 r_pc;
volatile uint32 rf_xpr[32];
int32 sc_load;
uint32 MI11rf_xpr_read(const uint5 MI5indexIH1_11rf_xpr_read);
void MI12rf_xpr_write(const uint32 MI3valIH1_12rf_xpr_write, const uint5 MI5indexIH1_12rf_xpr_write);
void MI6set_pc(const uint32 MI3valIH1_6set_pc);
uint32 MI3alu(const uint32 MI3opcIH1_3alu, const uint32 MI4src1IH1_3alu, const uint32 MI4src2IH1_3alu);
uint32 MI4load(const uint3 MI6funct3IH1_4load, const uint32 MI7addressIH1_4load);
void MI5store(const uint3 MI6funct3IH1_5store, const uint32 MI7addressIH1_5store, const uint32 MI6resultIH1_5store);
uint32 MI12if_data_read(const uint32 MI7addressIH1_12if_data_read, const uint32 MI12num_of_bytesIH1_12if_data_read);
void MI13if_data_write(const uint32 MI6resultIH1_13if_data_write, const uint32 MI7addressIH1_13if_data_write, const uint32 MI12num_of_bytesIH1_13if_data_write);
uint32 MI11rf_xpr_read(const uint5 MI5indexIH1_11rf_xpr_read)
{

#line 31 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
if ((MI5indexIH1_11rf_xpr_read == (int32)0L))
{
    return (int32)0L;
}
#line 32 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
else 
{
    return rf_xpr[MI5indexIH1_11rf_xpr_read];
}


}
void MI12rf_xpr_write(const uint32 MI3valIH1_12rf_xpr_write, const uint5 MI5indexIH1_12rf_xpr_write)
{

#line 37 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
if ((MI5indexIH1_12rf_xpr_write == (int32)0L))
{
    return;
}
#line 38 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
else 
{
    rf_xpr[MI5indexIH1_12rf_xpr_write] = MI3valIH1_12rf_xpr_write;
}


#line 39 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
;


}
void MI6set_pc(const uint32 MI3valIH1_6set_pc)
{

#line 49 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
r_pc = MI3valIH1_6set_pc;


#line 50 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
;


}
uint32 MI3alu(const uint32 MI3opcIH1_3alu, const uint32 MI4src1IH1_3alu, const uint32 MI4src2IH1_3alu)
{
uint32 MI6resultIH1_3aluB0;


#line 61 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI3opcIH1_3alu)
{
    #line 63 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)55UL:
    #line 64 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)23UL:
    #line 65 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)19UL:
    #line 66 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)51UL:
    {
        #line 67 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu + MI4src2IH1_3alu);
        #line 68 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 69 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)275UL:
    #line 70 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)307UL:
    {
        #line 71 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if (((int32)(MI4src1IH1_3alu) < (int32)(MI4src2IH1_3alu)))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        #line 72 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 73 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 74 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)403UL:
    #line 75 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)435UL:
    {
        #line 76 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if ((MI4src1IH1_3alu < MI4src2IH1_3alu))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        #line 77 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 78 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 79 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)915UL:
    #line 80 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)947UL:
    {
        #line 81 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu & MI4src2IH1_3alu);
        #line 82 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 83 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)787UL:
    #line 84 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)819UL:
    {
        #line 85 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu | MI4src2IH1_3alu);
        #line 86 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 87 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)531UL:
    #line 88 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)563UL:
    {
        #line 89 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu ^ MI4src2IH1_3alu);
        #line 90 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 91 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)147UL:
    #line 92 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)179UL:
    {
        #line 93 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu << (uint5)(MI4src2IH1_3alu));
        #line 94 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 95 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)659UL:
    #line 96 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)691UL:
    {
        #line 97 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu >> (int5)(MI4src2IH1_3alu));
        #line 98 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 99 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)32819UL:
    {
        #line 100 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (MI4src1IH1_3alu - MI4src2IH1_3alu);
        #line 101 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 102 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)33427UL:
    #line 103 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)33459UL:
    {
        #line 104 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = ((int32)(MI4src1IH1_3alu) >> (uint5)(MI4src2IH1_3alu));
        #line 105 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 106 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)99UL:
    {
        #line 107 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if ((MI4src1IH1_3alu == MI4src2IH1_3alu))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 108 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 109 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)227UL:
    {
        #line 110 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if ((MI4src1IH1_3alu != MI4src2IH1_3alu))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 111 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 112 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)611UL:
    {
        #line 113 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if (((int32)(MI4src1IH1_3alu) < (int32)(MI4src2IH1_3alu)))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 114 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 115 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)867UL:
    {
        #line 116 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if ((MI4src1IH1_3alu < MI4src2IH1_3alu))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 117 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 118 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)739UL:
    {
        #line 119 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if (((int32)(MI4src1IH1_3alu) >= (int32)(MI4src2IH1_3alu)))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 120 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 121 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)995UL:
    {
        #line 122 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if ((MI4src1IH1_3alu >= MI4src2IH1_3alu))
        {
            MI6resultIH1_3aluB0 = (int32)1L;
        }
        else 
        {
            MI6resultIH1_3aluB0 = (int32)0L;
        }
        #line 123 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 124 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 125 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_3aluB0 = (int32)0L;
        #line 126 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Defualt case: %d\n", MI3opcIH1_3alu);
    }
}


#line 128 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
return MI6resultIH1_3aluB0;


}
uint32 MI4load(const uint3 MI6funct3IH1_4load, const uint32 MI7addressIH1_4load)
{
uint32 MI6resultIH1_4loadB0, MI12num_of_bytesIH1_4loadB0;


#line 139 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI6funct3IH1_4load)
{
    #line 141 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x4):
    #line 142 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x0):
    {
        #line 143 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_4loadB0 = (int32)1L;
        #line 144 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 145 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x5):
    #line 146 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x1):
    {
        #line 147 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_4loadB0 = (int32)2L;
        #line 148 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 149 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x2):
    {
        #line 150 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_4loadB0 = (int32)4L;
        #line 151 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 152 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 153 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_4loadB0 = (int32)0L;
        #line 154 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Default case: %d\n", MI6funct3IH1_4load);
        #line 155 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 158 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI6resultIH1_4loadB0 = MI12if_data_read(MI7addressIH1_4load, MI12num_of_bytesIH1_4loadB0);


#line 160 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI6funct3IH1_4load)
{
    #line 162 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x0):
    {
        #line 163 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        return (int32)((int8)(MI6resultIH1_4loadB0));
    }
    #line 164 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x1):
    {
        #line 165 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        return (int32)((int16)(MI6resultIH1_4loadB0));
    }
    #line 166 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x4):
    #line 167 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x5):
    #line 168 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x2):
    {
        #line 169 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        return MI6resultIH1_4loadB0;
    }
    #line 170 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 171 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Default case: %d\n", MI6funct3IH1_4load);
        #line 172 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        return (int32)0L;
    }
}


}
void MI5store(const uint3 MI6funct3IH1_5store, const uint32 MI7addressIH1_5store, const uint32 MI6resultIH1_5store)
{
uint32 MI12num_of_bytesIH1_5storeB0;


#line 184 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI6funct3IH1_5store)
{
    #line 186 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x0):
    {
        #line 187 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_5storeB0 = (int32)1L;
        #line 188 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 189 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x1):
    {
        #line 190 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_5storeB0 = (int32)2L;
        #line 191 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 192 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint3)(0x2):
    {
        #line 193 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_5storeB0 = (int32)4L;
        #line 194 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 195 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 196 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI12num_of_bytesIH1_5storeB0 = (int32)0L;
        #line 197 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Default case: %d\n", MI6funct3IH1_5store);
        #line 198 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 201 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI13if_data_write(MI6resultIH1_5store, MI7addressIH1_5store, MI12num_of_bytesIH1_5storeB0);


}
uint32 MI12if_data_read(const uint32 MI7addressIH1_12if_data_read, const uint32 MI12num_of_bytesIH1_12if_data_read)
{
uint32 MI15aligned_addressIH1_12if_data_readB0, MI11byte_offsetIH1_12if_data_readB0;

uint32 MI6resultIH1_12if_data_readB0;


#line 218 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI15aligned_addressIH1_12if_data_readB0 = (MI7addressIH1_12if_data_read & (uint32)4294967292UL);


#line 219 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI11byte_offsetIH1_12if_data_readB0 = (MI7addressIH1_12if_data_read & (uint32)3UL);


#line 221 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI12num_of_bytesIH1_12if_data_read)
{
    #line 223 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)1UL:
    {
        #line 224 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_12if_data_readB0 = if_data__sb1__[(MI15aligned_addressIH1_12if_data_readB0 + MI11byte_offsetIH1_12if_data_readB0)];
        #line 225 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 226 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)2UL:
    {
        #line 227 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_12if_data_readB0 = if_data__sb2__[(MI15aligned_addressIH1_12if_data_readB0 + MI11byte_offsetIH1_12if_data_readB0)];
        #line 228 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 229 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)4UL:
    {
        #line 230 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_12if_data_readB0 = if_data__sb4__[(MI15aligned_addressIH1_12if_data_readB0 + MI11byte_offsetIH1_12if_data_readB0)];
        #line 231 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 232 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 233 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        MI6resultIH1_12if_data_readB0 = (int32)0L;
        #line 234 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Default case:  %d\n", (int32)0L);
        #line 235 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 238 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
;


#line 241 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
return MI6resultIH1_12if_data_readB0;


}
void MI13if_data_write(const uint32 MI6resultIH1_13if_data_write, const uint32 MI7addressIH1_13if_data_write, const uint32 MI12num_of_bytesIH1_13if_data_write)
{
uint32 MI15aligned_addressIH1_13if_data_writeB0, MI11byte_offsetIH1_13if_data_writeB0;


#line 252 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI15aligned_addressIH1_13if_data_writeB0 = (MI7addressIH1_13if_data_write & (uint32)4294967292UL);


#line 253 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
MI11byte_offsetIH1_13if_data_writeB0 = (MI7addressIH1_13if_data_write & (uint32)3UL);


#line 255 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
switch (MI12num_of_bytesIH1_13if_data_write)
{
    #line 257 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)1UL:
    {
        #line 258 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if_data__sb1__[(MI15aligned_addressIH1_13if_data_writeB0 + MI11byte_offsetIH1_13if_data_writeB0)] = MI6resultIH1_13if_data_write;
        #line 259 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 260 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)2UL:
    {
        #line 261 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if_data__sb2__[(MI15aligned_addressIH1_13if_data_writeB0 + MI11byte_offsetIH1_13if_data_writeB0)] = MI6resultIH1_13if_data_write;
        #line 262 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 263 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    case (uint32)4UL:
    {
        #line 264 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        if_data__sb4__[(MI15aligned_addressIH1_13if_data_writeB0 + MI11byte_offsetIH1_13if_data_writeB0)] = MI6resultIH1_13if_data_write;
        #line 265 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
    #line 266 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
    default:
    {
        #line 267 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        codasip_assert((bool)(0), "Default case: %d\n", (int32)0L);
        #line 268 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
        break;
    }
}


#line 271 "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal"
;


}


void i_nop_alias__()
{
{
    {
        #line 443 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_nop();
    }
}

}



void i_halt__opc_halt__()
{
const int32 MI8opc_haltIH1_13default_start10_8opc_halt3opc = (uint7)(0x3f); {
{ }
{
    #line 92 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    codasip_halt();
}
}
}



void i_syscall__opc_syscall__()
{
const int32 MI11opc_syscallIH1_13default_start14_11opc_syscall3opc = (uint7)(0x5f); {
{ }
{
    {
        #line 111 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_unused();
    }
    #line 115 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    codasip_syscall(MI11rf_xpr_read((int32)6L));
}
}
}



void i_alu__opc_add__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_add__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x33); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_slt__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x133); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sltu__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x1b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_and__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x3b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_or__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x333); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_xor__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x233); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sll__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0xb3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_srl__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x2b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sub__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x8033); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__x_0__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__x_0__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__x_0__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__x_0__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__xpr__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__xpr__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__xpr__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu__opc_sra__xpr__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 2); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_aluIH1_13default_start9_7opc_alu3opc = (uint17)(0x82b3); {
{ }
{
    uint32 MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0, MI6resultIH1_13default_start1_5i_aluB0;
    #line 163 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 164 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_5i_aluB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 166 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_5i_aluB0 = MI3alu(MI7opc_aluIH1_13default_start9_7opc_alu3opc, MI4src1IH1_13default_start1_5i_aluB0, MI4src2IH1_13default_start1_5i_aluB0);
    #line 169 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_5i_aluB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_slli__x_0__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x93); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_slli__x_0__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x93); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_slli__xpr__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x93); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_slli__xpr__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x93); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srli__x_0__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srli__x_0__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srli__xpr__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srli__xpr__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srai__x_0__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x8293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srai__x_0__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x8293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srai__xpr__x_0__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x8293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_shift__opc_srai__xpr__xpr__shamt__()
{
const uint5 MI5shamtIH1_13default_start7_5shamt5shamt = codasip_immread_uint5(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_shiftIH1_13default_start11_9opc_shift3opc = (uint17)(0x8293); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0, MI6resultIH1_13default_start1_7i_shiftB0;
    #line 196 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_shiftB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 197 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_shiftB0 = (uint32)(MI5shamtIH1_13default_start7_5shamt5shamt);
    #line 199 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_shiftB0 = MI3alu(MI9opc_shiftIH1_13default_start11_9opc_shift3opc, MI4src1IH1_13default_start1_7i_shiftB0, MI4src2IH1_13default_start1_7i_shiftB0);
    #line 202 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_shiftB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_addi__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x13); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_addi__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x13); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_addi__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x13); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_addi__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x13); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_slti__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x113); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_slti__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x113); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_slti__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x113); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_slti__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x113); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_sltiu__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x193); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_sltiu__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x193); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_sltiu__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x193); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_sltiu__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x193); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_andi__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x393); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_andi__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x393); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_andi__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x393); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_andi__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x393); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_ori__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x313); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_ori__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x313); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_ori__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x313); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_ori__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x313); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_xori__x_0__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x213); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_xori__x_0__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x213); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_xori__xpr__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x213); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_alu_i__opc_xori__xpr__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(2); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc = (uint10)(0x213); {
{ }
{
    uint32 MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0, MI6resultIH1_13default_start1_7i_alu_iB0;
    #line 232 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_7i_alu_iB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 233 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_7i_alu_iB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 235 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_alu_iB0 = MI3alu(MI9opc_alu_iIH1_13default_start11_9opc_alu_i3opc, MI4src1IH1_13default_start1_7i_alu_iB0, MI4src2IH1_13default_start1_7i_alu_iB0);
    #line 237 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_7i_alu_iB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_branch__opc_beq__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x63); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_beq__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x63); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_beq__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x63); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_beq__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x63); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bne__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0xe3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bne__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0xe3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bne__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0xe3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bne__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0xe3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_blt__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x263); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_blt__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x263); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_blt__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x263); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_blt__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x263); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bltu__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x363); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bltu__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x363); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bltu__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x363); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bltu__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x363); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bge__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x2e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bge__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x2e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bge__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x2e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bge__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x2e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bgeu__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x3e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bgeu__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x3e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bgeu__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x3e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_branch__opc_bgeu__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI10opc_branchIH1_13default_start13_10opc_branch3opc = (uint10)(0x3e3); {
{ }
{
    int32 MI6branchIH1_13default_start1_8i_branchB0, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0;
    #line 268 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 269 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_8i_branchB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 271 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6branchIH1_13default_start1_8i_branchB0 = MI3alu(MI10opc_branchIH1_13default_start13_10opc_branch3opc, MI4src1IH1_13default_start1_8i_branchB0, MI4src2IH1_13default_start1_8i_branchB0);
    #line 273 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6branchIH1_13default_start1_8i_branchB0 != (int32)0L))
    {
        #line 276 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}}
}



void i_jal__opc_jal__x_0__rel_addr20__()
{
const int21 MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr = (((codasip_immread_int21(0) - (int21)0)) >> (int21)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI7opc_jalIH1_13default_start9_7opc_jal3opc = (uint7)(0x6f); {
{ }
{
    #line 297 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 299 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(((r_pc + (((int32)(MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr) << (int32)1L))) - (int32)4L));
}
}}}
}



void i_jal__opc_jal__xpr__rel_addr20__()
{
const int21 MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr = (((codasip_immread_int21(1) - (int21)0)) >> (int21)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI7opc_jalIH1_13default_start9_7opc_jal3opc = (uint7)(0x6f); {
{ }
{
    #line 297 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 299 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(((r_pc + (((int32)(MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr) << (int32)1L))) - (int32)4L));
}
}}}
}



void i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr = ((codasip_immread_int12(0) - (int12)0)); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_jalrIH1_13default_start10_8opc_jalr3opc = (uint10)(0x67); {
{ }
{
    uint32 MI12base_addressIH1_13default_start1_6i_jalrB0;
    #line 322 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12base_addressIH1_13default_start1_6i_jalrB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 324 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 326 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc((MI12base_addressIH1_13default_start1_6i_jalrB0 + MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr));
}
}}}}
}



void i_jalr__opc_jalr__x_0__rel_jalr_addr12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr = ((codasip_immread_int12(0) - (int12)0)); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_jalrIH1_13default_start10_8opc_jalr3opc = (uint10)(0x67); {
{ }
{
    uint32 MI12base_addressIH1_13default_start1_6i_jalrB0;
    #line 322 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12base_addressIH1_13default_start1_6i_jalrB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 324 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 326 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc((MI12base_addressIH1_13default_start1_6i_jalrB0 + MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr));
}
}}}}
}



void i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr = ((codasip_immread_int12(1) - (int12)0)); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_jalrIH1_13default_start10_8opc_jalr3opc = (uint10)(0x67); {
{ }
{
    uint32 MI12base_addressIH1_13default_start1_6i_jalrB0;
    #line 322 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12base_addressIH1_13default_start1_6i_jalrB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 324 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 326 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc((MI12base_addressIH1_13default_start1_6i_jalrB0 + MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr));
}
}}}}
}



void i_jalr__opc_jalr__xpr__rel_jalr_addr12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr = ((codasip_immread_int12(1) - (int12)0)); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_jalrIH1_13default_start10_8opc_jalr3opc = (uint10)(0x67); {
{ }
{
    uint32 MI12base_addressIH1_13default_start1_6i_jalrB0;
    #line 322 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12base_addressIH1_13default_start1_6i_jalrB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 324 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
    #line 326 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc((MI12base_addressIH1_13default_start1_6i_jalrB0 + MI15rel_jalr_addr12IH1_13default_start18_15rel_jalr_addr128rel_addr));
}
}}}}
}



void i_upper_imm__opc_lui__x_0__simm20__()
{
const uint20 MI6simm20IH1_13default_start8_6simm204simm = codasip_immread_uint20(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = (uint7)(0x37); {
{ }
{
    int7 MI10imm_opcodeIH1_13default_start1_11i_upper_immB0;
    int32 MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0, MI6resultIH1_13default_start1_11i_upper_immB0;
    #line 354 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI10imm_opcodeIH1_13default_start1_11i_upper_immB0 = ((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L)));
    #line 355 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5imm32IH1_13default_start1_11i_upper_immB0 = ((uint32)(MI6simm20IH1_13default_start8_6simm204simm) << (int32)12L);
    #line 357 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L))) == (uint7)(0x37)))
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (int32)0L;
    }
    #line 358 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (r_pc - (int32)4L);
    }
    #line 360 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_upper_immB0 = MI3alu(MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc, MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0);
    #line 362 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_upper_immB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}
}



void i_upper_imm__opc_lui__xpr__simm20__()
{
const uint20 MI6simm20IH1_13default_start8_6simm204simm = codasip_immread_uint20(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = (uint7)(0x37); {
{ }
{
    int7 MI10imm_opcodeIH1_13default_start1_11i_upper_immB0;
    int32 MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0, MI6resultIH1_13default_start1_11i_upper_immB0;
    #line 354 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI10imm_opcodeIH1_13default_start1_11i_upper_immB0 = ((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L)));
    #line 355 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5imm32IH1_13default_start1_11i_upper_immB0 = ((uint32)(MI6simm20IH1_13default_start8_6simm204simm) << (int32)12L);
    #line 357 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L))) == (uint7)(0x37)))
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (int32)0L;
    }
    #line 358 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (r_pc - (int32)4L);
    }
    #line 360 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_upper_immB0 = MI3alu(MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc, MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0);
    #line 362 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_upper_immB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}
}



void i_upper_imm__opc_auipc__x_0__simm20__()
{
const uint20 MI6simm20IH1_13default_start8_6simm204simm = codasip_immread_uint20(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = (uint7)(0x17); {
{ }
{
    int7 MI10imm_opcodeIH1_13default_start1_11i_upper_immB0;
    int32 MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0, MI6resultIH1_13default_start1_11i_upper_immB0;
    #line 354 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI10imm_opcodeIH1_13default_start1_11i_upper_immB0 = ((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L)));
    #line 355 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5imm32IH1_13default_start1_11i_upper_immB0 = ((uint32)(MI6simm20IH1_13default_start8_6simm204simm) << (int32)12L);
    #line 357 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L))) == (uint7)(0x37)))
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (int32)0L;
    }
    #line 358 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (r_pc - (int32)4L);
    }
    #line 360 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_upper_immB0 = MI3alu(MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc, MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0);
    #line 362 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_upper_immB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}
}



void i_upper_imm__opc_auipc__xpr__simm20__()
{
const uint20 MI6simm20IH1_13default_start8_6simm204simm = codasip_immread_uint20(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc = (uint7)(0x17); {
{ }
{
    int7 MI10imm_opcodeIH1_13default_start1_11i_upper_immB0;
    int32 MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0, MI6resultIH1_13default_start1_11i_upper_immB0;
    #line 354 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI10imm_opcodeIH1_13default_start1_11i_upper_immB0 = ((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L)));
    #line 355 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5imm32IH1_13default_start1_11i_upper_immB0 = ((uint32)(MI6simm20IH1_13default_start8_6simm204simm) << (int32)12L);
    #line 357 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((((uint7)((MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc >> (int32)0L))) == (uint7)(0x37)))
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (int32)0L;
    }
    #line 358 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI4src1IH1_13default_start1_11i_upper_immB0 = (r_pc - (int32)4L);
    }
    #line 360 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_upper_immB0 = MI3alu(MI13opc_upper_immIH1_13default_start16_13opc_upper_imm3opc, MI4src1IH1_13default_start1_11i_upper_immB0, MI5imm32IH1_13default_start1_11i_upper_immB0);
    #line 362 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_upper_immB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}
}



void i_load__opc_lb__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lb__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lb__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lb__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lh__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x83); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lh__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x83); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lh__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x83); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lh__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x83); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lw__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x103); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lw__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x103); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lw__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x103); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lw__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x103); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lbu__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x203); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lbu__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x203); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lbu__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x203); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lbu__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x203); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lhu__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x283); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lhu__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x283); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lhu__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x283); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_load__opc_lhu__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
const int32 MI8opc_loadIH1_13default_start10_8opc_load3opc = (uint10)(0x283); {
{ }
{
    uint32 MI7addressIH1_13default_start1_6i_loadB0, MI6resultIH1_13default_start1_6i_loadB0;
    {
        #line 393 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
        codasip_compiler_schedule_class(sc_load);
    }
    #line 395 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_6i_loadB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 396 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_6i_loadB0 = MI4load(((uint3)((MI8opc_loadIH1_13default_start10_8opc_load3opc >> (int32)7L))), MI7addressIH1_13default_start1_6i_loadB0);
    #line 397 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_6i_loadB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}}}
}



void i_store__opc_sb__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x23); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sb__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x23); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sb__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x23); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sb__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x23); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sh__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0xa3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sh__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0xa3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sh__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0xa3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sh__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0xa3); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sw__x_0__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x123); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sw__x_0__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x123); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sw__xpr__simm12__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x123); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_store__opc_sw__xpr__simm12__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 2); {
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI9opc_storeIH1_13default_start11_9opc_store3opc = (uint10)(0x123); {
{ }
{
    uint32 MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0;
    #line 425 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI7addressIH1_13default_start1_7i_storeB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) + MI6simm12IH1_13default_start8_6simm124simm);
    #line 426 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_7i_storeB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 427 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5store(((uint3)((MI9opc_storeIH1_13default_start11_9opc_store3opc >> (int32)7L))), MI7addressIH1_13default_start1_7i_storeB0, MI6resultIH1_13default_start1_7i_storeB0);
}
}}}}
}



void i_li_alias__x_0__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(0); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_10i_li_aliasB0;
    #line 463 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_li_aliasB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 464 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_li_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_li_alias__xpr__simm12__()
{
const int12 MI6simm12IH1_13default_start8_6simm124simm = codasip_immread_int12(1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_10i_li_aliasB0;
    #line 463 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_li_aliasB0 = MI6simm12IH1_13default_start8_6simm124simm;
    #line 464 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_li_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_mv_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_10i_mv_aliasB0;
    #line 484 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_mv_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 485 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_mv_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_mv_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_10i_mv_aliasB0;
    #line 484 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_mv_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 485 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_mv_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_mv_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_10i_mv_aliasB0;
    #line 484 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_mv_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 485 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_mv_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_mv_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_10i_mv_aliasB0;
    #line 484 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_10i_mv_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 485 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_10i_mv_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_not_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 504 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 505 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = ~MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 506 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_not_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_not_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 504 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 505 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = ~MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 506 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_not_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_not_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 504 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 505 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = ~MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 506 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_not_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_not_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 504 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 505 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_not_aliasB0 = ~MI6resultIH1_13default_start1_11i_not_aliasB0;
    #line 506 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_not_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_neg_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_11i_neg_aliasB0;
    #line 526 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 527 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = (~MI6resultIH1_13default_start1_11i_neg_aliasB0 + (int32)1L);
    #line 528 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_neg_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_neg_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_11i_neg_aliasB0;
    #line 526 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 527 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = (~MI6resultIH1_13default_start1_11i_neg_aliasB0 + (int32)1L);
    #line 528 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_neg_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_neg_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_11i_neg_aliasB0;
    #line 526 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 527 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = (~MI6resultIH1_13default_start1_11i_neg_aliasB0 + (int32)1L);
    #line 528 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_neg_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_neg_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_11i_neg_aliasB0;
    #line 526 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 527 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_11i_neg_aliasB0 = (~MI6resultIH1_13default_start1_11i_neg_aliasB0 + (int32)1L);
    #line 528 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_11i_neg_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_seqz_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI5valueIH1_13default_start1_12i_seqz_aliasB0, MI6resultIH1_13default_start1_12i_seqz_aliasB0;
    #line 547 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_seqz_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 548 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_seqz_aliasB0 == (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)1L;
    }
    #line 549 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)0L;
    }
    #line 551 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_seqz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_seqz_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI5valueIH1_13default_start1_12i_seqz_aliasB0, MI6resultIH1_13default_start1_12i_seqz_aliasB0;
    #line 547 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_seqz_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 548 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_seqz_aliasB0 == (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)1L;
    }
    #line 549 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)0L;
    }
    #line 551 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_seqz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_seqz_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI5valueIH1_13default_start1_12i_seqz_aliasB0, MI6resultIH1_13default_start1_12i_seqz_aliasB0;
    #line 547 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_seqz_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 548 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_seqz_aliasB0 == (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)1L;
    }
    #line 549 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)0L;
    }
    #line 551 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_seqz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_seqz_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI5valueIH1_13default_start1_12i_seqz_aliasB0, MI6resultIH1_13default_start1_12i_seqz_aliasB0;
    #line 547 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_seqz_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 548 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_seqz_aliasB0 == (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)1L;
    }
    #line 549 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_seqz_aliasB0 = (int32)0L;
    }
    #line 551 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_seqz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_snez_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI5valueIH1_13default_start1_12i_snez_aliasB0, MI6resultIH1_13default_start1_12i_snez_aliasB0;
    #line 572 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_snez_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 573 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_snez_aliasB0 != (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)1L;
    }
    #line 574 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)0L;
    }
    #line 576 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_snez_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_snez_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI5valueIH1_13default_start1_12i_snez_aliasB0, MI6resultIH1_13default_start1_12i_snez_aliasB0;
    #line 572 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_snez_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 573 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_snez_aliasB0 != (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)1L;
    }
    #line 574 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)0L;
    }
    #line 576 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_snez_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_snez_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI5valueIH1_13default_start1_12i_snez_aliasB0, MI6resultIH1_13default_start1_12i_snez_aliasB0;
    #line 572 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_snez_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 573 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_snez_aliasB0 != (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)1L;
    }
    #line 574 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)0L;
    }
    #line 576 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_snez_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_snez_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI5valueIH1_13default_start1_12i_snez_aliasB0, MI6resultIH1_13default_start1_12i_snez_aliasB0;
    #line 572 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_snez_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 573 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_snez_aliasB0 != (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)1L;
    }
    #line 574 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_snez_aliasB0 = (int32)0L;
    }
    #line 576 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_snez_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sltz_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_12i_sltz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sltz_aliasB0;
    #line 596 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 597 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sltz_aliasB0 < (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)1L;
    }
    #line 598 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)0L;
    }
    #line 600 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sltz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sltz_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_12i_sltz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sltz_aliasB0;
    #line 596 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 597 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sltz_aliasB0 < (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)1L;
    }
    #line 598 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)0L;
    }
    #line 600 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sltz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sltz_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_12i_sltz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sltz_aliasB0;
    #line 596 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 597 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sltz_aliasB0 < (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)1L;
    }
    #line 598 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)0L;
    }
    #line 600 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sltz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sltz_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_12i_sltz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sltz_aliasB0;
    #line 596 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 597 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sltz_aliasB0 < (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)1L;
    }
    #line 598 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sltz_aliasB0 = (int32)0L;
    }
    #line 600 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sltz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sgtz_alias__x_0__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_12i_sgtz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sgtz_aliasB0;
    #line 621 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 622 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sgtz_aliasB0 > (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)1L;
    }
    #line 623 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)0L;
    }
    #line 625 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sgtz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sgtz_alias__x_0__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = (int32)0L; {
{ }
{
    uint32 MI6resultIH1_13default_start1_12i_sgtz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sgtz_aliasB0;
    #line 621 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 622 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sgtz_aliasB0 > (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)1L;
    }
    #line 623 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)0L;
    }
    #line 625 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sgtz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sgtz_alias__xpr__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_12i_sgtz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sgtz_aliasB0;
    #line 621 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 622 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sgtz_aliasB0 > (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)1L;
    }
    #line 623 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)0L;
    }
    #line 625 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sgtz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_sgtz_alias__xpr__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    uint32 MI6resultIH1_13default_start1_12i_sgtz_aliasB0;
    int32 MI5valueIH1_13default_start1_12i_sgtz_aliasB0;
    #line 621 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI5valueIH1_13default_start1_12i_sgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 622 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI5valueIH1_13default_start1_12i_sgtz_aliasB0 > (int32)0L))
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)1L;
    }
    #line 623 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    else 
    {
        MI6resultIH1_13default_start1_12i_sgtz_aliasB0 = (int32)0L;
    }
    #line 625 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(MI6resultIH1_13default_start1_12i_sgtz_aliasB0, MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd);
}
}}
}



void i_beqz_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_beqz_aliasB0;
    #line 672 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_beqz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 673 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_beqz_aliasB0 == (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_beqz_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_beqz_aliasB0;
    #line 672 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_beqz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 673 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_beqz_aliasB0 == (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bnez_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_bnez_aliasB0;
    #line 693 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bnez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 694 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bnez_aliasB0 != (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bnez_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_bnez_aliasB0;
    #line 693 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bnez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 694 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bnez_aliasB0 != (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_blez_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_blez_aliasB0;
    #line 714 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_blez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 715 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_blez_aliasB0 <= (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_blez_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_blez_aliasB0;
    #line 714 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_blez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 715 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_blez_aliasB0 <= (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bgez_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_bgez_aliasB0;
    #line 735 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bgez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 736 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bgez_aliasB0 >= (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bgez_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_bgez_aliasB0;
    #line 735 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bgez_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 736 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bgez_aliasB0 >= (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bltz_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_bltz_aliasB0;
    #line 756 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 757 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bltz_aliasB0 < (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bltz_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_bltz_aliasB0;
    #line 756 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bltz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 757 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bltz_aliasB0 < (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bgtz_alias__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
{
    int32 MI6resultIH1_13default_start1_12i_bgtz_aliasB0;
    #line 777 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 778 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bgtz_aliasB0 > (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bgtz_alias__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
{
    int32 MI6resultIH1_13default_start1_12i_bgtz_aliasB0;
    #line 777 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6resultIH1_13default_start1_12i_bgtz_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 778 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI6resultIH1_13default_start1_12i_bgtz_aliasB0 > (int32)0L))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}
}



void i_bgt_alias__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI4src1IH1_13default_start1_11i_bgt_aliasB0, MI4src2IH1_13default_start1_11i_bgt_aliasB0;
    #line 798 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 799 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 800 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_bgt_aliasB0 > MI4src2IH1_13default_start1_11i_bgt_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgt_alias__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI4src1IH1_13default_start1_11i_bgt_aliasB0, MI4src2IH1_13default_start1_11i_bgt_aliasB0;
    #line 798 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 799 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 800 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_bgt_aliasB0 > MI4src2IH1_13default_start1_11i_bgt_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgt_alias__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI4src1IH1_13default_start1_11i_bgt_aliasB0, MI4src2IH1_13default_start1_11i_bgt_aliasB0;
    #line 798 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 799 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 800 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_bgt_aliasB0 > MI4src2IH1_13default_start1_11i_bgt_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgt_alias__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI4src1IH1_13default_start1_11i_bgt_aliasB0, MI4src2IH1_13default_start1_11i_bgt_aliasB0;
    #line 798 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 799 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_bgt_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 800 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_bgt_aliasB0 > MI4src2IH1_13default_start1_11i_bgt_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_ble_alias__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI4src1IH1_13default_start1_11i_ble_aliasB0, MI4src2IH1_13default_start1_11i_ble_aliasB0;
    #line 820 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 821 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 822 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_ble_aliasB0 <= MI4src2IH1_13default_start1_11i_ble_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_ble_alias__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    int32 MI4src1IH1_13default_start1_11i_ble_aliasB0, MI4src2IH1_13default_start1_11i_ble_aliasB0;
    #line 820 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 821 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 822 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_ble_aliasB0 <= MI4src2IH1_13default_start1_11i_ble_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_ble_alias__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI4src1IH1_13default_start1_11i_ble_aliasB0, MI4src2IH1_13default_start1_11i_ble_aliasB0;
    #line 820 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 821 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 822 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_ble_aliasB0 <= MI4src2IH1_13default_start1_11i_ble_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_ble_alias__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    int32 MI4src1IH1_13default_start1_11i_ble_aliasB0, MI4src2IH1_13default_start1_11i_ble_aliasB0;
    #line 820 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1));
    #line 821 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_11i_ble_aliasB0 = (int32)(MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2));
    #line 822 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_11i_ble_aliasB0 <= MI4src2IH1_13default_start1_11i_ble_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgtu_alias__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI4src1IH1_13default_start1_12i_bgtu_aliasB0, MI4src2IH1_13default_start1_12i_bgtu_aliasB0;
    #line 842 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 843 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 844 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bgtu_aliasB0 > MI4src2IH1_13default_start1_12i_bgtu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgtu_alias__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI4src1IH1_13default_start1_12i_bgtu_aliasB0, MI4src2IH1_13default_start1_12i_bgtu_aliasB0;
    #line 842 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 843 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 844 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bgtu_aliasB0 > MI4src2IH1_13default_start1_12i_bgtu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgtu_alias__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI4src1IH1_13default_start1_12i_bgtu_aliasB0, MI4src2IH1_13default_start1_12i_bgtu_aliasB0;
    #line 842 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 843 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 844 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bgtu_aliasB0 > MI4src2IH1_13default_start1_12i_bgtu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bgtu_alias__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI4src1IH1_13default_start1_12i_bgtu_aliasB0, MI4src2IH1_13default_start1_12i_bgtu_aliasB0;
    #line 842 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 843 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bgtu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 844 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bgtu_aliasB0 > MI4src2IH1_13default_start1_12i_bgtu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bleu_alias__x_0__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(0) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI4src1IH1_13default_start1_12i_bleu_aliasB0, MI4src2IH1_13default_start1_12i_bleu_aliasB0;
    #line 864 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 865 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 866 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bleu_aliasB0 < MI4src2IH1_13default_start1_12i_bleu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bleu_alias__x_0__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 0); {
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI4src1IH1_13default_start1_12i_bleu_aliasB0, MI4src2IH1_13default_start1_12i_bleu_aliasB0;
    #line 864 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 865 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 866 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bleu_aliasB0 < MI4src2IH1_13default_start1_12i_bleu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bleu_alias__xpr__x_0__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(1) - (int13)0)) >> (int13)1); {
{ }
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = (int32)0L; {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI4src1IH1_13default_start1_12i_bleu_aliasB0, MI4src2IH1_13default_start1_12i_bleu_aliasB0;
    #line 864 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 865 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 866 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bleu_aliasB0 < MI4src2IH1_13default_start1_12i_bleu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_bleu_alias__xpr__xpr__rel_addr12__()
{
const int13 MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr = (((codasip_immread_int13(2) - (int13)0)) >> (int13)1); {
{ }
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2 = codasip_regopindex(0, 1); {
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI4src1IH1_13default_start1_12i_bleu_aliasB0, MI4src2IH1_13default_start1_12i_bleu_aliasB0;
    #line 864 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src1IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 865 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI4src2IH1_13default_start1_12i_bleu_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs2);
    #line 866 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    if ((MI4src1IH1_13default_start1_12i_bleu_aliasB0 < MI4src2IH1_13default_start1_12i_bleu_aliasB0))
    {
        MI6set_pc(((r_pc + (((int32)(MI10rel_addr12IH1_13default_start13_10rel_addr128rel_addr) << (int32)1L))) - (int32)4L));
    }
}
}}}
}



void i_j_alias__rel_addr20__()
{
const int21 MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr = (((codasip_immread_int21(0) - (int21)0)) >> (int21)1); {
{ }
{
    #line 883 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(((r_pc + (((int32)(MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr) << (int32)1L))) - (int32)4L));
}
}
}



void i_jr_alias__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI12jump_addressIH1_13default_start1_10i_jr_aliasB0;
    #line 903 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_10i_jr_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 904 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(MI12jump_addressIH1_13default_start1_10i_jr_aliasB0);
}
}
}



void i_jr_alias__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI12jump_addressIH1_13default_start1_10i_jr_aliasB0;
    #line 903 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_10i_jr_aliasB0 = MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1);
    #line 904 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(MI12jump_addressIH1_13default_start1_10i_jr_aliasB0);
}
}
}



void i_ret_alias__()
{
{
    uint32 MI12jump_addressIH1_13default_start1_11i_ret_aliasB0;
    #line 921 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_11i_ret_aliasB0 = MI11rf_xpr_read((int32)1L);
    #line 922 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(MI12jump_addressIH1_13default_start1_11i_ret_aliasB0);
}

}



void i_call_alias__rel_addr20__()
{
const int21 MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr = (((codasip_immread_int21(0) - (int21)0)) >> (int21)1); {
{ }
{
    #line 940 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, (int32)1L);
    #line 942 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(((r_pc + (((int32)(MI10rel_addr20IH1_13default_start13_10rel_addr208rel_addr) << (int32)1L))) - (int32)4L));
}
}
}



void i_call_reg_alias__x_0__()
{
const int32 MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = (int32)0L; {
{ }
{
    uint32 MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0;
    #line 961 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, (int32)1L);
    #line 962 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) & (uint32)4294967292UL);
    #line 963 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0);
}
}
}



void i_call_reg_alias__xpr__()
{
const __regopindex_type MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1 = codasip_regopindex(0, 0); {
{
    uint32 MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0;
    #line 961 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12rf_xpr_write(r_pc, (int32)1L);
    #line 962 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0 = (MI11rf_xpr_read(MI7xpr_allIH1_13default_start9_7xpr_all7xpr_rs1) & (uint32)4294967292UL);
    #line 963 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    MI6set_pc(MI12jump_addressIH1_13default_start1_16i_call_reg_aliasB0);
}
}
}



void e_movi32__()
{
const uint32 MI3imm = codasip_immread_uint32(1); {
const __regopindex_type MI4i_or__MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd = codasip_regopindex(0, 0); {
{
    #line 996 "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal"
    rf_xpr[MI4i_or__MI7xpr_allIH1_13default_start9_7xpr_all6xpr_rd] = MI3imm;
}
}}
}

