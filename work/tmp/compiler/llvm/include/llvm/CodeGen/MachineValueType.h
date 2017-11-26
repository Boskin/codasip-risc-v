//===- CodeGen/MachineValueType.h - Machine-Level types ---------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines the set of machine-level target independent types which
// legal values in the code generator use.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CODEGEN_MACHINEVALUETYPE_H
#define LLVM_CODEGEN_MACHINEVALUETYPE_H

#include "llvm/ADT/iterator_range.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/MathExtras.h"

namespace llvm {

  class Type;

  /// MVT - Machine Value Type. Every type that is supported natively by some
  /// processor targeted by LLVM occurs here. This means that any legal value
  /// type can be represented by an MVT.
class MVT {
  public:
    //===== CODASIP =====
    // It wouldn't fit
    #ifdef int8_t
    #error "int8_t defined already"
    #endif
    #define int8_t int16_t
    //===================
    enum SimpleValueType : int8_t {
    //==== CODASIP ====
    #undef int8_t
    //=================
      // INVALID_SIMPLE_VALUE_TYPE - Simple value types less than zero are
      // considered extended value types.
      INVALID_SIMPLE_VALUE_TYPE = -1,

      // If you change this numbering, you must change the values in
      // ValueTypes.td as well!
      Other          =   0,   // This is a non-standard value
      i1             =   1,   // This is a 1 bit integer value
      i8             =   2,   // This is an 8 bit integer value
      i16            =   3,   // This is a 16 bit integer value
      i32            =   4,   // This is a 32 bit integer value
      i64            =   5,   // This is a 64 bit integer value
      i128           =   6,   // This is a 128 bit integer value

      FIRST_INTEGER_VALUETYPE = i1,
      LAST_INTEGER_VALUETYPE  = i128,

      f16            =   7,   // This is a 16 bit floating point value
      f32            =   8,   // This is a 32 bit floating point value
      f64            =   9,   // This is a 64 bit floating point value
      f80            =  10,   // This is a 80 bit floating point value
      f128           =  11,   // This is a 128 bit floating point value
      ppcf128        =  12,   // This is a PPC 128-bit floating point value

      FIRST_FP_VALUETYPE = f16,
      LAST_FP_VALUETYPE  = ppcf128,

      v2i1           =  13,   //    2 x i1
      v4i1           =  14,   //    4 x i1
      v8i1           =  15,   //    8 x i1
      v16i1          =  16,   //   16 x i1
      v32i1          =  17,   //   32 x i1
      v64i1          =  18,   //   64 x i1
      v512i1         =  19,   //  512 x i1
      v1024i1        =  20,   // 1024 x i1

      v1i8           =  21,   //  1 x i8
      v2i8           =  22,   //  2 x i8
      v4i8           =  23,   //  4 x i8
      v8i8           =  24,   //  8 x i8
      v16i8          =  25,   // 16 x i8
      v32i8          =  26,   // 32 x i8
      v64i8          =  27,   // 64 x i8
      v128i8         =  28,   //128 x i8
      v256i8         =  29,   //256 x i8

      v1i16          =  30,   //  1 x i16
      v2i16          =  31,   //  2 x i16
      v4i16          =  32,   //  4 x i16
      v8i16          =  33,   //  8 x i16
      v16i16         =  34,   // 16 x i16
      v32i16         =  35,   // 32 x i16
      v64i16         =  36,   // 64 x i16
      v128i16        =  37,   //128 x i16

      v1i32          =  38,   //  1 x i32
      v2i32          =  39,   //  2 x i32
      v4i32          =  40,   //  4 x i32
      v8i32          =  41,   //  8 x i32
      v16i32         =  42,   // 16 x i32
      v32i32         =  43,   // 32 x i32
      v64i32         =  44,   // 64 x i32

      v1i64          =  45,   //  1 x i64
      v2i64          =  46,   //  2 x i64
      v4i64          =  47,   //  4 x i64
      v8i64          =  48,   //  8 x i64
      v16i64         =  49,   // 16 x i64
      v32i64         =  50,   // 32 x i64

      v1i128         =  51,   //  1 x i128

