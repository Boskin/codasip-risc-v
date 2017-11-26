//===- ValueTypes.td - ValueType definitions ---------------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Value types - These values correspond to the register types defined in the
// ValueTypes.h file.  If you update anything here, you must update it there as
// well!
//
//===----------------------------------------------------------------------===//

class ValueType<int size, int value> {
  string Namespace = "MVT";
  int Size = size;
  int Value = value;
}

def OtherVT: ValueType<0  ,  0>;   // "Other" value
def i1     : ValueType<1  ,  1>;   // One bit boolean value
def i8     : ValueType<8  ,  2>;   // 8-bit integer value
def i16    : ValueType<16 ,  3>;   // 16-bit integer value
def i32    : ValueType<32 ,  4>;   // 32-bit integer value
def i64    : ValueType<64 ,  5>;   // 64-bit integer value
def i128   : ValueType<128,  6>;   // 128-bit integer value
def f16    : ValueType<16 ,  7>;   // 16-bit floating point value
def f32    : ValueType<32 ,  8>;   // 32-bit floating point value
def f64    : ValueType<64 ,  9>;   // 64-bit floating point value
def f80    : ValueType<80 , 10>;   // 80-bit floating point value
def f128   : ValueType<128, 11>;   // 128-bit floating point value
def ppcf128: ValueType<128, 12>;   // PPC 128-bit floating point value

def v2i1   : ValueType<2 ,  13>;   //   2 x i1 vector value
def v4i1   : ValueType<4 ,  14>;   //   4 x i1 vector value
def v8i1   : ValueType<8 ,  15>;   //   8 x i1 vector value
def v16i1  : ValueType<16,  16>;   //  16 x i1 vector value
def v32i1  : ValueType<32 , 17>;   //  32 x i1 vector value
def v64i1  : ValueType<64 , 18>;   //  64 x i1 vector value
def v512i1 : ValueType<512, 19>;   // 512 x i1 vector value
def v1024i1: ValueType<1024,20>;   //1024 x i1 vector value

def v1i8   : ValueType<16,  21>;   //  1 x i8  vector value
def v2i8   : ValueType<16 , 22>;   //  2 x i8  vector value
def v4i8   : ValueType<32 , 23>;   //  4 x i8  vector value
def v8i8   : ValueType<64 , 24>;   //  8 x i8  vector value
def v16i8  : ValueType<128, 25>;   // 16 x i8  vector value
def v32i8  : ValueType<256, 26>;   // 32 x i8  vector value
def v64i8  : ValueType<512, 27>;   // 64 x i8  vector value
def v128i8 : ValueType<1024,28>;   //128 x i8  vector value
def v256i8 : ValueType<2048,29>;   //256 x i8  vector value

def v1i16  : ValueType<16 , 30>;   //  1 x i16 vector value
def v2i16  : ValueType<32 , 31>;   //  2 x i16 vector value
def v4i16  : ValueType<64 , 32>;   //  4 x i16 vector value
def v8i16  : ValueType<128, 33>;   //  8 x i16 vector value
def v16i16 : ValueType<256, 34>;   // 16 x i16 vector value
def v32i16 : ValueType<512, 35>;   // 32 x i16 vector value
def v64i16 : ValueType<1024,36>;   // 64 x i16 vector value
def v128i16: ValueType<2048,37>;   //128 x i16 vector value

def v1i32  : ValueType<32 , 38>;   //  1 x i32 vector value
def v2i32  : ValueType<64 , 39>;   //  2 x i32 vector value
def v4i32  : ValueType<128, 40>;   //  4 x i32 vector value
def v8i32  : ValueType<256, 41>;   //  8 x i32 vector value
def v16i32 : ValueType<512, 42>;   // 16 x i32 vector value
def v32i32 : ValueType<1024,43>;   // 32 x i32 vector value
def v64i32 : ValueType<2048,44>;   // 32 x i32 vector value

def v1i64  : ValueType<64 , 45>;   //  1 x i64 vector value
def v2i64  : ValueType<128, 46>;   //  2 x i64 vector value
def v4i64  : ValueType<256, 47>;   //  4 x i64 vector value
def v8i64  : ValueType<512, 48>;   //  8 x i64 vector value
def v16i64 : ValueType<1024,49>;   // 16 x i64 vector value
def v32i64 : ValueType<2048,50>;   // 32 x i64 vector value

def v1i128 : ValueType<128, 51>;   //  1 x i128 vector value

