//Codasip compiler generator special intrinsics for representing instruction operands
//when optimizing C code that describes each instruction's semantics
//
//must be included to include/llvm/Intrinsics.td 
//
// code in SemExtrUtils.cpp and in SemWriter.cpp uses these intrinsics, you are advised to update that file after making changes here
//
// All instrinsics use IntrArgMemOnly specifier to ensure, that no pass removes them. However, this may 
// block some optimizations.  
//  
//         


//operands must be always from a register class
//represent register from register operand value read, as arguments takes 1) register class number, 2) instruction's operand index 
def int_regopread_anyint      : Intrinsic<[llvm_anyint_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
def int_regopread_anyfloat    : Intrinsic<[llvm_anyfloat_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
def int_regopread_anyvector   : Intrinsic<[llvm_anyvector_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;

//represents register from register operand write, as arguments takes 1) register class number, 2) instruction's operand index 3) value to be stored 4) condition of the write (may be constant)
def int_regopwrite_anyint     : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyint_ty, llvm_i1_ty], [IntrArgMemOnly]>;
def int_regopwrite_anyfloat   : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyfloat_ty, llvm_i1_ty], [IntrArgMemOnly]>;
def int_regopwrite_anyvector  : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyvector_ty, llvm_i1_ty], [IntrArgMemOnly]>;

//represent register from register resource value read, as arguments takes 1) register resource index and 2) register address,
def int_regread_anyint        : Intrinsic<[llvm_anyint_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
def int_regread_anyfloat      : Intrinsic<[llvm_anyfloat_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;
def int_regread_anyvector     : Intrinsic<[llvm_anyvector_ty], [llvm_i32_ty, llvm_i32_ty], [IntrNoMem]>;

//represents register from register resource value write, as arguments take 1) register resource index and 2) register address, and 3) value to be stored 4) condition of the write (may be constant)
def int_regwrite_anyint       : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyint_ty, llvm_i1_ty], [IntrArgMemOnly]>;
def int_regwrite_anyfloat     : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyfloat_ty, llvm_i1_ty], [IntrArgMemOnly]>;
def int_regwrite_anyvector    : Intrinsic<[], [llvm_i32_ty, llvm_i32_ty, llvm_anyvector_ty, llvm_i1_ty], [IntrArgMemOnly]>;

//represents integer value memory read, as arguments takes 1) address and 2) memory type id
def int_memread_anyint      : Intrinsic<[llvm_anyint_ty], [llvm_anyint_ty, llvm_i32_ty], [IntrArgMemOnly]>;
def int_memread_anyfloat    : Intrinsic<[llvm_anyfloat_ty], [llvm_anyint_ty, llvm_i32_ty], [IntrArgMemOnly]>;

//represents integer value memory write, as arguments takes 1) address, 2) memory type id and 3) value to be stored
def int_memwrite_anyint     : Intrinsic<[], [llvm_anyint_ty, llvm_i32_ty, llvm_anyint_ty], [IntrArgMemOnly]>;
def int_memwrite_anyfloat   : Intrinsic<[], [llvm_anyint_ty, llvm_i32_ty, llvm_anyfloat_ty], [IntrArgMemOnly]>;

// ---------------------- special operations ---------------------------

def int_br_anyint         : Intrinsic<[], [llvm_anyint_ty, llvm_i1_ty], [IntrArgMemOnly]>;
def int_getnextpc_anyint  : Intrinsic<[llvm_anyint_ty], [], [IntrNoMem]>; 

//represents integer value address of register for addressing register via indexing
def int_regopaddress        : Intrinsic<[llvm_anyint_ty],[llvm_i32_ty],[IntrArgMemOnly]>;
def int_propagatedregopindex: Intrinsic<[llvm_anyint_ty],[llvm_i32_ty,llvm_i32_ty,llvm_i32_ty],[IntrNoMem]>;

// ---------------------- special vector operations --------------------

// special shufflevector operation for semantics extractor, the original operation from LLVM has too many 
// limitations such as that the mask must be a constant
def int_codasip_shufflevector_anyvector : Intrinsic<[llvm_anyvector_ty], [llvm_anyvector_ty, llvm_anyvector_ty, llvm_anyvector_ty], [IntrNoMem]>;

// -------------------- extractor auxiliary operations -----------------

// operands: opindex
def int_immread_anyint   : Intrinsic<[llvm_anyint_ty],[llvm_i32_ty], [IntrNoMem]>;
def int_immread_anyfloat : Intrinsic<[llvm_anyfloat_ty],[llvm_i32_ty], [IntrNoMem]>;

// ----------------------- fixed-point operations ----------------------

// Conversions to and from floating-points
def int_codasip_fx_fptofx_anyint : Intrinsic<[llvm_anyint_ty], [llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;
def int_codasip_fx_fxtofp_anyint : Intrinsic<[llvm_anyint_ty], [llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;

// Conversions to and from signed and unsigned integers
def int_codasip_fx_itofx_anyint	:	Intrinsic<[llvm_anyint_ty], [llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;
def int_codasip_fx_fxtoi_anyint	:	Intrinsic<[llvm_anyint_ty], [llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;

// Binary operations
def int_codasip_fx_mul_anyint	:	Intrinsic<[llvm_anyint_ty], [LLVMMatchType<0>, LLVMMatchType<0>, llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;
def int_codasip_fx_div_anyint	:	Intrinsic<[llvm_anyint_ty], [LLVMMatchType<0>, LLVMMatchType<0>, llvm_anyint_ty, llvm_anyint_ty], [IntrNoMem]>;

// ----------------------- meta-operations -----------------------------

def int_extractorremoved: Intrinsic<[],[],[]>;

// universal operation
def int_codasip_builtin : Intrinsic<[],[llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyint    : Intrinsic<[llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyfloat  : Intrinsic<[llvm_anyfloat_ty], [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyptr    : Intrinsic<[llvm_anyptr_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyvector : Intrinsic<[llvm_anyvector_ty],[llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyint_anyint :  // 2 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyint_anyint_anyint : // 3 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyint_anyint_anyint_anyint :  // 4 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
def int_codasip_builtin_anyint_anyint_anyint_anyint_anyint :  // 5 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[]>;
// universal operations not touching memory
def int_codasip_builtin_nomem_anyint    : Intrinsic<[llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyfloat  : Intrinsic<[llvm_anyfloat_ty], [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyptr    : Intrinsic<[llvm_anyptr_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyvector : Intrinsic<[llvm_anyvector_ty],[llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyint_anyint :  // 2 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyint_anyint_anyint : // 3 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyint_anyint_anyint_anyint :  // 4 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;
def int_codasip_builtin_nomem_anyint_anyint_anyint_anyint_anyint :  // 5 return values
	Intrinsic<[llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty,llvm_anyint_ty],   [llvm_i32_ty, llvm_vararg_ty],[IntrNoMem]>;