      FIRST_INTEGER_VECTOR_VALUETYPE = v2i1,
      LAST_INTEGER_VECTOR_VALUETYPE = v1i128,

      v2f16          =  52,   //  2 x f16
      v4f16          =  53,   //  4 x f16
      v8f16          =  54,   //  8 x f16
      v1f32          =  55,   //  1 x f32
      v2f32          =  56,   //  2 x f32
      v4f32          =  57,   //  4 x f32
      v8f32          =  58,   //  8 x f32
      v16f32         =  59,   // 16 x f32
      v1f64          =  60,   //  1 x f64
      v2f64          =  61,   //  2 x f64
      v4f64          =  62,   //  4 x f64
      v8f64          =  63,   //  8 x f64

      FIRST_FP_VECTOR_VALUETYPE = v2f16,
      LAST_FP_VECTOR_VALUETYPE = v8f64,

      FIRST_VECTOR_VALUETYPE = v2i1,
      LAST_VECTOR_VALUETYPE  = v8f64,

      x86mmx         =  64,   // This is an X86 MMX value

      Glue           =  65,   // This glues nodes together during pre-RA sched

      isVoid         =  66,   // This has no value

      Untyped        =  67,   // This value takes a register, but has
                              // unspecified type.  The register class
                              // will be determined by the opcode.

      //==================== CODASIP ============================
      i2            = 68,
      i3            = 69,
      i4            = 70,
      i5            = 71,
      i6            = 72,
      i7            = 73,
      i9            = 74,
      i10           = 75,
      i11           = 76,
      i12           = 77,
      i13           = 78,
      i14           = 79,
      i15           = 80,
      i17           = 81,
      i18           = 82,
      i19           = 83,
      i20           = 84,
      i21           = 85,
      i22           = 86,
      i23           = 87,
      i24           = 88,
      i25           = 89,
      i26           = 90,
      i27           = 91,
      i28           = 92,
      i29           = 93,
      i30           = 94,
      i31           = 95,
      i33           = 96,
      i34           = 97,
      i35           = 98,
      i36           = 99,
      i37           = 100,
      i38           = 101,
      i39           = 102,
      i40           = 103,
      i41           = 104,
      i42           = 105,
      i43           = 106,
      i44           = 107,
      i45           = 108,
      i46           = 109,
      i47           = 110,
      i48           = 111,
      i49           = 112,
      i50           = 113,
      i51           = 114,
      i52           = 115,
      i53           = 116,
      i54           = 117,
      i55           = 118,
      i56           = 119,
      i57           = 120,
      i58           = 121,
      i59           = 122,
      i60           = 123,
      i61           = 124,
      i62           = 125,
      i63           = 126,
      i256          = 127,
      i512          = 128,
      i1024         = 129,

      FIRST_CUSTOM_INTEGER_VALUETYPE = i2,
      LAST_CUSTOM_INTEGER_VALUETYPE = i1024,
      FIRST_CUSTOM_ARITHMETIC_INTEGER_VALUETYPE = i2,
      LAST_CUSTOM_ARITHMETIC_INTEGER_VALUETYPE = i63,
      //=======================================================
      FIRST_VALUETYPE = 0,    // This is always the beginning of the list.
      //========= CODASIP =========
      LAST_VALUETYPE =  130,
      //===========================
      #if 0
      LAST_VALUETYPE =  68,   // This always remains at the end of the list.
      #endif

      // This is the current maximum for LAST_VALUETYPE.
      // MVT::MAX_ALLOWED_VALUETYPE is used for asserts and to size bit vectors
      // This value must be a multiple of 32.
      //========= CODASIP =========
      MAX_ALLOWED_VALUETYPE = 160,
      //===========================
      #if 0
      MAX_ALLOWED_VALUETYPE = 96,
      #endif

      //========= CODASIP =========
      // Needs to be shifted
      // Note: decs in td needs to be kept in sync
      token=131, Metadata=132, iPTRAny=133, vAny=134, fAny=135, iAny=136, iPTR=137, Any=138
      //===========================
      #if 0
      // Token - A value of type llvm::TokenTy
      token          = 120,

      // Metadata - This is MDNode or MDString.
      Metadata       = 121,