def v2f16  : ValueType<32 , 52>;   //  2 x f16 vector value
def v4f16  : ValueType<64 , 53>;   //  4 x f16 vector value
def v8f16  : ValueType<128, 54>;   //  8 x f16 vector value
def v1f32  : ValueType<32 , 55>;   //  1 x f32 vector value
def v2f32  : ValueType<64 , 56>;   //  2 x f32 vector value
def v4f32  : ValueType<128, 57>;   //  4 x f32 vector value
def v8f32  : ValueType<256, 58>;   //  8 x f32 vector value
def v16f32 : ValueType<512, 59>;   // 16 x f32 vector value
def v1f64  : ValueType<64,  60>;   //  1 x f64 vector value
def v2f64  : ValueType<128, 61>;   //  2 x f64 vector value
def v4f64  : ValueType<256, 62>;   //  4 x f64 vector value
def v8f64  : ValueType<512, 63>;   //  8 x f64 vector value


def x86mmx : ValueType<64 , 64>;   // X86 MMX value
def FlagVT : ValueType<0  , 65>;   // Pre-RA sched glue
def isVoid : ValueType<0  , 66>;   // Produces no value
def untyped: ValueType<8  , 67>;   // Produces an untyped value
//================= CODASIP =========================
def i2     : ValueType<2  , 68>;
def i3     : ValueType<3  , 69>;
def i4     : ValueType<4  , 70>;
def i5     : ValueType<5  , 71>;
def i6     : ValueType<6  , 72>;
def i7     : ValueType<7  , 73>;
def i9     : ValueType<9  , 74>;
def i10    : ValueType<10 , 75>;
def i11    : ValueType<11 , 76>;
def i12    : ValueType<12 , 77>;
def i13    : ValueType<13 , 78>;
def i14    : ValueType<14 , 79>;
def i15    : ValueType<15 , 80>;
def i17    : ValueType<17 , 81>;
def i18    : ValueType<18 , 82>;
def i19    : ValueType<19 , 83>;
def i20    : ValueType<20 , 84>;
def i21    : ValueType<21 , 85>;
def i22    : ValueType<22 , 86>;
def i23    : ValueType<23 , 87>;
def i24    : ValueType<24 , 88>;
def i25    : ValueType<25 , 89>;
def i26    : ValueType<26 , 90>;
def i27    : ValueType<27 , 91>;
def i28    : ValueType<28 , 92>;
def i29    : ValueType<29 , 93>;
def i30    : ValueType<30 , 94>;
def i31    : ValueType<31 , 95>;
def i33    : ValueType<33 , 96>;
def i34    : ValueType<34 , 97>;
def i35    : ValueType<35 , 98>;
def i36    : ValueType<36 , 99>;
def i37    : ValueType<37 , 100>;
def i38    : ValueType<38 , 101>;
def i39    : ValueType<39 , 102>;
def i40    : ValueType<40 , 103>;
def i41    : ValueType<41 , 104>;
def i42    : ValueType<42 , 105>;
def i43    : ValueType<43 , 106>;
def i44    : ValueType<44 , 107>;
def i45    : ValueType<45 , 108>;
def i46    : ValueType<46 , 109>;
def i47    : ValueType<47 , 110>;
def i48    : ValueType<48 , 111>;
def i49    : ValueType<49 , 112>;
def i50    : ValueType<50 , 113>;
def i51    : ValueType<51 , 114>;
def i52    : ValueType<52 , 115>;
def i53    : ValueType<53 , 116>;
def i54    : ValueType<54 , 117>;
def i55    : ValueType<55 , 118>;
def i56    : ValueType<56 , 119>;
def i57    : ValueType<57 , 120>;
def i58    : ValueType<58 , 121>;
def i59    : ValueType<59 , 122>;
def i60    : ValueType<60 , 123>;
def i61    : ValueType<61 , 124>;
def i62    : ValueType<62 , 125>;
def i63    : ValueType<63 , 126>;
def i256   : ValueType<256 , 127>;
def i512   : ValueType<512 , 128>;
def i1024  : ValueType<1024 , 129>;
// these were shifted
def token  : ValueType<0,131>;
def MetadataVT: ValueType<0,132>;
def iPTRAny   : ValueType<0,133>;
def vAny   : ValueType<0,134>;
def fAny   : ValueType<0,135>;
def iAny   : ValueType<0,136>;
def iPTR   : ValueType<0,137>;
def Any    : ValueType<0,138>;
//======================================================
/*
def token  : ValueType<0  , 120>;  // TokenTy
def MetadataVT: ValueType<0, 121>; // Metadata

// Pseudo valuetype mapped to the current pointer size to any address space.
// Should only be used in TableGen.
def iPTRAny   : ValueType<0, 122>;

// Pseudo valuetype to represent "vector of any size"
def vAny   : ValueType<0  , 123>;

// Pseudo valuetype to represent "float of any format"
def fAny   : ValueType<0  , 124>;

// Pseudo valuetype to represent "integer of any bit width"
def iAny   : ValueType<0  , 125>;

// Pseudo valuetype mapped to the current pointer size.
def iPTR   : ValueType<0  , 126>;

// Pseudo valuetype to represent "any type of any size".
def Any    : ValueType<0  , 127>;
*/