      // iPTRAny - An int value the size of the pointer of the current
      // target to any address space. This must only be used internal to
      // tblgen. Other than for overloading, we treat iPTRAny the same as iPTR.
      iPTRAny        = 122,

      // vAny - A vector with any length and element size. This is used
      // for intrinsics that have overloadings based on vector types.
      // This is only for tblgen's consumption!
      vAny           = 123,

      // fAny - Any floating-point or vector floating-point value. This is used
      // for intrinsics that have overloadings based on floating-point types.
      // This is only for tblgen's consumption!
      fAny           = 124,

      // iAny - An integer or vector integer value of any bit width. This is
      // used for intrinsics that have overloadings based on integer bit widths.
      // This is only for tblgen's consumption!
      iAny           = 125,

      // iPTR - An int value the size of the pointer of the current
      // target.  This should only be used internal to tblgen!
      iPTR           = 126,

      // Any - Any type. This is used for intrinsics that have overloadings.
      // This is only for tblgen's consumption!
      Any            = 127
      #endif
    };

    SimpleValueType SimpleTy;

    constexpr MVT() : SimpleTy(INVALID_SIMPLE_VALUE_TYPE) {}
    constexpr MVT(SimpleValueType SVT) : SimpleTy(SVT) {}

    bool operator>(const MVT& S)  const { return SimpleTy >  S.SimpleTy; }
    bool operator<(const MVT& S)  const { return SimpleTy <  S.SimpleTy; }
    bool operator==(const MVT& S) const { return SimpleTy == S.SimpleTy; }
    bool operator!=(const MVT& S) const { return SimpleTy != S.SimpleTy; }
    bool operator>=(const MVT& S) const { return SimpleTy >= S.SimpleTy; }
    bool operator<=(const MVT& S) const { return SimpleTy <= S.SimpleTy; }

    /// isValid - Return true if this is a valid simple valuetype.
    bool isValid() const {
      return (SimpleTy >= MVT::FIRST_VALUETYPE &&
              SimpleTy < MVT::LAST_VALUETYPE);
    }

    /// isFloatingPoint - Return true if this is a FP, or a vector FP type.
    bool isFloatingPoint() const {
      return ((SimpleTy >= MVT::FIRST_FP_VALUETYPE &&
               SimpleTy <= MVT::LAST_FP_VALUETYPE) ||
              (SimpleTy >= MVT::FIRST_FP_VECTOR_VALUETYPE &&
               SimpleTy <= MVT::LAST_FP_VECTOR_VALUETYPE));
    }

    /// isInteger - Return true if this is an integer, or a vector integer type.
    bool isInteger() const {
      //================ CODASIP =====================
      if (SimpleTy >= MVT::FIRST_CUSTOM_INTEGER_VALUETYPE && SimpleTy <= MVT::LAST_CUSTOM_INTEGER_VALUETYPE) {
      	return true;
      }
      //==============================================
      return ((SimpleTy >= MVT::FIRST_INTEGER_VALUETYPE &&
               SimpleTy <= MVT::LAST_INTEGER_VALUETYPE) ||
              (SimpleTy >= MVT::FIRST_INTEGER_VECTOR_VALUETYPE &&
               SimpleTy <= MVT::LAST_INTEGER_VECTOR_VALUETYPE));
    }

    // ========= CODASIP =====================
    // An aux method for our new types
    bool isOriginal() const
    {
      return !(SimpleTy >= MVT::FIRST_CUSTOM_INTEGER_VALUETYPE && SimpleTy <= MVT::LAST_CUSTOM_INTEGER_VALUETYPE);
    }
    //========================================

    /// isScalarInteger - Return true if this is an integer, not including
    /// vectors.
    bool isScalarInteger() const {
      return (SimpleTy >= MVT::FIRST_INTEGER_VALUETYPE &&
              SimpleTy <= MVT::LAST_INTEGER_VALUETYPE);
    }

    /// isVector - Return true if this is a vector value type.
    bool isVector() const {
      return (SimpleTy >= MVT::FIRST_VECTOR_VALUETYPE &&
              SimpleTy <= MVT::LAST_VECTOR_VALUETYPE);
    }

    /// is16BitVector - Return true if this is a 16-bit vector type.
    bool is16BitVector() const {
      return (SimpleTy == MVT::v2i8  || SimpleTy == MVT::v1i16 ||
              SimpleTy == MVT::v16i1);
    }

    /// is32BitVector - Return true if this is a 32-bit vector type.
    bool is32BitVector() const {
      return (SimpleTy == MVT::v4i8  || SimpleTy == MVT::v2i16 ||
              SimpleTy == MVT::v1i32 || SimpleTy == MVT::v2f16 ||
              SimpleTy == MVT::v1f32);
    }

    /// is64BitVector - Return true if this is a 64-bit vector type.
    bool is64BitVector() const {
      return (SimpleTy == MVT::v8i8  || SimpleTy == MVT::v4i16 ||
              SimpleTy == MVT::v2i32 || SimpleTy == MVT::v1i64 ||
              SimpleTy == MVT::v4f16 || SimpleTy == MVT::v2f32 ||
              SimpleTy == MVT::v1f64);
    }

    /// is128BitVector - Return true if this is a 128-bit vector type.
    bool is128BitVector() const {
      return (SimpleTy == MVT::v16i8  || SimpleTy == MVT::v8i16 ||
              SimpleTy == MVT::v4i32  || SimpleTy == MVT::v2i64 ||
              SimpleTy == MVT::v1i128 || SimpleTy == MVT::v8f16 ||
              SimpleTy == MVT::v4f32  || SimpleTy == MVT::v2f64);
    }

    /// is256BitVector - Return true if this is a 256-bit vector type.
    bool is256BitVector() const {
      return (SimpleTy == MVT::v8f32 || SimpleTy == MVT::v4f64  ||
              SimpleTy == MVT::v32i8 || SimpleTy == MVT::v16i16 ||
              SimpleTy == MVT::v8i32 || SimpleTy == MVT::v4i64);
    }

    /// is512BitVector - Return true if this is a 512-bit vector type.
    bool is512BitVector() const {
      return (SimpleTy == MVT::v16f32 || SimpleTy == MVT::v8f64  ||
              SimpleTy == MVT::v512i1 || SimpleTy == MVT::v64i8  ||
              SimpleTy == MVT::v32i16 || SimpleTy == MVT::v16i32 ||
              SimpleTy == MVT::v8i64);
    }

    /// is1024BitVector - Return true if this is a 1024-bit vector type.
    bool is1024BitVector() const {
      return (SimpleTy == MVT::v1024i1 || SimpleTy == MVT::v128i8 ||
              SimpleTy == MVT::v64i16  || SimpleTy == MVT::v32i32 ||
              SimpleTy == MVT::v16i64);
    }

    /// is2048BitVector - Return true if this is a 1024-bit vector type.
    bool is2048BitVector() const {
      return (SimpleTy == MVT::v256i8 || SimpleTy == MVT::v128i16 ||
              SimpleTy == MVT::v64i32 || SimpleTy == MVT::v32i64);
    }

    /// isOverloaded - Return true if this is an overloaded type for TableGen.
    bool isOverloaded() const {
      return (SimpleTy==MVT::Any  ||
              SimpleTy==MVT::iAny || SimpleTy==MVT::fAny ||
              SimpleTy==MVT::vAny || SimpleTy==MVT::iPTRAny);
    }

    /// isPow2VectorType - Returns true if the given vector is a power of 2.
    bool isPow2VectorType() const {
      unsigned NElts = getVectorNumElements();
      return !(NElts & (NElts - 1));
    }

    /// getPow2VectorType - Widens the length of the given vector MVT up to
    /// the nearest power of 2 and returns that type.
    MVT getPow2VectorType() const {
      if (isPow2VectorType())
        return *this;

      unsigned NElts = getVectorNumElements();
      unsigned Pow2NElts = 1 << Log2_32_Ceil(NElts);
      return MVT::getVectorVT(getVectorElementType(), Pow2NElts);
    }

    /// getScalarType - If this is a vector type, return the element type,
    /// otherwise return this.
    MVT getScalarType() const {
      return isVector() ? getVectorElementType() : *this;
    }

    MVT getVectorElementType() const {
      switch (SimpleTy) {
      default:
        llvm_unreachable("Not a vector MVT!");
      case v2i1:
      case v4i1:
      case v8i1:
      case v16i1:
      case v32i1:
      case v64i1:
      case v512i1:
      case v1024i1: return i1;
      case v1i8:
      case v2i8:
      case v4i8:
      case v8i8:
      case v16i8:
      case v32i8:
      case v64i8:
      case v128i8:
      case v256i8: return i8;
      case v1i16:
      case v2i16:
      case v4i16:
      case v8i16:
      case v16i16:
      case v32i16:
      case v64i16:
      case v128i16: return i16;
      case v1i32:
      case v2i32:
      case v4i32:
      case v8i32:
      case v16i32:
      case v32i32:
      case v64i32: return i32;
      case v1i64:
      case v2i64:
      case v4i64:
      case v8i64:
      case v16i64:
      case v32i64: return i64;
      case v1i128: return i128;
      case v2f16:
      case v4f16:
      case v8f16: return f16;
      case v1f32:
      case v2f32:
      case v4f32:
      case v8f32:
      case v16f32: return f32;
      case v1f64:
      case v2f64:
      case v4f64:
      case v8f64: return f64;
      }
    }

    unsigned getVectorNumElements() const {
      switch (SimpleTy) {
      default:
        llvm_unreachable("Not a vector MVT!");
      case v1024i1: return 1024;
      case v512i1: return 512;
      case v256i8: return 256;
      case v128i8:
      case v128i16: return 128;
      case v64i1:
      case v64i8:
      case v64i16:
      case v64i32: return 64;
      case v32i1:
      case v32i8:
      case v32i16:
      case v32i32:
      case v32i64: return 32;
      case v16i1:
      case v16i8:
      case v16i16:
      case v16i32:
      case v16i64:
      case v16f32: return 16;
      case v8i1:
      case v8i8:
      case v8i16:
      case v8i32:
      case v8i64:
      case v8f16:
      case v8f32:
      case v8f64: return 8;
      case v4i1:
      case v4i8:
      case v4i16:
      case v4i32:
      case v4i64:
      case v4f16:
      case v4f32:
      case v4f64: return 4;
      case v2i1:
      case v2i8:
      case v2i16:
      case v2i32:
      case v2i64:
      case v2f16:
      case v2f32:
      case v2f64: return 2;
      case v1i8:
      case v1i16:
      case v1i32:
      case v1i64:
      case v1i128:
      case v1f32:
      case v1f64: return 1;
      }
    }

    unsigned getSizeInBits() const {
      switch (SimpleTy) {
      default:
        llvm_unreachable("getSizeInBits called on extended MVT.");
      case Other:
        llvm_unreachable("Value type is non-standard value, Other.");
      case iPTR:
        llvm_unreachable("Value type size is target-dependent. Ask TLI.");
      case iPTRAny:
      case iAny:
      case fAny:
      case vAny:
      case Any:
        llvm_unreachable("Value type is overloaded.");
      case token:
        llvm_unreachable("Token type is a sentinel that cannot be used "
                         "in codegen and has no size");
      case Metadata:
        llvm_unreachable("Value type is metadata.");
      case i1  :  return 1;
      case v2i1:  return 2;
      case v4i1:  return 4;
      case i8  :
      case v1i8:
      case v8i1: return 8;
      case i16 :
      case f16:
      case v16i1:
      case v2i8:
      case v1i16: return 16;
      case f32 :
      case i32 :
      case v32i1:
      case v4i8:
      case v2i16:
      case v2f16:
      case v1f32:
      case v1i32: return 32;
      case x86mmx:
      case f64 :
      case i64 :
      case v64i1:
      case v8i8:
      case v4i16:
      case v2i32:
      case v1i64:
      case v4f16:
      case v2f32:
      case v1f64: return 64;
      case f80 :  return 80;
      case f128:
      case ppcf128:
      case i128:
      case v16i8:
      case v8i16:
      case v4i32:
      case v2i64:
      case v1i128:
      case v8f16:
      case v4f32:
      case v2f64: return 128;
      case v32i8:
      case v16i16:
      case v8i32:
      case v4i64:
      case v8f32:
      case v4f64: return 256;
      case v512i1:
      case v64i8:
      case v32i16:
      case v16i32:
      case v8i64:
      case v16f32:
      case v8f64: return 512;
      case v1024i1:
      case v128i8:
      case v64i16:
      case v32i32:
      case v16i64: return 1024;
      case v256i8:
      case v128i16:
      case v64i32:
      case v32i64: return 2048;
      //==================== CODASIP ============================
      case i2:  return 2;
      case i3:  return 3;
      case i4:  return 4;
      case i5:  return 5;
      case i6:  return 6;
      case i7:  return 7;
      case i9:  return 9;
      case i10: return 10;
      case i11: return 11;
      case i12: return 12;
      case i13: return 13;
      case i14: return 14;
      case i15: return 15;
      case i17: return 17;
      case i18: return 18;
      case i19: return 19;
      case i20: return 20;
      case i21: return 21;
      case i22: return 22;
      case i23: return 23;
      case i24: return 24;
      case i25: return 25;
      case i26: return 26;
      case i27: return 27;
      case i28: return 28;
      case i29: return 29;
      case i30: return 30;
      case i31: return 31;
      case i33: return 33;
      case i34: return 34;
      case i35: return 35;
      case i36: return 36;
      case i37: return 37;
      case i38: return 38;
      case i39: return 39;
      case i40: return 40;
      case i41: return 41;
      case i42: return 42;
      case i43: return 43;
      case i44: return 44;
      case i45: return 45;
      case i46: return 46;
      case i47: return 47;
      case i48: return 48;
      case i49: return 49;
      case i50: return 50;
      case i51: return 51;
      case i52: return 52;
      case i53: return 53;
      case i54: return 54;
      case i55: return 55;
      case i56: return 56;
      case i57: return 57;
      case i58: return 58;
      case i59: return 59;
      case i60: return 60;
      case i61: return 61;
      case i62: return 62;
      case i63: return 63;
      case i256: return 256;
      case i512: return 512;
      case i1024: return 1024;
      //=======================================================
      }
    }

    unsigned getScalarSizeInBits() const {
      return getScalarType().getSizeInBits();
    }

    /// getStoreSize - Return the number of bytes overwritten by a store
    /// of the specified value type.
    unsigned getStoreSize() const {
      return (getSizeInBits() + 7) / 8;
    }

    /// getStoreSizeInBits - Return the number of bits overwritten by a store
    /// of the specified value type.
    unsigned getStoreSizeInBits() const {
      return getStoreSize() * 8;
    }

    /// Return true if this has more bits than VT.
    bool bitsGT(MVT VT) const {
      return getSizeInBits() > VT.getSizeInBits();
    }

    /// Return true if this has no less bits than VT.
    bool bitsGE(MVT VT) const {
      return getSizeInBits() >= VT.getSizeInBits();
    }

    /// Return true if this has less bits than VT.
    bool bitsLT(MVT VT) const {
      return getSizeInBits() < VT.getSizeInBits();
    }

    /// Return true if this has no more bits than VT.
    bool bitsLE(MVT VT) const {
      return getSizeInBits() <= VT.getSizeInBits();
    }


    static MVT getFloatingPointVT(unsigned BitWidth) {
      switch (BitWidth) {
      default:
        llvm_unreachable("Bad bit width!");
      case 16:
        return MVT::f16;
      case 32:
        return MVT::f32;
      case 64:
        return MVT::f64;
      case 80:
        return MVT::f80;
      case 128:
        return MVT::f128;
      }
    }

    static MVT getIntegerVT(unsigned BitWidth) {
      switch (BitWidth) {
      default:
        return (MVT::SimpleValueType)(MVT::INVALID_SIMPLE_VALUE_TYPE);
      case 1:
        return MVT::i1;
      case 8:
        return MVT::i8;
      case 16:
        return MVT::i16;
      case 32:
        return MVT::i32;
      case 64:
        return MVT::i64;
      case 128:
        return MVT::i128;
      //==================== CODASIP ============================
      case 2:
        return MVT::i2;
      case 3:
        return MVT::i3;
      case 4:
        return MVT::i4;
      case 5:
        return MVT::i5;
      case 6:
        return MVT::i6;
      case 7:
        return MVT::i7;
      case 9:
        return MVT::i9;
      case 10:
        return MVT::i10;
      case 11:
        return MVT::i11;
      case 12:
        return MVT::i12;
      case 13:
        return MVT::i13;
      case 14:
        return MVT::i14;
      case 15:
        return MVT::i15;
      case 17:
        return MVT::i17;
      case 18:
        return MVT::i18;
      case 19:
        return MVT::i19;
      case 20:
        return MVT::i20;
      case 21:
        return MVT::i21;
      case 22:
        return MVT::i22;
      case 23:
        return MVT::i23;
      case 24:
        return MVT::i24;
      case 25:
        return MVT::i25;
      case 26:
        return MVT::i26;
      case 27:
        return MVT::i27;
      case 28:
        return MVT::i28;
      case 29:
        return MVT::i29;
      case 30:
        return MVT::i30;
      case 31:
        return MVT::i31;
      case 33:
        return MVT::i33;
      case 34:
        return MVT::i34;
      case 35:
        return MVT::i35;
      case 36:
        return MVT::i36;
      case 37:
        return MVT::i37;
      case 38:
        return MVT::i38;
      case 39:
        return MVT::i39;
      case 40:
        return MVT::i40;
      case 41:
        return MVT::i41;
      case 42:
        return MVT::i42;
      case 43:
        return MVT::i43;
      case 44:
        return MVT::i44;
      case 45:
        return MVT::i45;
      case 46:
        return MVT::i46;
      case 47:
        return MVT::i47;
      case 48:
        return MVT::i48;
      case 49:
        return MVT::i49;
      case 50:
        return MVT::i50;
      case 51:
        return MVT::i51;
      case 52:
        return MVT::i52;
      case 53:
        return MVT::i53;
      case 54:
        return MVT::i54;
      case 55:
        return MVT::i55;
      case 56:
        return MVT::i56;
      case 57:
        return MVT::i57;
      case 58:
        return MVT::i58;
      case 59:
        return MVT::i59;
      case 60:
        return MVT::i60;
      case 61:
        return MVT::i61;
      case 62:
        return MVT::i62;
      case 63:
        return MVT::i63;
      case 256:
          return MVT::i256;
      case 512:
          return MVT::i512;
      case 1024:
          return MVT::i1024;
      //=======================================================
      }
    }

    static MVT getVectorVT(MVT VT, unsigned NumElements) {
      switch (VT.SimpleTy) {
      default:
        break;
      case MVT::i1:
        if (NumElements == 2)    return MVT::v2i1;
        if (NumElements == 4)    return MVT::v4i1;
        if (NumElements == 8)    return MVT::v8i1;
        if (NumElements == 16)   return MVT::v16i1;
        if (NumElements == 32)   return MVT::v32i1;
        if (NumElements == 64)   return MVT::v64i1;
        if (NumElements == 512)  return MVT::v512i1;
        if (NumElements == 1024) return MVT::v1024i1;
        break;
      case MVT::i8:
        if (NumElements == 1)   return MVT::v1i8;
        if (NumElements == 2)   return MVT::v2i8;
        if (NumElements == 4)   return MVT::v4i8;
        if (NumElements == 8)   return MVT::v8i8;
        if (NumElements == 16)  return MVT::v16i8;
        if (NumElements == 32)  return MVT::v32i8;
        if (NumElements == 64)  return MVT::v64i8;
        if (NumElements == 128) return MVT::v128i8;
        if (NumElements == 256) return MVT::v256i8;
        break;
      case MVT::i16:
        if (NumElements == 1)   return MVT::v1i16;
        if (NumElements == 2)   return MVT::v2i16;
        if (NumElements == 4)   return MVT::v4i16;
        if (NumElements == 8)   return MVT::v8i16;
        if (NumElements == 16)  return MVT::v16i16;
        if (NumElements == 32)  return MVT::v32i16;
        if (NumElements == 64)  return MVT::v64i16;
        if (NumElements == 128) return MVT::v128i16;
        break;
      case MVT::i32:
        if (NumElements == 1)  return MVT::v1i32;
        if (NumElements == 2)  return MVT::v2i32;
        if (NumElements == 4)  return MVT::v4i32;
        if (NumElements == 8)  return MVT::v8i32;
        if (NumElements == 16) return MVT::v16i32;
        if (NumElements == 32) return MVT::v32i32;
        if (NumElements == 64) return MVT::v64i32;
        break;
      case MVT::i64:
        if (NumElements == 1)  return MVT::v1i64;
        if (NumElements == 2)  return MVT::v2i64;
        if (NumElements == 4)  return MVT::v4i64;
        if (NumElements == 8)  return MVT::v8i64;
        if (NumElements == 16) return MVT::v16i64;
        if (NumElements == 32) return MVT::v32i64;
        break;
      case MVT::i128:
        if (NumElements == 1)  return MVT::v1i128;
        break;
      case MVT::f16:
        if (NumElements == 2)  return MVT::v2f16;
        if (NumElements == 4)  return MVT::v4f16;
        if (NumElements == 8)  return MVT::v8f16;
        break;
      case MVT::f32:
        if (NumElements == 1)  return MVT::v1f32;
        if (NumElements == 2)  return MVT::v2f32;
        if (NumElements == 4)  return MVT::v4f32;
        if (NumElements == 8)  return MVT::v8f32;
        if (NumElements == 16) return MVT::v16f32;
        break;
      case MVT::f64:
        if (NumElements == 1)  return MVT::v1f64;
        if (NumElements == 2)  return MVT::v2f64;
        if (NumElements == 4)  return MVT::v4f64;
        if (NumElements == 8)  return MVT::v8f64;
        break;
      }
      return (MVT::SimpleValueType)(MVT::INVALID_SIMPLE_VALUE_TYPE);
    }

    /// Return the value type corresponding to the specified type.  This returns
    /// all pointers as iPTR.  If HandleUnknown is true, unknown types are
    /// returned as Other, otherwise they are invalid.
    static MVT getVT(Type *Ty, bool HandleUnknown = false);

  private:
    /// A simple iterator over the MVT::SimpleValueType enum.
    struct mvt_iterator {
      SimpleValueType VT;
      mvt_iterator(SimpleValueType VT) : VT(VT) {}
      MVT operator*() const { return VT; }
      bool operator!=(const mvt_iterator &LHS) const { return VT != LHS.VT; }
      mvt_iterator& operator++() {
        VT = (MVT::SimpleValueType)((int)VT + 1);
        assert((int)VT <= MVT::MAX_ALLOWED_VALUETYPE &&
               "MVT iterator overflowed.");
        return *this;
      }
    };
    /// A range of the MVT::SimpleValueType enum.
    typedef iterator_range<mvt_iterator> mvt_range;

  public:
    /// SimpleValueType Iteration
    /// @{
    static mvt_range all_valuetypes() {
      return mvt_range(MVT::FIRST_VALUETYPE, MVT::LAST_VALUETYPE);
    }
    static mvt_range integer_valuetypes() {
      return mvt_range(MVT::FIRST_INTEGER_VALUETYPE,
                       (MVT::SimpleValueType)(MVT::LAST_INTEGER_VALUETYPE + 1));
    }
    static mvt_range fp_valuetypes() {
      return mvt_range(MVT::FIRST_FP_VALUETYPE,
                       (MVT::SimpleValueType)(MVT::LAST_FP_VALUETYPE + 1));
    }
    static mvt_range vector_valuetypes() {
      return mvt_range(MVT::FIRST_VECTOR_VALUETYPE,
                       (MVT::SimpleValueType)(MVT::LAST_VECTOR_VALUETYPE + 1));
    }
    static mvt_range integer_vector_valuetypes() {
      return mvt_range(
          MVT::FIRST_INTEGER_VECTOR_VALUETYPE,
          (MVT::SimpleValueType)(MVT::LAST_INTEGER_VECTOR_VALUETYPE + 1));
    }
    static mvt_range fp_vector_valuetypes() {
      return mvt_range(
          MVT::FIRST_FP_VECTOR_VALUETYPE,
          (MVT::SimpleValueType)(MVT::LAST_FP_VECTOR_VALUETYPE + 1));
    }
    /// @}
  };

} // End llvm namespace

#endif
