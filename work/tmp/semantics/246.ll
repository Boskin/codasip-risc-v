; ModuleID = '010_after_frontend.bc'
source_filename = "se_instrsem.c"
target datalayout = "e-p:32:32:32-S64-a0:0:32-n32"
target triple = "extractor"

@rf_xpr = common global [32 x i32] zeroinitializer, align 4
@r_pc = common global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(bool)(0)\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal\00", align 1
@if_data__sb1__ = common global [2048 x i8] zeroinitializer, align 1
@if_data__sb2__ = common global [2048 x i16] zeroinitializer, align 2
@if_data__sb4__ = common global [2048 x i32] zeroinitializer, align 4
@sc_load = common global i32 0, align 4
@if_code__ = common global [2048 x i32] zeroinitializer, align 4
@if_code__sb1__ = common global [2048 x i8] zeroinitializer, align 1
@if_code__sb2__ = common global [2048 x i16] zeroinitializer, align 2
@if_code__sb3__ = common global [2048 x i24] zeroinitializer, align 4
@if_code__sb4__ = common global [2048 x i32] zeroinitializer, align 4
@if_code__sb5__ = common global [2048 x i40] zeroinitializer, align 8
@if_code__sb6__ = common global [2048 x i48] zeroinitializer, align 8
@if_code__sb7__ = common global [2048 x i56] zeroinitializer, align 8
@if_code__sb8__ = common global [2048 x i64] zeroinitializer, align 8
@if_code__sb9__ = common global [2048 x i72] zeroinitializer, align 16
@if_code__sb10__ = common global [2048 x i80] zeroinitializer, align 16
@if_code__sb11__ = common global [2048 x i88] zeroinitializer, align 16
@if_code__sb12__ = common global [2048 x i96] zeroinitializer, align 16
@if_code__sb13__ = common global [2048 x i104] zeroinitializer, align 16
@if_code__sb14__ = common global [2048 x i112] zeroinitializer, align 16
@if_code__sb15__ = common global [2048 x i120] zeroinitializer, align 16
@if_code__sb16__ = common global [2048 x i128] zeroinitializer, align 16
@if_data__ = common global [2048 x i32] zeroinitializer, align 4
@if_data__sb3__ = common global [2048 x i24] zeroinitializer, align 4
@if_data__sb5__ = common global [2048 x i40] zeroinitializer, align 8
@if_data__sb6__ = common global [2048 x i48] zeroinitializer, align 8
@if_data__sb7__ = common global [2048 x i56] zeroinitializer, align 8
@if_data__sb8__ = common global [2048 x i64] zeroinitializer, align 8
@if_data__sb9__ = common global [2048 x i72] zeroinitializer, align 16
@if_data__sb10__ = common global [2048 x i80] zeroinitializer, align 16
@if_data__sb11__ = common global [2048 x i88] zeroinitializer, align 16
@if_data__sb12__ = common global [2048 x i96] zeroinitializer, align 16
@if_data__sb13__ = common global [2048 x i104] zeroinitializer, align 16
@if_data__sb14__ = common global [2048 x i112] zeroinitializer, align 16
@if_data__sb15__ = common global [2048 x i120] zeroinitializer, align 16
@if_data__sb16__ = common global [2048 x i128] zeroinitializer, align 16

declare void @_codasip_assert_function(i1, i8*, i8*, i32) #0

; Function Attrs: noinline readnone
define void @i_nop_alias__() #1 !dbg !6 {
entry:
  tail call void (...) @codasip_nop() #4
  ret void, !dbg !9
}

declare void @codasip_nop(...) #0

; Function Attrs: noinline readnone
define void @i_halt__opc_halt__() #1 !dbg !12 {
entry:
  tail call void (...) @codasip_halt() #4
  ret void, !dbg !13
}

declare void @codasip_halt(...) #0

; Function Attrs: noinline readnone
define void @i_syscall__opc_syscall__() #1 !dbg !14 {
entry:
  tail call void (...) @codasip_compiler_unused() #4
  %u0 = tail call i32 @llvm.regread.anyint.i32(i32 35, i32 6), !dbg !15
  %phitmp = zext i32 %u0 to i64, !dbg !20
  %call1 = tail call i32 @codasip_syscall(i64 %phitmp) #4, !dbg !21
  ret void, !dbg !23
}

declare void @codasip_compiler_unused(...) #0

; Function Attrs: readnone
declare i32 @codasip_syscall(i64) #2

; Function Attrs: noinline readnone
define void @i_alu__opc_add__x_0__x_0__x_0__() #1 !dbg !24 {
entry:
  ret void, !dbg !25
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__x_0__x_0__xpr__() #1 !dbg !26 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !27
}

; Function Attrs: readnone
declare i32 @codasip_regopindex(i32, i32) #2

; Function Attrs: noinline readnone
define void @i_alu__opc_add__x_0__xpr__x_0__() #1 !dbg !28 {
MI11rf_xpr_read.exit:
  ret void, !dbg !29
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__x_0__xpr__xpr__() #1 !dbg !30 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !31
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__xpr__x_0__x_0__() #1 !dbg !32 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !33
  ret void, !dbg !36
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__xpr__x_0__xpr__() #1 !dbg !37 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !38
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !40
  ret void, !dbg !42
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__xpr__xpr__x_0__() #1 !dbg !43 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !44
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !46
  ret void, !dbg !48
}

; Function Attrs: noinline readnone
define void @i_alu__opc_add__xpr__xpr__xpr__() #1 !dbg !49 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !50
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !52
  %add.i = add i32 %u1, %u0, !dbg !54
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %add.i, i1 true), !dbg !57
  ret void, !dbg !59
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__x_0__x_0__x_0__() #1 !dbg !60 {
entry:
  ret void, !dbg !61
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__x_0__x_0__xpr__() #1 !dbg !62 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !63
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__x_0__xpr__x_0__() #1 !dbg !64 {
MI11rf_xpr_read.exit:
  ret void, !dbg !65
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__x_0__xpr__xpr__() #1 !dbg !66 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !67
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__xpr__x_0__x_0__() #1 !dbg !68 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !69
  ret void, !dbg !71
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__xpr__x_0__xpr__() #1 !dbg !72 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !73
  %phitmp = icmp sgt i32 %u0, 0, !dbg !75
  %storemerge21 = zext i1 %phitmp to i32, !dbg !76
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge21, i1 true), !dbg !78
  ret void, !dbg !80
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__xpr__xpr__x_0__() #1 !dbg !81 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !82
  %.lobit = lshr i32 %u0, 31, !dbg !84
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %.lobit, i1 true), !dbg !86
  ret void, !dbg !88
}

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__xpr__xpr__xpr__() #1 !dbg !89 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !90
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !92
  %cmp.i7 = icmp slt i32 %u0, %u1, !dbg !94
  %storemerge21 = zext i1 %cmp.i7 to i32, !dbg !96
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge21, i1 true), !dbg !97
  ret void, !dbg !99
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__x_0__x_0__x_0__() #1 !dbg !100 {
entry:
  ret void, !dbg !101
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__x_0__x_0__xpr__() #1 !dbg !102 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !103
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__x_0__xpr__x_0__() #1 !dbg !104 {
MI11rf_xpr_read.exit:
  ret void, !dbg !105
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__x_0__xpr__xpr__() #1 !dbg !106 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !107
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__xpr__x_0__x_0__() #1 !dbg !108 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !109
  ret void, !dbg !111
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__xpr__x_0__xpr__() #1 !dbg !112 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !113
  %phitmp = icmp ne i32 %u0, 0, !dbg !115
  %storemerge22 = zext i1 %phitmp to i32, !dbg !116
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge22, i1 true), !dbg !118
  ret void, !dbg !120
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__xpr__xpr__x_0__() #1 !dbg !121 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !122
  ret void, !dbg !124
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__xpr__xpr__xpr__() #1 !dbg !125 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !126
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !128
  %cmp3.i = icmp ult i32 %u0, %u1, !dbg !130
  %storemerge22 = zext i1 %cmp3.i to i32, !dbg !132
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge22, i1 true), !dbg !133
  ret void, !dbg !135
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__x_0__x_0__x_0__() #1 !dbg !136 {
entry:
  ret void, !dbg !137
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__x_0__x_0__xpr__() #1 !dbg !138 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !139
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__x_0__xpr__x_0__() #1 !dbg !140 {
MI11rf_xpr_read.exit:
  ret void, !dbg !141
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__x_0__xpr__xpr__() #1 !dbg !142 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !143
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__xpr__x_0__x_0__() #1 !dbg !144 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !145
  ret void, !dbg !147
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__xpr__x_0__xpr__() #1 !dbg !148 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !149
  ret void, !dbg !151
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__xpr__xpr__x_0__() #1 !dbg !152 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !153
  ret void, !dbg !155
}

; Function Attrs: noinline readnone
define void @i_alu__opc_and__xpr__xpr__xpr__() #1 !dbg !156 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !157
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !159
  %and.i = and i32 %u1, %u0, !dbg !161
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %and.i, i1 true), !dbg !163
  ret void, !dbg !165
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__x_0__x_0__x_0__() #1 !dbg !166 {
entry:
  ret void, !dbg !167
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__x_0__x_0__xpr__() #1 !dbg !168 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !169
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__x_0__xpr__x_0__() #1 !dbg !170 {
MI11rf_xpr_read.exit:
  ret void, !dbg !171
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__x_0__xpr__xpr__() #1 !dbg !172 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !173
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__xpr__x_0__x_0__() #1 !dbg !174 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !175
  ret void, !dbg !177
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__xpr__x_0__xpr__() #1 !dbg !178 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !179
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !181
  ret void, !dbg !183
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__xpr__xpr__x_0__() #1 !dbg !184 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !185
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !187
  ret void, !dbg !189
}

; Function Attrs: noinline readnone
define void @i_alu__opc_or__xpr__xpr__xpr__() #1 !dbg !190 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !191
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !193
  %or.i = or i32 %u1, %u0, !dbg !195
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %or.i, i1 true), !dbg !197
  ret void, !dbg !199
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__x_0__x_0__x_0__() #1 !dbg !200 {
entry:
  ret void, !dbg !201
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__x_0__x_0__xpr__() #1 !dbg !202 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !203
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__x_0__xpr__x_0__() #1 !dbg !204 {
MI11rf_xpr_read.exit:
  ret void, !dbg !205
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__x_0__xpr__xpr__() #1 !dbg !206 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !207
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__xpr__x_0__x_0__() #1 !dbg !208 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !209
  ret void, !dbg !211
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__xpr__x_0__xpr__() #1 !dbg !212 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !213
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !215
  ret void, !dbg !217
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__xpr__xpr__x_0__() #1 !dbg !218 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !219
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !221
  ret void, !dbg !223
}

; Function Attrs: noinline readnone
define void @i_alu__opc_xor__xpr__xpr__xpr__() #1 !dbg !224 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !225
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !227
  %xor.i = xor i32 %u1, %u0, !dbg !229
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %xor.i, i1 true), !dbg !231
  ret void, !dbg !233
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__x_0__x_0__x_0__() #1 !dbg !234 {
entry:
  ret void, !dbg !235
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__x_0__x_0__xpr__() #1 !dbg !236 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !237
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__x_0__xpr__x_0__() #1 !dbg !238 {
MI11rf_xpr_read.exit:
  ret void, !dbg !239
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__x_0__xpr__xpr__() #1 !dbg !240 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !241
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__xpr__x_0__x_0__() #1 !dbg !242 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !243
  ret void, !dbg !245
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__xpr__x_0__xpr__() #1 !dbg !246 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !247
  ret void, !dbg !249
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__xpr__xpr__x_0__() #1 !dbg !250 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !251
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !253
  ret void, !dbg !255
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sll__xpr__xpr__xpr__() #1 !dbg !256 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !257
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !259
  %phitmp = and i32 %u1, 31, !dbg !261
  %shl.i = shl i32 %u0, %phitmp, !dbg !262
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shl.i, i1 true), !dbg !264
  ret void, !dbg !266
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__x_0__x_0__x_0__() #1 !dbg !267 {
entry:
  ret void, !dbg !268
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__x_0__x_0__xpr__() #1 !dbg !269 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !270
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__x_0__xpr__x_0__() #1 !dbg !271 {
MI11rf_xpr_read.exit:
  ret void, !dbg !272
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__x_0__xpr__xpr__() #1 !dbg !273 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !274
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__xpr__x_0__x_0__() #1 !dbg !275 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !276
  ret void, !dbg !278
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__xpr__x_0__xpr__() #1 !dbg !279 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !280
  ret void, !dbg !282
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__xpr__xpr__x_0__() #1 !dbg !283 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !284
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !286
  ret void, !dbg !288
}

; Function Attrs: noinline readnone
define void @i_alu__opc_srl__xpr__xpr__xpr__() #1 !dbg !289 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !290
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !292
  %phitmp = and i32 %u1, 31, !dbg !294
  %shr.i = lshr i32 %u0, %phitmp, !dbg !295
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shr.i, i1 true), !dbg !297
  ret void, !dbg !299
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__x_0__x_0__x_0__() #1 !dbg !300 {
entry:
  ret void, !dbg !301
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__x_0__x_0__xpr__() #1 !dbg !302 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !303
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__x_0__xpr__x_0__() #1 !dbg !304 {
MI11rf_xpr_read.exit:
  ret void, !dbg !305
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__x_0__xpr__xpr__() #1 !dbg !306 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !307
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__xpr__x_0__x_0__() #1 !dbg !308 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !309
  ret void, !dbg !311
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__xpr__x_0__xpr__() #1 !dbg !312 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !313
  %sub.i = sub i32 0, %u0, !dbg !315
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %sub.i, i1 true), !dbg !317
  ret void, !dbg !319
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__xpr__xpr__x_0__() #1 !dbg !320 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !321
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !323
  ret void, !dbg !325
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sub__xpr__xpr__xpr__() #1 !dbg !326 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !327
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !329
  %sub.i = sub i32 %u0, %u1, !dbg !331
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %sub.i, i1 true), !dbg !333
  ret void, !dbg !335
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__x_0__x_0__x_0__() #1 !dbg !336 {
entry:
  ret void, !dbg !337
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__x_0__x_0__xpr__() #1 !dbg !338 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !339
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__x_0__xpr__x_0__() #1 !dbg !340 {
MI11rf_xpr_read.exit:
  ret void, !dbg !341
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__x_0__xpr__xpr__() #1 !dbg !342 {
MI11rf_xpr_read.exit19:
  ret void, !dbg !343
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__xpr__x_0__x_0__() #1 !dbg !344 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !345
  ret void, !dbg !347
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__xpr__x_0__xpr__() #1 !dbg !348 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !349
  ret void, !dbg !351
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__xpr__xpr__x_0__() #1 !dbg !352 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !353
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !355
  ret void, !dbg !357
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sra__xpr__xpr__xpr__() #1 !dbg !358 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !359
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !361
  %phitmp = and i32 %u1, 31, !dbg !363
  %shr18.i = ashr i32 %u0, %phitmp, !dbg !364
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shr18.i, i1 true), !dbg !366
  ret void, !dbg !368
}

; Function Attrs: noinline readnone
define void @i_shift__opc_slli__x_0__x_0__shamt__() #1 !dbg !369 {
entry:
  ret void, !dbg !370
}

; Function Attrs: readnone
declare i5 @codasip_immread_uint5(i32) #2

; Function Attrs: noinline readnone
define void @i_shift__opc_slli__x_0__xpr__shamt__() #1 !dbg !371 {
MI11rf_xpr_read.exit:
  ret void, !dbg !372
}

; Function Attrs: noinline readnone
define void @i_shift__opc_slli__xpr__x_0__shamt__() #1 !dbg !373 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !374
  ret void, !dbg !376
}

; Function Attrs: noinline readnone
define void @i_shift__opc_slli__xpr__xpr__shamt__() #1 !dbg !377 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_uint5_uint32(i32 2, i1 false, i32 5), !dbg !378
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !379
  %shl.i = shl i32 %u1, %u0, !dbg !381
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shl.i, i1 true), !dbg !383
  ret void, !dbg !385
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srli__x_0__x_0__shamt__() #1 !dbg !386 {
entry:
  ret void, !dbg !387
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srli__x_0__xpr__shamt__() #1 !dbg !388 {
MI11rf_xpr_read.exit:
  ret void, !dbg !389
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srli__xpr__x_0__shamt__() #1 !dbg !390 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !391
  ret void, !dbg !393
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srli__xpr__xpr__shamt__() #1 !dbg !394 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_uint5_uint32(i32 2, i1 false, i32 5), !dbg !395
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !396
  %shr.i = lshr i32 %u1, %u0, !dbg !398
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shr.i, i1 true), !dbg !400
  ret void, !dbg !402
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srai__x_0__x_0__shamt__() #1 !dbg !403 {
entry:
  ret void, !dbg !404
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srai__x_0__xpr__shamt__() #1 !dbg !405 {
MI11rf_xpr_read.exit:
  ret void, !dbg !406
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srai__xpr__x_0__shamt__() #1 !dbg !407 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !408
  ret void, !dbg !410
}

; Function Attrs: noinline readnone
define void @i_shift__opc_srai__xpr__xpr__shamt__() #1 !dbg !411 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_uint5_uint32(i32 2, i1 false, i32 5), !dbg !412
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !413
  %shr18.i = ashr i32 %u1, %u0, !dbg !415
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shr18.i, i1 true), !dbg !417
  ret void, !dbg !419
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_addi__x_0__x_0__simm12__() #1 !dbg !420 {
entry:
  ret void, !dbg !421
}

; Function Attrs: readnone
declare i12 @codasip_immread_int12(i32) #2

; Function Attrs: noinline readnone
define void @i_alu_i__opc_addi__x_0__xpr__simm12__() #1 !dbg !422 {
MI11rf_xpr_read.exit:
  ret void, !dbg !423
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_addi__xpr__x_0__simm12__() #1 !dbg !424 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !425
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !426
  ret void, !dbg !428
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_addi__xpr__xpr__simm12__() #1 !dbg !429 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !430
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !431
  %add.i = add i32 %u1, %u0, !dbg !433
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %add.i, i1 true), !dbg !435
  ret void, !dbg !437
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__x_0__x_0__simm12__() #1 !dbg !438 {
entry:
  ret void, !dbg !439
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__x_0__xpr__simm12__() #1 !dbg !440 {
MI11rf_xpr_read.exit:
  ret void, !dbg !441
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__xpr__x_0__simm12__() #1 !dbg !442 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !443
  %cmp.i7 = icmp sgt i32 %u0, 0, !dbg !444
  %storemerge11 = zext i1 %cmp.i7 to i32, !dbg !446
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge11, i1 true), !dbg !447
  ret void, !dbg !449
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__xpr__xpr__simm12__() #1 !dbg !450 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !451
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !452
  %cmp.i7 = icmp slt i32 %u1, %u0, !dbg !454
  %storemerge11 = zext i1 %cmp.i7 to i32, !dbg !456
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge11, i1 true), !dbg !457
  ret void, !dbg !459
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__x_0__x_0__simm12__() #1 !dbg !460 {
entry:
  ret void, !dbg !461
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__x_0__xpr__simm12__() #1 !dbg !462 {
MI11rf_xpr_read.exit:
  ret void, !dbg !463
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__xpr__x_0__simm12__() #1 !dbg !464 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !465
  %cmp3.i = icmp ne i32 %u0, 0, !dbg !466
  %storemerge12 = zext i1 %cmp3.i to i32, !dbg !468
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge12, i1 true), !dbg !469
  ret void, !dbg !471
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__xpr__xpr__simm12__() #1 !dbg !472 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !473
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !474
  %cmp3.i = icmp ult i32 %u1, %u0, !dbg !476
  %storemerge12 = zext i1 %cmp3.i to i32, !dbg !478
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge12, i1 true), !dbg !479
  ret void, !dbg !481
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_andi__x_0__x_0__simm12__() #1 !dbg !482 {
entry:
  ret void, !dbg !483
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_andi__x_0__xpr__simm12__() #1 !dbg !484 {
MI11rf_xpr_read.exit:
  ret void, !dbg !485
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_andi__xpr__x_0__simm12__() #1 !dbg !486 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !487
  ret void, !dbg !489
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_andi__xpr__xpr__simm12__() #1 !dbg !490 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !491
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !492
  %and.i = and i32 %u1, %u0, !dbg !494
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %and.i, i1 true), !dbg !496
  ret void, !dbg !498
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_ori__x_0__x_0__simm12__() #1 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_ori__x_0__xpr__simm12__() #1 !dbg !501 {
MI11rf_xpr_read.exit:
  ret void, !dbg !502
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_ori__xpr__x_0__simm12__() #1 !dbg !503 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !504
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !505
  ret void, !dbg !507
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_ori__xpr__xpr__simm12__() #1 !dbg !508 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !509
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !510
  %or.i = or i32 %u1, %u0, !dbg !512
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %or.i, i1 true), !dbg !514
  ret void, !dbg !516
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_xori__x_0__x_0__simm12__() #1 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_xori__x_0__xpr__simm12__() #1 !dbg !519 {
MI11rf_xpr_read.exit:
  ret void, !dbg !520
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_xori__xpr__x_0__simm12__() #1 !dbg !521 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !522
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !523
  ret void, !dbg !525
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_xori__xpr__xpr__simm12__() #1 !dbg !526 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 2, i1 true, i32 12), !dbg !527
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !528
  %xor.i = xor i32 %u1, %u0, !dbg !530
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %xor.i, i1 true), !dbg !532
  ret void, !dbg !534
}

; Function Attrs: noinline readnone
define void @i_branch__opc_beq__x_0__x_0__rel_addr12__() #1 !dbg !535 {
if.end:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !536
  %u126 = and i32 %u0, -2, !dbg !537
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !538
  %add = add i32 %u2, -4, !dbg !539
  %sub4 = add i32 %add, %u126, !dbg !540
  tail call void @llvm.br.anyint.i32(i32 %sub4, i1 true), !dbg !541
  ret void, !dbg !544
}

; Function Attrs: readnone
declare i13 @codasip_immread_int13(i32) #2

; Function Attrs: noinline readnone
define void @i_branch__opc_beq__x_0__xpr__rel_addr12__() #1 !dbg !545 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !546
  %phitmp = icmp eq i32 %u0, 0, !dbg !548
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !549
  %u2 = add i32 %u1, -4, !dbg !550
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !551
  %u427 = and i32 %u3, -2, !dbg !552
  %u6 = add i32 %u2, %u427, !dbg !553
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !554
  ret void, !dbg !556
}

; Function Attrs: noinline readnone
define void @i_branch__opc_beq__xpr__x_0__rel_addr12__() #1 !dbg !557 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !558
  %cmp20.i = icmp eq i32 %u0, 0, !dbg !560
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !562
  %u2 = add i32 %u1, -4, !dbg !563
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !564
  %u430 = and i32 %u3, -2, !dbg !565
  %u6 = add i32 %u2, %u430, !dbg !566
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp20.i), !dbg !567
  ret void, !dbg !569
}

; Function Attrs: noinline readnone
define void @i_branch__opc_beq__xpr__xpr__rel_addr12__() #1 !dbg !570 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !571
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !573
  %cmp20.i = icmp eq i32 %u0, %u1, !dbg !575
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !577
  %u3 = add i32 %u2, -4, !dbg !578
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !579
  %u528 = and i32 %u4, -2, !dbg !580
  %u7 = add i32 %u3, %u528, !dbg !581
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp20.i), !dbg !582
  ret void, !dbg !584
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bne__x_0__x_0__rel_addr12__() #1 !dbg !585 {
if.end:
  ret void, !dbg !586
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bne__x_0__xpr__rel_addr12__() #1 !dbg !587 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !588
  %phitmp = icmp ne i32 %u0, 0, !dbg !590
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !591
  %u2 = add i32 %u1, -4, !dbg !592
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !593
  %u427 = and i32 %u3, -2, !dbg !594
  %u6 = add i32 %u2, %u427, !dbg !595
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !596
  ret void, !dbg !598
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bne__xpr__x_0__rel_addr12__() #1 !dbg !599 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !600
  %cmp26.i = icmp ne i32 %u0, 0, !dbg !602
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !605
  %u2 = add i32 %u1, -4, !dbg !606
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !607
  %u428 = and i32 %u3, -2, !dbg !608
  %u6 = add i32 %u2, %u428, !dbg !609
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp26.i), !dbg !610
  ret void, !dbg !612
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bne__xpr__xpr__rel_addr12__() #1 !dbg !613 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !614
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !616
  %cmp26.i = icmp ne i32 %u0, %u1, !dbg !618
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !620
  %u3 = add i32 %u2, -4, !dbg !621
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !622
  %u528 = and i32 %u4, -2, !dbg !623
  %u7 = add i32 %u3, %u528, !dbg !624
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp26.i), !dbg !625
  ret void, !dbg !627
}

; Function Attrs: noinline readnone
define void @i_branch__opc_blt__x_0__x_0__rel_addr12__() #1 !dbg !628 {
if.end:
  ret void, !dbg !629
}

; Function Attrs: noinline readnone
define void @i_branch__opc_blt__x_0__xpr__rel_addr12__() #1 !dbg !630 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !631
  %phitmp = icmp sgt i32 %u0, 0, !dbg !633
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !634
  %u2 = add i32 %u1, -4, !dbg !635
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !636
  %u427 = and i32 %u3, -2, !dbg !637
  %u6 = add i32 %u2, %u427, !dbg !638
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !639
  ret void, !dbg !641
}

; Function Attrs: noinline readnone
define void @i_branch__opc_blt__xpr__x_0__rel_addr12__() #1 !dbg !642 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !643
  %cmp = icmp slt i32 %u0, 0, !dbg !645
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !646
  %u2 = add i32 %u1, -4, !dbg !647
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !648
  %u430 = and i32 %u3, -2, !dbg !649
  %u6 = add i32 %u2, %u430, !dbg !650
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp), !dbg !651
  ret void, !dbg !653
}

; Function Attrs: noinline readnone
define void @i_branch__opc_blt__xpr__xpr__rel_addr12__() #1 !dbg !654 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !655
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !657
  %cmp32.i = icmp slt i32 %u0, %u1, !dbg !659
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !662
  %u3 = add i32 %u2, -4, !dbg !663
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !664
  %u528 = and i32 %u4, -2, !dbg !665
  %u7 = add i32 %u3, %u528, !dbg !666
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp32.i), !dbg !667
  ret void, !dbg !669
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bltu__x_0__x_0__rel_addr12__() #1 !dbg !670 {
if.end:
  ret void, !dbg !671
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bltu__x_0__xpr__rel_addr12__() #1 !dbg !672 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !673
  %phitmp = icmp ne i32 %u0, 0, !dbg !675
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !676
  %u2 = add i32 %u1, -4, !dbg !677
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !678
  %u427 = and i32 %u3, -2, !dbg !679
  %u6 = add i32 %u2, %u427, !dbg !680
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !681
  ret void, !dbg !683
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bltu__xpr__x_0__rel_addr12__() #1 !dbg !684 {
if.end:
  ret void, !dbg !685
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bltu__xpr__xpr__rel_addr12__() #1 !dbg !686 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !687
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !689
  %cmp38.i = icmp ult i32 %u0, %u1, !dbg !691
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !693
  %u3 = add i32 %u2, -4, !dbg !694
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !695
  %u528 = and i32 %u4, -2, !dbg !696
  %u7 = add i32 %u3, %u528, !dbg !697
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp38.i), !dbg !698
  ret void, !dbg !700
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bge__x_0__x_0__rel_addr12__() #1 !dbg !701 {
if.end:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !702
  %u126 = and i32 %u0, -2, !dbg !703
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !704
  %add = add i32 %u2, -4, !dbg !705
  %sub4 = add i32 %add, %u126, !dbg !706
  tail call void @llvm.br.anyint.i32(i32 %sub4, i1 true), !dbg !707
  ret void, !dbg !709
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bge__x_0__xpr__rel_addr12__() #1 !dbg !710 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !711
  %phitmp = icmp slt i32 %u0, 1, !dbg !713
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !714
  %u2 = add i32 %u1, -4, !dbg !715
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !716
  %u427 = and i32 %u3, -2, !dbg !717
  %u6 = add i32 %u2, %u427, !dbg !718
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !719
  ret void, !dbg !721
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bge__xpr__x_0__rel_addr12__() #1 !dbg !722 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !723
  %cmp44.i = icmp sgt i32 %u0, -1, !dbg !725
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !727
  %u2 = add i32 %u1, -4, !dbg !728
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !729
  %u428 = and i32 %u3, -2, !dbg !730
  %u6 = add i32 %u2, %u428, !dbg !731
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp44.i), !dbg !732
  ret void, !dbg !734
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bge__xpr__xpr__rel_addr12__() #1 !dbg !735 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !736
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !738
  %cmp44.i = icmp sge i32 %u0, %u1, !dbg !740
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !742
  %u3 = add i32 %u2, -4, !dbg !743
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !744
  %u528 = and i32 %u4, -2, !dbg !745
  %u7 = add i32 %u3, %u528, !dbg !746
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp44.i), !dbg !747
  ret void, !dbg !749
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bgeu__x_0__x_0__rel_addr12__() #1 !dbg !750 {
if.end:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !751
  %u126 = and i32 %u0, -2, !dbg !752
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !753
  %add = add i32 %u2, -4, !dbg !754
  %sub4 = add i32 %add, %u126, !dbg !755
  tail call void @llvm.br.anyint.i32(i32 %sub4, i1 true), !dbg !756
  ret void, !dbg !758
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bgeu__x_0__xpr__rel_addr12__() #1 !dbg !759 {
if.else.i12:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !760
  %phitmp = icmp eq i32 %u0, 0, !dbg !762
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !763
  %u2 = add i32 %u1, -4, !dbg !764
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !765
  %u427 = and i32 %u3, -2, !dbg !766
  %u6 = add i32 %u2, %u427, !dbg !767
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !768
  ret void, !dbg !770
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bgeu__xpr__x_0__rel_addr12__() #1 !dbg !771 {
if.end:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !772
  %u127 = and i32 %u0, -2, !dbg !773
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !774
  %add = add i32 %u2, -4, !dbg !775
  %sub7 = add i32 %add, %u127, !dbg !776
  tail call void @llvm.br.anyint.i32(i32 %sub7, i1 true), !dbg !777
  ret void, !dbg !779
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bgeu__xpr__xpr__rel_addr12__() #1 !dbg !780 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !781
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !783
  %cmp50.i = icmp uge i32 %u0, %u1, !dbg !785
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !787
  %u3 = add i32 %u2, -4, !dbg !788
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !789
  %u528 = and i32 %u4, -2, !dbg !790
  %u7 = add i32 %u3, %u528, !dbg !791
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp50.i), !dbg !792
  ret void, !dbg !794
}

; Function Attrs: noinline readnone
define void @i_jal__opc_jal__x_0__rel_addr20__() #1 !dbg !795 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int21_int32(i32 0, i1 true, i32 21), !dbg !796
  %u15 = and i32 %u0, -2, !dbg !797
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !798
  %add = add i32 %u2, -4, !dbg !799
  %sub1 = add i32 %add, %u15, !dbg !800
  tail call void @llvm.br.anyint.i32(i32 %sub1, i1 true), !dbg !801
  ret void, !dbg !803
}

; Function Attrs: readnone
declare i21 @codasip_immread_int21(i32) #2

; Function Attrs: noinline readnone
define void @i_jal__opc_jal__xpr__rel_addr20__() #1 !dbg !804 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int21_int32(i32 1, i1 true, i32 21), !dbg !805
  %u17 = and i32 %u0, -2, !dbg !806
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !807
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u2, i1 true), !dbg !808
  %add = add i32 %u2, -4, !dbg !810
  %sub3 = add i32 %add, %u17, !dbg !811
  tail call void @llvm.br.anyint.i32(i32 %sub3, i1 true), !dbg !812
  ret void, !dbg !814
}

; Function Attrs: noinline readnone
define void @i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__() #1 !dbg !815 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !816
  tail call void @llvm.br.anyint.i32(i32 %u0, i1 true), !dbg !817
  ret void, !dbg !819
}

; Function Attrs: noinline readnone
define void @i_jalr__opc_jalr__x_0__rel_jalr_addr12__xpr__() #1 !dbg !820 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !821
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !822
  %add = add i32 %u1, %u0, !dbg !824
  tail call void @llvm.br.anyint.i32(i32 %add, i1 true), !dbg !825
  ret void, !dbg !827
}

; Function Attrs: noinline readnone
define void @i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__() #1 !dbg !828 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !829
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !830
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u1, i1 true), !dbg !831
  tail call void @llvm.br.anyint.i32(i32 %u0, i1 true), !dbg !833
  ret void, !dbg !835
}

; Function Attrs: noinline readnone
define void @i_jalr__opc_jalr__xpr__rel_jalr_addr12__xpr__() #1 !dbg !836 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !837
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !838
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !840
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u2, i1 true), !dbg !841
  %add = add i32 %u1, %u0, !dbg !843
  tail call void @llvm.br.anyint.i32(i32 %add, i1 true), !dbg !844
  ret void, !dbg !846
}

; Function Attrs: noinline readnone
define void @i_upper_imm__opc_lui__x_0__simm20__() #1 !dbg !847 {
entry:
  ret void, !dbg !848
}

; Function Attrs: readnone
declare i20 @codasip_immread_uint20(i32) #2

; Function Attrs: noinline readnone
define void @i_upper_imm__opc_lui__xpr__simm20__() #1 !dbg !849 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_uint20_uint32(i32 1, i1 false, i32 20), !dbg !850
  %shl = shl nuw i32 %u0, 12, !dbg !851
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %shl, i1 true), !dbg !852
  ret void, !dbg !854
}

; Function Attrs: noinline readnone
define void @i_upper_imm__opc_auipc__x_0__simm20__() #1 !dbg !855 {
entry:
  ret void, !dbg !856
}

; Function Attrs: noinline readnone
define void @i_upper_imm__opc_auipc__xpr__simm20__() #1 !dbg !857 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !858
  %sub = add i32 %u0, -4, !dbg !859
  %u1 = tail call i32 @codasip_immread_extended_uint20_uint32(i32 1, i1 false, i32 20), !dbg !860
  %shl = shl nuw i32 %u1, 12, !dbg !861
  %add.i = add i32 %sub, %shl, !dbg !862
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %add.i, i1 true), !dbg !864
  ret void, !dbg !866
}

; Function Attrs: noinline readnone
define void @i_load__opc_lb__x_0__simm12__x_0__() #1 !dbg !867 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !868
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !869
  %u1 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %u0, i32 0), !dbg !870
  ret void, !dbg !875
}

declare void @codasip_compiler_schedule_class(i32) #0

; Function Attrs: noinline readnone
define void @i_load__opc_lb__x_0__simm12__xpr__() #1 !dbg !876 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !877
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !878
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !879
  %add = add i32 %u1, %u0, !dbg !881
  %u2 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %add, i32 0), !dbg !882
  ret void, !dbg !885
}

; Function Attrs: noinline readnone
define void @i_load__opc_lb__xpr__simm12__x_0__() #1 !dbg !886 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !887
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !888
  %u1 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %u0, i32 0), !dbg !889
  %conv4.i = sext i8 %u1 to i32, !dbg !892
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv4.i, i1 true), !dbg !893
  ret void, !dbg !895
}

; Function Attrs: noinline readnone
define void @i_load__opc_lb__xpr__simm12__xpr__() #1 !dbg !896 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !897
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !898
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !899
  %add = add i32 %u1, %u0, !dbg !901
  %u2 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %add, i32 0), !dbg !902
  %conv4.i = sext i8 %u2 to i32, !dbg !905
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv4.i, i1 true), !dbg !906
  ret void, !dbg !908
}

; Function Attrs: noinline readnone
define void @i_load__opc_lh__x_0__simm12__x_0__() #1 !dbg !909 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !910
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !911
  %u1 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %u0, i32 0), !dbg !912
  ret void, !dbg !915
}

; Function Attrs: noinline readnone
define void @i_load__opc_lh__x_0__simm12__xpr__() #1 !dbg !916 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !917
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !918
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !919
  %add = add i32 %u1, %u0, !dbg !921
  %u2 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %add, i32 0), !dbg !922
  ret void, !dbg !925
}

; Function Attrs: noinline readnone
define void @i_load__opc_lh__xpr__simm12__x_0__() #1 !dbg !926 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !927
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !928
  %u1 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %u0, i32 0), !dbg !929
  %conv7.i = sext i16 %u1 to i32, !dbg !932
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv7.i, i1 true), !dbg !933
  ret void, !dbg !935
}

; Function Attrs: noinline readnone
define void @i_load__opc_lh__xpr__simm12__xpr__() #1 !dbg !936 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !937
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !938
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !939
  %add = add i32 %u1, %u0, !dbg !941
  %u2 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %add, i32 0), !dbg !942
  %conv7.i = sext i16 %u2 to i32, !dbg !945
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv7.i, i1 true), !dbg !946
  ret void, !dbg !948
}

; Function Attrs: noinline readnone
define void @i_load__opc_lw__x_0__simm12__x_0__() #1 !dbg !949 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !950
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !951
  %u1 = tail call i32 @llvm.memread.anyint.i32.i32(i32 %u0, i32 0), !dbg !952
  ret void, !dbg !955
}

; Function Attrs: noinline readnone
define void @i_load__opc_lw__x_0__simm12__xpr__() #1 !dbg !956 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !957
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !958
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !959
  %add = add i32 %u1, %u0, !dbg !961
  %u2 = tail call i32 @llvm.memread.anyint.i32.i32(i32 %add, i32 0), !dbg !962
  ret void, !dbg !965
}

; Function Attrs: noinline readnone
define void @i_load__opc_lw__xpr__simm12__x_0__() #1 !dbg !966 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !967
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !968
  %u1 = tail call i32 @llvm.memread.anyint.i32.i32(i32 %u0, i32 0), !dbg !969
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u1, i1 true), !dbg !972
  ret void, !dbg !974
}

; Function Attrs: noinline readnone
define void @i_load__opc_lw__xpr__simm12__xpr__() #1 !dbg !975 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !976
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !977
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !978
  %add = add i32 %u1, %u0, !dbg !980
  %u2 = tail call i32 @llvm.memread.anyint.i32.i32(i32 %add, i32 0), !dbg !981
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u2, i1 true), !dbg !984
  ret void, !dbg !986
}

; Function Attrs: noinline readnone
define void @i_load__opc_lbu__x_0__simm12__x_0__() #1 !dbg !987 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !988
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !989
  %u1 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %u0, i32 0), !dbg !990
  ret void, !dbg !993
}

; Function Attrs: noinline readnone
define void @i_load__opc_lbu__x_0__simm12__xpr__() #1 !dbg !994 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !995
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !996
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !997
  %add = add i32 %u1, %u0, !dbg !999
  %u2 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %add, i32 0), !dbg !1000
  ret void, !dbg !1003
}

; Function Attrs: noinline readnone
define void @i_load__opc_lbu__xpr__simm12__x_0__() #1 !dbg !1004 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1005
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1006
  %u1 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %u0, i32 0), !dbg !1007
  %conv.i.i = zext i8 %u1 to i32, !dbg !1007
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv.i.i, i1 true), !dbg !1010
  ret void, !dbg !1012
}

; Function Attrs: noinline readnone
define void @i_load__opc_lbu__xpr__simm12__xpr__() #1 !dbg !1013 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1014
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1015
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !1016
  %add = add i32 %u1, %u0, !dbg !1018
  %u2 = tail call i8 @llvm.memread.anyint.i8.i32(i32 %add, i32 0), !dbg !1019
  %conv.i.i = zext i8 %u2 to i32, !dbg !1019
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv.i.i, i1 true), !dbg !1022
  ret void, !dbg !1024
}

; Function Attrs: noinline readnone
define void @i_load__opc_lhu__x_0__simm12__x_0__() #1 !dbg !1025 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1026
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1027
  %u1 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %u0, i32 0), !dbg !1028
  ret void, !dbg !1031
}

; Function Attrs: noinline readnone
define void @i_load__opc_lhu__x_0__simm12__xpr__() #1 !dbg !1032 {
MI4load.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1033
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1034
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1035
  %add = add i32 %u1, %u0, !dbg !1037
  %u2 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %add, i32 0), !dbg !1038
  ret void, !dbg !1041
}

; Function Attrs: noinline readnone
define void @i_load__opc_lhu__xpr__simm12__x_0__() #1 !dbg !1042 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1043
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1044
  %u1 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %u0, i32 0), !dbg !1045
  %conv5.i.i = zext i16 %u1 to i32, !dbg !1045
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv5.i.i, i1 true), !dbg !1048
  ret void, !dbg !1050
}

; Function Attrs: noinline readnone
define void @i_load__opc_lhu__xpr__simm12__xpr__() #1 !dbg !1051 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1052
  tail call void @codasip_compiler_schedule_class(i32 0) #4, !dbg !1053
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !1054
  %add = add i32 %u1, %u0, !dbg !1056
  %u2 = tail call i16 @llvm.memread.anyint.i16.i32(i32 %add, i32 0), !dbg !1057
  %conv5.i.i = zext i16 %u2 to i32, !dbg !1057
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %conv5.i.i, i1 true), !dbg !1060
  ret void, !dbg !1062
}

; Function Attrs: noinline readnone
define void @i_store__opc_sb__x_0__simm12__x_0__() #1 !dbg !1063 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1064
  tail call void @llvm.memwrite.anyint.i32.i8(i32 %u0, i32 0, i8 0), !dbg !1065
  ret void, !dbg !1070
}

; Function Attrs: noinline readnone
define void @i_store__opc_sb__x_0__simm12__xpr__() #1 !dbg !1071 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1072
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1073
  %add = add i32 %u1, %u0, !dbg !1075
  tail call void @llvm.memwrite.anyint.i32.i8(i32 %add, i32 0, i8 0), !dbg !1076
  ret void, !dbg !1079
}

; Function Attrs: noinline readnone
define void @i_store__opc_sb__xpr__simm12__x_0__() #1 !dbg !1080 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1081
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1082
  %phitmp = trunc i32 %u1 to i8, !dbg !1084
  tail call void @llvm.memwrite.anyint.i32.i8(i32 %u0, i32 0, i8 %phitmp), !dbg !1085
  ret void, !dbg !1088
}

; Function Attrs: noinline readnone
define void @i_store__opc_sb__xpr__simm12__xpr__() #1 !dbg !1089 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1090
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !1091
  %add = add i32 %u1, %u0, !dbg !1093
  %u2 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1094
  %phitmp = trunc i32 %u2 to i8, !dbg !1096
  tail call void @llvm.memwrite.anyint.i32.i8(i32 %add, i32 0, i8 %phitmp), !dbg !1097
  ret void, !dbg !1100
}

; Function Attrs: noinline readnone
define void @i_store__opc_sh__x_0__simm12__x_0__() #1 !dbg !1101 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1102
  tail call void @llvm.memwrite.anyint.i32.i16(i32 %u0, i32 0, i16 0), !dbg !1103
  ret void, !dbg !1106
}

; Function Attrs: noinline readnone
define void @i_store__opc_sh__x_0__simm12__xpr__() #1 !dbg !1107 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1108
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1109
  %add = add i32 %u1, %u0, !dbg !1111
  tail call void @llvm.memwrite.anyint.i32.i16(i32 %add, i32 0, i16 0), !dbg !1112
  ret void, !dbg !1115
}

; Function Attrs: noinline readnone
define void @i_store__opc_sh__xpr__simm12__x_0__() #1 !dbg !1116 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1117
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1118
  %phitmp = trunc i32 %u1 to i16, !dbg !1120
  tail call void @llvm.memwrite.anyint.i32.i16(i32 %u0, i32 0, i16 %phitmp), !dbg !1121
  ret void, !dbg !1124
}

; Function Attrs: noinline readnone
define void @i_store__opc_sh__xpr__simm12__xpr__() #1 !dbg !1125 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1126
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !1127
  %add = add i32 %u1, %u0, !dbg !1129
  %u2 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1130
  %phitmp = trunc i32 %u2 to i16, !dbg !1132
  tail call void @llvm.memwrite.anyint.i32.i16(i32 %add, i32 0, i16 %phitmp), !dbg !1133
  ret void, !dbg !1136
}

; Function Attrs: noinline readnone
define void @i_store__opc_sw__x_0__simm12__x_0__() #1 !dbg !1137 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1138
  tail call void @llvm.memwrite.anyint.i32.i32(i32 %u0, i32 0, i32 0), !dbg !1139
  ret void, !dbg !1142
}

; Function Attrs: noinline readnone
define void @i_store__opc_sw__x_0__simm12__xpr__() #1 !dbg !1143 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 0, i1 true, i32 12), !dbg !1144
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1145
  %add = add i32 %u1, %u0, !dbg !1147
  tail call void @llvm.memwrite.anyint.i32.i32(i32 %add, i32 0, i32 0), !dbg !1148
  ret void, !dbg !1151
}

; Function Attrs: noinline readnone
define void @i_store__opc_sw__xpr__simm12__x_0__() #1 !dbg !1152 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1153
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1154
  tail call void @llvm.memwrite.anyint.i32.i32(i32 %u0, i32 0, i32 %u1), !dbg !1156
  ret void, !dbg !1159
}

; Function Attrs: noinline readnone
define void @i_store__opc_sw__xpr__simm12__xpr__() #1 !dbg !1160 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1161
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2), !dbg !1162
  %add = add i32 %u1, %u0, !dbg !1164
  %u2 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1165
  tail call void @llvm.memwrite.anyint.i32.i32(i32 %add, i32 0, i32 %u2), !dbg !1167
  ret void, !dbg !1170
}

; Function Attrs: noinline readnone
define void @i_li_alias__x_0__simm12__() #1 !dbg !1171 {
entry:
  ret void, !dbg !1172
}

; Function Attrs: noinline readnone
define void @i_li_alias__xpr__simm12__() #1 !dbg !1173 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @codasip_immread_extended_int12_int32(i32 1, i1 true, i32 12), !dbg !1174
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !1175
  ret void, !dbg !1177
}

; Function Attrs: noinline readnone
define void @i_mv_alias__x_0__x_0__() #1 !dbg !1178 {
entry:
  ret void, !dbg !1179
}

; Function Attrs: noinline readnone
define void @i_mv_alias__x_0__xpr__() #1 !dbg !1180 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1181
}

; Function Attrs: noinline readnone
define void @i_mv_alias__xpr__x_0__() #1 !dbg !1182 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !1183
  ret void, !dbg !1185
}

; Function Attrs: noinline readnone
define void @i_mv_alias__xpr__xpr__() #1 !dbg !1186 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1187
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %u0, i1 true), !dbg !1189
  ret void, !dbg !1191
}

; Function Attrs: noinline readnone
define void @i_not_alias__x_0__x_0__() #1 !dbg !1192 {
entry:
  ret void, !dbg !1193
}

; Function Attrs: noinline readnone
define void @i_not_alias__x_0__xpr__() #1 !dbg !1194 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1195
}

; Function Attrs: noinline readnone
define void @i_not_alias__xpr__x_0__() #1 !dbg !1196 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 -1, i1 true), !dbg !1197
  ret void, !dbg !1199
}

; Function Attrs: noinline readnone
define void @i_not_alias__xpr__xpr__() #1 !dbg !1200 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1201
  %phitmp = xor i32 %u0, -1, !dbg !1203
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %phitmp, i1 true), !dbg !1204
  ret void, !dbg !1206
}

; Function Attrs: noinline readnone
define void @i_neg_alias__x_0__x_0__() #1 !dbg !1207 {
entry:
  ret void, !dbg !1208
}

; Function Attrs: noinline readnone
define void @i_neg_alias__x_0__xpr__() #1 !dbg !1209 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1210
}

; Function Attrs: noinline readnone
define void @i_neg_alias__xpr__x_0__() #1 !dbg !1211 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !1212
  ret void, !dbg !1214
}

; Function Attrs: noinline readnone
define void @i_neg_alias__xpr__xpr__() #1 !dbg !1215 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1216
  %add = sub i32 0, %u0, !dbg !1218
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %add, i1 true), !dbg !1219
  ret void, !dbg !1221
}

; Function Attrs: noinline readnone
define void @i_seqz_alias__x_0__x_0__() #1 !dbg !1222 {
entry:
  ret void, !dbg !1223
}

; Function Attrs: noinline readnone
define void @i_seqz_alias__x_0__xpr__() #1 !dbg !1224 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1225
}

; Function Attrs: noinline readnone
define void @i_seqz_alias__xpr__x_0__() #1 !dbg !1226 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 1, i1 true), !dbg !1227
  ret void, !dbg !1230
}

; Function Attrs: noinline readnone
define void @i_seqz_alias__xpr__xpr__() #1 !dbg !1231 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1232
  %phitmp = icmp eq i32 %u0, 0, !dbg !1234
  %. = zext i1 %phitmp to i32, !dbg !1235
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %., i1 true), !dbg !1236
  ret void, !dbg !1239
}

; Function Attrs: noinline readnone
define void @i_snez_alias__x_0__x_0__() #1 !dbg !1240 {
entry:
  ret void, !dbg !1241
}

; Function Attrs: noinline readnone
define void @i_snez_alias__x_0__xpr__() #1 !dbg !1242 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1243
}

; Function Attrs: noinline readnone
define void @i_snez_alias__xpr__x_0__() #1 !dbg !1244 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !1245
  ret void, !dbg !1248
}

; Function Attrs: noinline readnone
define void @i_snez_alias__xpr__xpr__() #1 !dbg !1249 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1250
  %phitmp = icmp ne i32 %u0, 0, !dbg !1252
  %. = zext i1 %phitmp to i32, !dbg !1253
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %., i1 true), !dbg !1254
  ret void, !dbg !1257
}

; Function Attrs: noinline readnone
define void @i_sltz_alias__x_0__x_0__() #1 !dbg !1258 {
entry:
  ret void, !dbg !1259
}

; Function Attrs: noinline readnone
define void @i_sltz_alias__x_0__xpr__() #1 !dbg !1260 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1261
}

; Function Attrs: noinline readnone
define void @i_sltz_alias__xpr__x_0__() #1 !dbg !1262 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !1263
  ret void, !dbg !1266
}

; Function Attrs: noinline readnone
define void @i_sltz_alias__xpr__xpr__() #1 !dbg !1267 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1268
  %.lobit = lshr i32 %u0, 31, !dbg !1270
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %.lobit, i1 true), !dbg !1271
  ret void, !dbg !1274
}

; Function Attrs: noinline readnone
define void @i_sgtz_alias__x_0__x_0__() #1 !dbg !1275 {
entry:
  ret void, !dbg !1276
}

; Function Attrs: noinline readnone
define void @i_sgtz_alias__x_0__xpr__() #1 !dbg !1277 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1278
}

; Function Attrs: noinline readnone
define void @i_sgtz_alias__xpr__x_0__() #1 !dbg !1279 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true), !dbg !1280
  ret void, !dbg !1283
}

; Function Attrs: noinline readnone
define void @i_sgtz_alias__xpr__xpr__() #1 !dbg !1284 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1285
  %phitmp = icmp sgt i32 %u0, 0, !dbg !1287
  %. = zext i1 %phitmp to i32, !dbg !1288
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %., i1 true), !dbg !1289
  ret void, !dbg !1292
}

; Function Attrs: noinline readnone
define void @i_beqz_alias__x_0__rel_addr12__() #1 !dbg !1293 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !1294
  %u11 = and i32 %u0, -2, !dbg !1295
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1296
  %add = add i32 %u2, -4, !dbg !1297
  %sub2 = add i32 %add, %u11, !dbg !1298
  tail call void @llvm.br.anyint.i32(i32 %sub2, i1 true), !dbg !1299
  ret void, !dbg !1301
}

; Function Attrs: noinline readnone
define void @i_beqz_alias__xpr__rel_addr12__() #1 !dbg !1302 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1303
  %phitmp = icmp eq i32 %u0, 0, !dbg !1305
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1306
  %u2 = add i32 %u1, -4, !dbg !1307
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1308
  %u43 = and i32 %u3, -2, !dbg !1309
  %u6 = add i32 %u2, %u43, !dbg !1310
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1311
  ret void, !dbg !1313
}

; Function Attrs: noinline readnone
define void @i_bnez_alias__x_0__rel_addr12__() #1 !dbg !1314 {
entry:
  ret void, !dbg !1315
}

; Function Attrs: noinline readnone
define void @i_bnez_alias__xpr__rel_addr12__() #1 !dbg !1316 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1317
  %phitmp = icmp ne i32 %u0, 0, !dbg !1319
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1320
  %u2 = add i32 %u1, -4, !dbg !1321
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1322
  %u43 = and i32 %u3, -2, !dbg !1323
  %u6 = add i32 %u2, %u43, !dbg !1324
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1325
  ret void, !dbg !1327
}

; Function Attrs: noinline readnone
define void @i_blez_alias__x_0__rel_addr12__() #1 !dbg !1328 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !1329
  %u11 = and i32 %u0, -2, !dbg !1330
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1331
  %add = add i32 %u2, -4, !dbg !1332
  %sub2 = add i32 %add, %u11, !dbg !1333
  tail call void @llvm.br.anyint.i32(i32 %sub2, i1 true), !dbg !1334
  ret void, !dbg !1336
}

; Function Attrs: noinline readnone
define void @i_blez_alias__xpr__rel_addr12__() #1 !dbg !1337 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1338
  %phitmp = icmp slt i32 %u0, 1, !dbg !1340
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1341
  %u2 = add i32 %u1, -4, !dbg !1342
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1343
  %u43 = and i32 %u3, -2, !dbg !1344
  %u6 = add i32 %u2, %u43, !dbg !1345
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1346
  ret void, !dbg !1348
}

; Function Attrs: noinline readnone
define void @i_bgez_alias__x_0__rel_addr12__() #1 !dbg !1349 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !1350
  %u11 = and i32 %u0, -2, !dbg !1351
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1352
  %add = add i32 %u2, -4, !dbg !1353
  %sub2 = add i32 %add, %u11, !dbg !1354
  tail call void @llvm.br.anyint.i32(i32 %sub2, i1 true), !dbg !1355
  ret void, !dbg !1357
}

; Function Attrs: noinline readnone
define void @i_bgez_alias__xpr__rel_addr12__() #1 !dbg !1358 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1359
  %phitmp = icmp sgt i32 %u0, -1, !dbg !1361
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1362
  %u2 = add i32 %u1, -4, !dbg !1363
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1364
  %u43 = and i32 %u3, -2, !dbg !1365
  %u6 = add i32 %u2, %u43, !dbg !1366
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1367
  ret void, !dbg !1369
}

; Function Attrs: noinline readnone
define void @i_bltz_alias__x_0__rel_addr12__() #1 !dbg !1370 {
entry:
  ret void, !dbg !1371
}

; Function Attrs: noinline readnone
define void @i_bltz_alias__xpr__rel_addr12__() #1 !dbg !1372 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1373
  %phitmp = icmp slt i32 %u0, 0, !dbg !1375
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1376
  %u2 = add i32 %u1, -4, !dbg !1377
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1378
  %u43 = and i32 %u3, -2, !dbg !1379
  %u6 = add i32 %u2, %u43, !dbg !1380
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1381
  ret void, !dbg !1383
}

; Function Attrs: noinline readnone
define void @i_bgtz_alias__x_0__rel_addr12__() #1 !dbg !1384 {
entry:
  ret void, !dbg !1385
}

; Function Attrs: noinline readnone
define void @i_bgtz_alias__xpr__rel_addr12__() #1 !dbg !1386 {
if.else.i:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1387
  %phitmp = icmp sgt i32 %u0, 0, !dbg !1389
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1390
  %u2 = add i32 %u1, -4, !dbg !1391
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1392
  %u43 = and i32 %u3, -2, !dbg !1393
  %u6 = add i32 %u2, %u43, !dbg !1394
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1395
  ret void, !dbg !1397
}

; Function Attrs: noinline readnone
define void @i_bgt_alias__x_0__x_0__rel_addr12__() #1 !dbg !1398 {
if.end:
  ret void, !dbg !1399
}

; Function Attrs: noinline readnone
define void @i_bgt_alias__x_0__xpr__rel_addr12__() #1 !dbg !1400 {
if.else.i8:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1401
  %phitmp = icmp slt i32 %u0, 0, !dbg !1403
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1404
  %u2 = add i32 %u1, -4, !dbg !1405
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1406
  %u412 = and i32 %u3, -2, !dbg !1407
  %u6 = add i32 %u2, %u412, !dbg !1408
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1409
  ret void, !dbg !1411
}

; Function Attrs: noinline readnone
define void @i_bgt_alias__xpr__x_0__rel_addr12__() #1 !dbg !1412 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1413
  %cmp = icmp sgt i32 %u0, 0, !dbg !1415
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1416
  %u2 = add i32 %u1, -4, !dbg !1417
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1418
  %u413 = and i32 %u3, -2, !dbg !1419
  %u6 = add i32 %u2, %u413, !dbg !1420
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp), !dbg !1421
  ret void, !dbg !1423
}

; Function Attrs: noinline readnone
define void @i_bgt_alias__xpr__xpr__rel_addr12__() #1 !dbg !1424 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1425
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1427
  %cmp = icmp sgt i32 %u0, %u1, !dbg !1429
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1430
  %u3 = add i32 %u2, -4, !dbg !1431
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !1432
  %u513 = and i32 %u4, -2, !dbg !1433
  %u7 = add i32 %u3, %u513, !dbg !1434
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp), !dbg !1435
  ret void, !dbg !1437
}

; Function Attrs: noinline readnone
define void @i_ble_alias__x_0__x_0__rel_addr12__() #1 !dbg !1438 {
if.end:
  %u0 = tail call i32 @codasip_immread_extended_int13_int32(i32 0, i1 true, i32 13), !dbg !1439
  %u111 = and i32 %u0, -2, !dbg !1440
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1441
  %add = add i32 %u2, -4, !dbg !1442
  %sub3 = add i32 %add, %u111, !dbg !1443
  tail call void @llvm.br.anyint.i32(i32 %sub3, i1 true), !dbg !1444
  ret void, !dbg !1446
}

; Function Attrs: noinline readnone
define void @i_ble_alias__x_0__xpr__rel_addr12__() #1 !dbg !1447 {
if.else.i8:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1448
  %phitmp = icmp sgt i32 %u0, -1, !dbg !1450
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1451
  %u2 = add i32 %u1, -4, !dbg !1452
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1453
  %u412 = and i32 %u3, -2, !dbg !1454
  %u6 = add i32 %u2, %u412, !dbg !1455
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1456
  ret void, !dbg !1458
}

; Function Attrs: noinline readnone
define void @i_ble_alias__xpr__x_0__rel_addr12__() #1 !dbg !1459 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1460
  %cmp = icmp slt i32 %u0, 1, !dbg !1462
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1463
  %u2 = add i32 %u1, -4, !dbg !1464
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1465
  %u413 = and i32 %u3, -2, !dbg !1466
  %u6 = add i32 %u2, %u413, !dbg !1467
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp), !dbg !1468
  ret void, !dbg !1470
}

; Function Attrs: noinline readnone
define void @i_ble_alias__xpr__xpr__rel_addr12__() #1 !dbg !1471 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1472
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1474
  %cmp = icmp sle i32 %u0, %u1, !dbg !1476
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1477
  %u3 = add i32 %u2, -4, !dbg !1478
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !1479
  %u513 = and i32 %u4, -2, !dbg !1480
  %u7 = add i32 %u3, %u513, !dbg !1481
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp), !dbg !1482
  ret void, !dbg !1484
}

; Function Attrs: noinline readnone
define void @i_bgtu_alias__x_0__x_0__rel_addr12__() #1 !dbg !1485 {
if.end:
  ret void, !dbg !1486
}

; Function Attrs: noinline readnone
define void @i_bgtu_alias__x_0__xpr__rel_addr12__() #1 !dbg !1487 {
if.end:
  ret void, !dbg !1488
}

; Function Attrs: noinline readnone
define void @i_bgtu_alias__xpr__x_0__rel_addr12__() #1 !dbg !1489 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1490
  %cmp = icmp ne i32 %u0, 0, !dbg !1492
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1493
  %u2 = add i32 %u1, -4, !dbg !1494
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1495
  %u413 = and i32 %u3, -2, !dbg !1496
  %u6 = add i32 %u2, %u413, !dbg !1497
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %cmp), !dbg !1498
  ret void, !dbg !1500
}

; Function Attrs: noinline readnone
define void @i_bgtu_alias__xpr__xpr__rel_addr12__() #1 !dbg !1501 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1502
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1504
  %cmp = icmp ugt i32 %u0, %u1, !dbg !1506
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1507
  %u3 = add i32 %u2, -4, !dbg !1508
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !1509
  %u513 = and i32 %u4, -2, !dbg !1510
  %u7 = add i32 %u3, %u513, !dbg !1511
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp), !dbg !1512
  ret void, !dbg !1514
}

; Function Attrs: noinline readnone
define void @i_bleu_alias__x_0__x_0__rel_addr12__() #1 !dbg !1515 {
entry:
  ret void, !dbg !1516
}

; Function Attrs: noinline readnone
define void @i_bleu_alias__x_0__xpr__rel_addr12__() #1 !dbg !1517 {
if.else.i8:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1518
  %phitmp = icmp ne i32 %u0, 0, !dbg !1520
  %u1 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1521
  %u2 = add i32 %u1, -4, !dbg !1522
  %u3 = tail call i32 @codasip_immread_extended_int13_int32(i32 1, i1 true, i32 13), !dbg !1523
  %u412 = and i32 %u3, -2, !dbg !1524
  %u6 = add i32 %u2, %u412, !dbg !1525
  tail call void @llvm.br.anyint.i32(i32 %u6, i1 %phitmp), !dbg !1526
  ret void, !dbg !1528
}

; Function Attrs: noinline readnone
define void @i_bleu_alias__xpr__x_0__rel_addr12__() #1 !dbg !1529 {
MI11rf_xpr_read.exit:
  ret void, !dbg !1530
}

; Function Attrs: noinline readnone
define void @i_bleu_alias__xpr__xpr__rel_addr12__() #1 !dbg !1531 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1532
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1), !dbg !1534
  %cmp = icmp ult i32 %u0, %u1, !dbg !1536
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1537
  %u3 = add i32 %u2, -4, !dbg !1538
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13), !dbg !1539
  %u513 = and i32 %u4, -2, !dbg !1540
  %u7 = add i32 %u3, %u513, !dbg !1541
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp), !dbg !1542
  ret void, !dbg !1544
}

; Function Attrs: noinline readnone
define void @i_j_alias__rel_addr20__() #1 !dbg !1545 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int21_int32(i32 0, i1 true, i32 21), !dbg !1546
  %u15 = and i32 %u0, -2, !dbg !1547
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1548
  %add = add i32 %u2, -4, !dbg !1549
  %sub1 = add i32 %add, %u15, !dbg !1550
  tail call void @llvm.br.anyint.i32(i32 %sub1, i1 true), !dbg !1551
  ret void, !dbg !1553
}

; Function Attrs: noinline readnone
define void @i_jr_alias__x_0__() #1 !dbg !1554 {
entry:
  tail call void @llvm.br.anyint.i32(i32 0, i1 true), !dbg !1555
  ret void, !dbg !1557
}

; Function Attrs: noinline readnone
define void @i_jr_alias__xpr__() #1 !dbg !1558 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1559
  tail call void @llvm.br.anyint.i32(i32 %u0, i1 true), !dbg !1561
  ret void, !dbg !1563
}

; Function Attrs: noinline readnone
define void @i_ret_alias__() #1 !dbg !1564 {
entry:
  %u0 = tail call i32 @llvm.regread.anyint.i32(i32 35, i32 1), !dbg !1565
  tail call void @llvm.br.anyint.i32(i32 %u0, i1 true), !dbg !1567
  ret void, !dbg !1569
}

; Function Attrs: noinline readnone
define void @i_call_alias__rel_addr20__() #1 !dbg !1570 {
entry:
  %u0 = tail call i32 @codasip_immread_extended_int21_int32(i32 0, i1 true, i32 21), !dbg !1571
  %u17 = and i32 %u0, -2, !dbg !1572
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1573
  tail call void @llvm.regwrite.anyint.i32(i32 35, i32 1, i32 %u2, i1 true), !dbg !1574
  %add = add i32 %u2, -4, !dbg !1576
  %sub1 = add i32 %add, %u17, !dbg !1577
  tail call void @llvm.br.anyint.i32(i32 %sub1, i1 true), !dbg !1578
  ret void, !dbg !1580
}

; Function Attrs: noinline readnone
define void @i_call_reg_alias__x_0__() #1 !dbg !1581 {
entry:
  %u0 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1582
  tail call void @llvm.regwrite.anyint.i32(i32 35, i32 1, i32 %u0, i1 true), !dbg !1583
  tail call void @llvm.br.anyint.i32(i32 0, i1 true), !dbg !1585
  ret void, !dbg !1587
}

; Function Attrs: noinline readnone
define void @i_call_reg_alias__xpr__() #1 !dbg !1588 {
MI11rf_xpr_read.exit:
  %u0 = tail call i32 @llvm.getnextpc.anyint.i32(), !dbg !1589
  tail call void @llvm.regwrite.anyint.i32(i32 35, i32 1, i32 %u0, i1 true), !dbg !1590
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0), !dbg !1592
  %phitmp = and i32 %u1, -4, !dbg !1594
  tail call void @llvm.br.anyint.i32(i32 %phitmp, i1 true), !dbg !1595
  ret void, !dbg !1597
}

; Function Attrs: noinline readnone
define void @e_movi32__() #1 !dbg !1598 {
entry:
  %call = tail call i32 @codasip_immread_uint32(i32 1) #5, !dbg !1599
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %call, i1 true), !dbg !1600
  ret void, !dbg !1601
}

; Function Attrs: readnone
declare i32 @codasip_immread_uint32(i32) #2

; Function Attrs: argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: readnone
declare i32 @llvm.regread.anyint.i32(i32, i32) #4

; Function Attrs: readnone
declare i32 @llvm.getnextpc.anyint.i32() #4

; Function Attrs: argmemonly
declare void @llvm.br.anyint.i32(i32, i1) #3

; Function Attrs: argmemonly
declare void @llvm.regwrite.anyint.i32(i32, i32, i32, i1) #3

; Function Attrs: readnone
declare i32 @llvm.propagatedregopindex.i32(i32, i32, i32) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.regopread.anyint.i32(i32, i32) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.regopwrite.anyint.i32(i32, i32, i32, i1) #6

; Function Attrs: argmemonly nounwind
declare i8 @llvm.memread.anyint.i8.i32(i32, i32) #6

; Function Attrs: argmemonly nounwind
declare i16 @llvm.memread.anyint.i16.i32(i32, i32) #6

; Function Attrs: argmemonly nounwind
declare i32 @llvm.memread.anyint.i32.i32(i32, i32) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memwrite.anyint.i32.i8(i32, i32, i8) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memwrite.anyint.i32.i16(i32, i32, i16) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memwrite.anyint.i32.i32(i32, i32, i32) #6

declare i32 @codasip_immread_extended_uint5_uint32(i32, i1, i32)

declare i32 @codasip_immread_extended_int12_int32(i32, i1, i32)

declare i32 @codasip_immread_extended_int13_int32(i32, i1, i32)

declare i32 @codasip_immread_extended_int21_int32(i32, i1, i32)

declare i32 @codasip_immread_extended_uint20_uint32(i32, i1, i32)

; Function Attrs: noinline readnone
define void @i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__() #1 !dbg !89 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2)
  %cmp.i7 = icmp sgt i32 %u1, %u0
  %storemerge21 = zext i1 %cmp.i7 to i32
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge21, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__() #1 !dbg !125 {
MI12rf_xpr_write.exit:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 2)
  %cmp3.i = icmp ugt i32 %u1, %u0
  %storemerge22 = zext i1 %cmp3.i to i32
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 %storemerge22, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__() #1 !dbg !442 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 1, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__() #1 !dbg !442 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__() #1 !dbg !464 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 1, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__() #1 !dbg !464 {
MI12rf_xpr_write.exit:
  tail call void @llvm.regopwrite.anyint.i32(i32 0, i32 0, i32 0, i1 true)
  ret void
}

; Function Attrs: noinline readnone
define void @i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !654 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp32.i = icmp sgt i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp32.i)
  ret void
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !686 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp38.i = icmp ugt i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp38.i)
  ret void
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !735 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp44.i = icmp sle i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp44.i)
  ret void
}

; Function Attrs: noinline readnone
define void @i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !780 {
MI11rf_xpr_read.exit13:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp50.i = icmp ule i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp50.i)
  ret void
}

; Function Attrs: noinline readnone
define void @i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !1424 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp = icmp slt i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp)
  ret void
}

; Function Attrs: noinline readnone
define void @i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !1471 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp = icmp sge i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp)
  ret void
}

; Function Attrs: noinline readnone
define void @i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !1501 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp = icmp ult i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp)
  ret void
}

; Function Attrs: noinline readnone
define void @i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__() #1 !dbg !1531 {
MI11rf_xpr_read.exit9:
  %u0 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 0)
  %u1 = tail call i32 @llvm.regopread.anyint.i32(i32 0, i32 1)
  %cmp = icmp ugt i32 %u1, %u0
  %u2 = tail call i32 @llvm.getnextpc.anyint.i32()
  %u3 = add i32 %u2, -4
  %u4 = tail call i32 @codasip_immread_extended_int13_int32(i32 2, i1 true, i32 13)
  %u51 = and i32 %u4, -2
  %u7 = add i32 %u3, %u51
  tail call void @llvm.br.anyint.i32(i32 %u7, i1 %cmp)
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly }
attributes #4 = { readnone }
attributes #5 = { nounwind readnone }
attributes #6 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.0 (ssh://git@codasip3/codasip-studio/clang 826c376626b21fd859a13fe6cf358d2df042f8ba) (ssh://git@codasip3/codasip-studio/llvm 040b9be32c5922fedcd15071dda9d541ff874fa0)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "c:\5Cusers\5Cboskin\5Ccodasip\5Crisc_v5\5Cwork\5Ctmp\5Csemantics\5Cse_instrsem.c", directory: "c:\5Cusers\5Cboskin\5Ccodasip\5Crisc_v5\5Cwork\5Ctmp\5Csemantics")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (ssh://git@codasip3/codasip-studio/clang 826c376626b21fd859a13fe6cf358d2df042f8ba) (ssh://git@codasip3/codasip-studio/llvm 040b9be32c5922fedcd15071dda9d541ff874fa0)"}
!6 = distinct !DISubprogram(name: "i_nop_alias__", scope: !7, file: !7, line: 277, type: !8, isLocal: false, isDefinition: true, scopeLine: 278, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "c:/users/boskin/codasip/risc_v5/model/ia/other/ia_utils.codal", directory: "c:\5Cusers\5Cboskin\5Ccodasip\5Crisc_v5\5Cwork\5Ctmp\5Csemantics")
!8 = !DISubroutineType(types: !2)
!9 = !DILocation(line: 447, column: 1, scope: !10)
!10 = !DILexicalBlockFile(scope: !6, file: !11, discriminator: 0)
!11 = !DIFile(filename: "c:/users/boskin/codasip/risc_v5/model/share/isa/isa.codal", directory: "c:\5Cusers\5Cboskin\5Ccodasip\5Crisc_v5\5Cwork\5Ctmp\5Csemantics")
!12 = distinct !DISubprogram(name: "i_halt__opc_halt__", scope: !11, file: !11, line: 451, type: !8, isLocal: false, isDefinition: true, scopeLine: 452, isOptimized: false, unit: !0, variables: !2)
!13 = !DILocation(line: 95, column: 1, scope: !12)
!14 = distinct !DISubprogram(name: "i_syscall__opc_syscall__", scope: !11, file: !11, line: 99, type: !8, isLocal: false, isDefinition: true, scopeLine: 100, isOptimized: false, unit: !0, variables: !2)
!15 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !19)
!16 = !DILexicalBlockFile(scope: !17, file: !7, discriminator: 0)
!17 = distinct !DISubprogram(name: "MI11rf_xpr_read", scope: !18, file: !18, line: 113, type: !8, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!18 = !DIFile(filename: "se_instrsem.c", directory: "c:\5Cusers\5Cboskin\5Ccodasip\5Crisc_v5\5Cwork\5Ctmp\5Csemantics")
!19 = distinct !DILocation(line: 115, column: 21, scope: !14)
!20 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !19)
!21 = !DILocation(line: 115, column: 5, scope: !22)
!22 = !DILexicalBlockFile(scope: !14, file: !11, discriminator: 1)
!23 = !DILocation(line: 118, column: 1, scope: !14)
!24 = distinct !DISubprogram(name: "i_alu__opc_add__x_0__x_0__x_0__", scope: !11, file: !11, line: 122, type: !8, isLocal: false, isDefinition: true, scopeLine: 123, isOptimized: false, unit: !0, variables: !2)
!25 = !DILocation(line: 172, column: 1, scope: !24)
!26 = distinct !DISubprogram(name: "i_alu__opc_add__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!27 = !DILocation(line: 172, column: 1, scope: !26)
!28 = distinct !DISubprogram(name: "i_alu__opc_add__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!29 = !DILocation(line: 172, column: 1, scope: !28)
!30 = distinct !DISubprogram(name: "i_alu__opc_add__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!31 = !DILocation(line: 172, column: 1, scope: !30)
!32 = distinct !DISubprogram(name: "i_alu__opc_add__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!33 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !35)
!34 = distinct !DISubprogram(name: "MI12rf_xpr_write", scope: !7, file: !7, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!35 = distinct !DILocation(line: 169, column: 5, scope: !32)
!36 = !DILocation(line: 172, column: 1, scope: !32)
!37 = distinct !DISubprogram(name: "i_alu__opc_add__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!38 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !39)
!39 = distinct !DILocation(line: 164, column: 44, scope: !37)
!40 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !41)
!41 = distinct !DILocation(line: 169, column: 5, scope: !37)
!42 = !DILocation(line: 172, column: 1, scope: !37)
!43 = distinct !DISubprogram(name: "i_alu__opc_add__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!44 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !45)
!45 = distinct !DILocation(line: 163, column: 44, scope: !43)
!46 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !47)
!47 = distinct !DILocation(line: 169, column: 5, scope: !43)
!48 = !DILocation(line: 172, column: 1, scope: !43)
!49 = distinct !DISubprogram(name: "i_alu__opc_add__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!50 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !51)
!51 = distinct !DILocation(line: 163, column: 44, scope: !49)
!52 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !53)
!53 = distinct !DILocation(line: 164, column: 44, scope: !49)
!54 = !DILocation(line: 67, column: 48, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "MI3alu", scope: !7, file: !7, line: 54, type: !8, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!56 = distinct !DILocation(line: 166, column: 46, scope: !49)
!57 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !58)
!58 = distinct !DILocation(line: 169, column: 5, scope: !49)
!59 = !DILocation(line: 172, column: 1, scope: !49)
!60 = distinct !DISubprogram(name: "i_alu__opc_slt__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!61 = !DILocation(line: 172, column: 1, scope: !60)
!62 = distinct !DISubprogram(name: "i_alu__opc_slt__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!63 = !DILocation(line: 172, column: 1, scope: !62)
!64 = distinct !DISubprogram(name: "i_alu__opc_slt__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!65 = !DILocation(line: 172, column: 1, scope: !64)
!66 = distinct !DISubprogram(name: "i_alu__opc_slt__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!67 = !DILocation(line: 172, column: 1, scope: !66)
!68 = distinct !DISubprogram(name: "i_alu__opc_slt__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!69 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !70)
!70 = distinct !DILocation(line: 169, column: 5, scope: !68)
!71 = !DILocation(line: 172, column: 1, scope: !68)
!72 = distinct !DISubprogram(name: "i_alu__opc_slt__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!73 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !74)
!74 = distinct !DILocation(line: 164, column: 44, scope: !72)
!75 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !74)
!76 = !DILocation(line: 71, column: 13, scope: !55, inlinedAt: !77)
!77 = distinct !DILocation(line: 166, column: 46, scope: !72)
!78 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !79)
!79 = distinct !DILocation(line: 169, column: 5, scope: !72)
!80 = !DILocation(line: 172, column: 1, scope: !72)
!81 = distinct !DISubprogram(name: "i_alu__opc_slt__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!82 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !83)
!83 = distinct !DILocation(line: 163, column: 44, scope: !81)
!84 = !DILocation(line: 71, column: 13, scope: !55, inlinedAt: !85)
!85 = distinct !DILocation(line: 166, column: 46, scope: !81)
!86 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !87)
!87 = distinct !DILocation(line: 169, column: 5, scope: !81)
!88 = !DILocation(line: 172, column: 1, scope: !81)
!89 = distinct !DISubprogram(name: "i_alu__opc_slt__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!90 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !91)
!91 = distinct !DILocation(line: 163, column: 44, scope: !89)
!92 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !93)
!93 = distinct !DILocation(line: 164, column: 44, scope: !89)
!94 = !DILocation(line: 71, column: 39, scope: !55, inlinedAt: !95)
!95 = distinct !DILocation(line: 166, column: 46, scope: !89)
!96 = !DILocation(line: 71, column: 13, scope: !55, inlinedAt: !95)
!97 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !98)
!98 = distinct !DILocation(line: 169, column: 5, scope: !89)
!99 = !DILocation(line: 172, column: 1, scope: !89)
!100 = distinct !DISubprogram(name: "i_alu__opc_sltu__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!101 = !DILocation(line: 172, column: 1, scope: !100)
!102 = distinct !DISubprogram(name: "i_alu__opc_sltu__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!103 = !DILocation(line: 172, column: 1, scope: !102)
!104 = distinct !DISubprogram(name: "i_alu__opc_sltu__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!105 = !DILocation(line: 172, column: 1, scope: !104)
!106 = distinct !DISubprogram(name: "i_alu__opc_sltu__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!107 = !DILocation(line: 172, column: 1, scope: !106)
!108 = distinct !DISubprogram(name: "i_alu__opc_sltu__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!109 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !110)
!110 = distinct !DILocation(line: 169, column: 5, scope: !108)
!111 = !DILocation(line: 172, column: 1, scope: !108)
!112 = distinct !DISubprogram(name: "i_alu__opc_sltu__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!113 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !114)
!114 = distinct !DILocation(line: 164, column: 44, scope: !112)
!115 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !114)
!116 = !DILocation(line: 76, column: 13, scope: !55, inlinedAt: !117)
!117 = distinct !DILocation(line: 166, column: 46, scope: !112)
!118 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !119)
!119 = distinct !DILocation(line: 169, column: 5, scope: !112)
!120 = !DILocation(line: 172, column: 1, scope: !112)
!121 = distinct !DISubprogram(name: "i_alu__opc_sltu__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!122 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !123)
!123 = distinct !DILocation(line: 169, column: 5, scope: !121)
!124 = !DILocation(line: 172, column: 1, scope: !121)
!125 = distinct !DISubprogram(name: "i_alu__opc_sltu__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!126 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !127)
!127 = distinct !DILocation(line: 163, column: 44, scope: !125)
!128 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !129)
!129 = distinct !DILocation(line: 164, column: 44, scope: !125)
!130 = !DILocation(line: 76, column: 30, scope: !55, inlinedAt: !131)
!131 = distinct !DILocation(line: 166, column: 46, scope: !125)
!132 = !DILocation(line: 76, column: 13, scope: !55, inlinedAt: !131)
!133 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !134)
!134 = distinct !DILocation(line: 169, column: 5, scope: !125)
!135 = !DILocation(line: 172, column: 1, scope: !125)
!136 = distinct !DISubprogram(name: "i_alu__opc_and__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!137 = !DILocation(line: 172, column: 1, scope: !136)
!138 = distinct !DISubprogram(name: "i_alu__opc_and__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!139 = !DILocation(line: 172, column: 1, scope: !138)
!140 = distinct !DISubprogram(name: "i_alu__opc_and__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!141 = !DILocation(line: 172, column: 1, scope: !140)
!142 = distinct !DISubprogram(name: "i_alu__opc_and__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!143 = !DILocation(line: 172, column: 1, scope: !142)
!144 = distinct !DISubprogram(name: "i_alu__opc_and__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!145 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !146)
!146 = distinct !DILocation(line: 169, column: 5, scope: !144)
!147 = !DILocation(line: 172, column: 1, scope: !144)
!148 = distinct !DISubprogram(name: "i_alu__opc_and__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!149 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !150)
!150 = distinct !DILocation(line: 169, column: 5, scope: !148)
!151 = !DILocation(line: 172, column: 1, scope: !148)
!152 = distinct !DISubprogram(name: "i_alu__opc_and__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!153 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !154)
!154 = distinct !DILocation(line: 169, column: 5, scope: !152)
!155 = !DILocation(line: 172, column: 1, scope: !152)
!156 = distinct !DISubprogram(name: "i_alu__opc_and__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!157 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !158)
!158 = distinct !DILocation(line: 163, column: 44, scope: !156)
!159 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !160)
!160 = distinct !DILocation(line: 164, column: 44, scope: !156)
!161 = !DILocation(line: 81, column: 48, scope: !55, inlinedAt: !162)
!162 = distinct !DILocation(line: 166, column: 46, scope: !156)
!163 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !164)
!164 = distinct !DILocation(line: 169, column: 5, scope: !156)
!165 = !DILocation(line: 172, column: 1, scope: !156)
!166 = distinct !DISubprogram(name: "i_alu__opc_or__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!167 = !DILocation(line: 172, column: 1, scope: !166)
!168 = distinct !DISubprogram(name: "i_alu__opc_or__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!169 = !DILocation(line: 172, column: 1, scope: !168)
!170 = distinct !DISubprogram(name: "i_alu__opc_or__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!171 = !DILocation(line: 172, column: 1, scope: !170)
!172 = distinct !DISubprogram(name: "i_alu__opc_or__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!173 = !DILocation(line: 172, column: 1, scope: !172)
!174 = distinct !DISubprogram(name: "i_alu__opc_or__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!175 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !176)
!176 = distinct !DILocation(line: 169, column: 5, scope: !174)
!177 = !DILocation(line: 172, column: 1, scope: !174)
!178 = distinct !DISubprogram(name: "i_alu__opc_or__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!179 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !180)
!180 = distinct !DILocation(line: 164, column: 44, scope: !178)
!181 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !182)
!182 = distinct !DILocation(line: 169, column: 5, scope: !178)
!183 = !DILocation(line: 172, column: 1, scope: !178)
!184 = distinct !DISubprogram(name: "i_alu__opc_or__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!185 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !186)
!186 = distinct !DILocation(line: 163, column: 44, scope: !184)
!187 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !188)
!188 = distinct !DILocation(line: 169, column: 5, scope: !184)
!189 = !DILocation(line: 172, column: 1, scope: !184)
!190 = distinct !DISubprogram(name: "i_alu__opc_or__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!191 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !192)
!192 = distinct !DILocation(line: 163, column: 44, scope: !190)
!193 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !194)
!194 = distinct !DILocation(line: 164, column: 44, scope: !190)
!195 = !DILocation(line: 85, column: 48, scope: !55, inlinedAt: !196)
!196 = distinct !DILocation(line: 166, column: 46, scope: !190)
!197 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !198)
!198 = distinct !DILocation(line: 169, column: 5, scope: !190)
!199 = !DILocation(line: 172, column: 1, scope: !190)
!200 = distinct !DISubprogram(name: "i_alu__opc_xor__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!201 = !DILocation(line: 172, column: 1, scope: !200)
!202 = distinct !DISubprogram(name: "i_alu__opc_xor__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!203 = !DILocation(line: 172, column: 1, scope: !202)
!204 = distinct !DISubprogram(name: "i_alu__opc_xor__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!205 = !DILocation(line: 172, column: 1, scope: !204)
!206 = distinct !DISubprogram(name: "i_alu__opc_xor__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!207 = !DILocation(line: 172, column: 1, scope: !206)
!208 = distinct !DISubprogram(name: "i_alu__opc_xor__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!209 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !210)
!210 = distinct !DILocation(line: 169, column: 5, scope: !208)
!211 = !DILocation(line: 172, column: 1, scope: !208)
!212 = distinct !DISubprogram(name: "i_alu__opc_xor__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!213 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !214)
!214 = distinct !DILocation(line: 164, column: 44, scope: !212)
!215 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !216)
!216 = distinct !DILocation(line: 169, column: 5, scope: !212)
!217 = !DILocation(line: 172, column: 1, scope: !212)
!218 = distinct !DISubprogram(name: "i_alu__opc_xor__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!219 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !220)
!220 = distinct !DILocation(line: 163, column: 44, scope: !218)
!221 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !222)
!222 = distinct !DILocation(line: 169, column: 5, scope: !218)
!223 = !DILocation(line: 172, column: 1, scope: !218)
!224 = distinct !DISubprogram(name: "i_alu__opc_xor__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!225 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !226)
!226 = distinct !DILocation(line: 163, column: 44, scope: !224)
!227 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !228)
!228 = distinct !DILocation(line: 164, column: 44, scope: !224)
!229 = !DILocation(line: 89, column: 48, scope: !55, inlinedAt: !230)
!230 = distinct !DILocation(line: 166, column: 46, scope: !224)
!231 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !232)
!232 = distinct !DILocation(line: 169, column: 5, scope: !224)
!233 = !DILocation(line: 172, column: 1, scope: !224)
!234 = distinct !DISubprogram(name: "i_alu__opc_sll__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!235 = !DILocation(line: 172, column: 1, scope: !234)
!236 = distinct !DISubprogram(name: "i_alu__opc_sll__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!237 = !DILocation(line: 172, column: 1, scope: !236)
!238 = distinct !DISubprogram(name: "i_alu__opc_sll__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!239 = !DILocation(line: 172, column: 1, scope: !238)
!240 = distinct !DISubprogram(name: "i_alu__opc_sll__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!241 = !DILocation(line: 172, column: 1, scope: !240)
!242 = distinct !DISubprogram(name: "i_alu__opc_sll__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!243 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !244)
!244 = distinct !DILocation(line: 169, column: 5, scope: !242)
!245 = !DILocation(line: 172, column: 1, scope: !242)
!246 = distinct !DISubprogram(name: "i_alu__opc_sll__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!247 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !248)
!248 = distinct !DILocation(line: 169, column: 5, scope: !246)
!249 = !DILocation(line: 172, column: 1, scope: !246)
!250 = distinct !DISubprogram(name: "i_alu__opc_sll__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!251 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !252)
!252 = distinct !DILocation(line: 163, column: 44, scope: !250)
!253 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !254)
!254 = distinct !DILocation(line: 169, column: 5, scope: !250)
!255 = !DILocation(line: 172, column: 1, scope: !250)
!256 = distinct !DISubprogram(name: "i_alu__opc_sll__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!257 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !258)
!258 = distinct !DILocation(line: 163, column: 44, scope: !256)
!259 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !260)
!260 = distinct !DILocation(line: 164, column: 44, scope: !256)
!261 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !260)
!262 = !DILocation(line: 93, column: 48, scope: !55, inlinedAt: !263)
!263 = distinct !DILocation(line: 166, column: 46, scope: !256)
!264 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !265)
!265 = distinct !DILocation(line: 169, column: 5, scope: !256)
!266 = !DILocation(line: 172, column: 1, scope: !256)
!267 = distinct !DISubprogram(name: "i_alu__opc_srl__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!268 = !DILocation(line: 172, column: 1, scope: !267)
!269 = distinct !DISubprogram(name: "i_alu__opc_srl__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!270 = !DILocation(line: 172, column: 1, scope: !269)
!271 = distinct !DISubprogram(name: "i_alu__opc_srl__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!272 = !DILocation(line: 172, column: 1, scope: !271)
!273 = distinct !DISubprogram(name: "i_alu__opc_srl__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!274 = !DILocation(line: 172, column: 1, scope: !273)
!275 = distinct !DISubprogram(name: "i_alu__opc_srl__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!276 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !277)
!277 = distinct !DILocation(line: 169, column: 5, scope: !275)
!278 = !DILocation(line: 172, column: 1, scope: !275)
!279 = distinct !DISubprogram(name: "i_alu__opc_srl__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!280 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !281)
!281 = distinct !DILocation(line: 169, column: 5, scope: !279)
!282 = !DILocation(line: 172, column: 1, scope: !279)
!283 = distinct !DISubprogram(name: "i_alu__opc_srl__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!284 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !285)
!285 = distinct !DILocation(line: 163, column: 44, scope: !283)
!286 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !287)
!287 = distinct !DILocation(line: 169, column: 5, scope: !283)
!288 = !DILocation(line: 172, column: 1, scope: !283)
!289 = distinct !DISubprogram(name: "i_alu__opc_srl__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!290 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !291)
!291 = distinct !DILocation(line: 163, column: 44, scope: !289)
!292 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !293)
!293 = distinct !DILocation(line: 164, column: 44, scope: !289)
!294 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !293)
!295 = !DILocation(line: 97, column: 48, scope: !55, inlinedAt: !296)
!296 = distinct !DILocation(line: 166, column: 46, scope: !289)
!297 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !298)
!298 = distinct !DILocation(line: 169, column: 5, scope: !289)
!299 = !DILocation(line: 172, column: 1, scope: !289)
!300 = distinct !DISubprogram(name: "i_alu__opc_sub__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!301 = !DILocation(line: 172, column: 1, scope: !300)
!302 = distinct !DISubprogram(name: "i_alu__opc_sub__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!303 = !DILocation(line: 172, column: 1, scope: !302)
!304 = distinct !DISubprogram(name: "i_alu__opc_sub__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!305 = !DILocation(line: 172, column: 1, scope: !304)
!306 = distinct !DISubprogram(name: "i_alu__opc_sub__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!307 = !DILocation(line: 172, column: 1, scope: !306)
!308 = distinct !DISubprogram(name: "i_alu__opc_sub__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!309 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !310)
!310 = distinct !DILocation(line: 169, column: 5, scope: !308)
!311 = !DILocation(line: 172, column: 1, scope: !308)
!312 = distinct !DISubprogram(name: "i_alu__opc_sub__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!313 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !314)
!314 = distinct !DILocation(line: 164, column: 44, scope: !312)
!315 = !DILocation(line: 100, column: 48, scope: !55, inlinedAt: !316)
!316 = distinct !DILocation(line: 166, column: 46, scope: !312)
!317 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !318)
!318 = distinct !DILocation(line: 169, column: 5, scope: !312)
!319 = !DILocation(line: 172, column: 1, scope: !312)
!320 = distinct !DISubprogram(name: "i_alu__opc_sub__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!321 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !322)
!322 = distinct !DILocation(line: 163, column: 44, scope: !320)
!323 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !324)
!324 = distinct !DILocation(line: 169, column: 5, scope: !320)
!325 = !DILocation(line: 172, column: 1, scope: !320)
!326 = distinct !DISubprogram(name: "i_alu__opc_sub__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!327 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !328)
!328 = distinct !DILocation(line: 163, column: 44, scope: !326)
!329 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !330)
!330 = distinct !DILocation(line: 164, column: 44, scope: !326)
!331 = !DILocation(line: 100, column: 48, scope: !55, inlinedAt: !332)
!332 = distinct !DILocation(line: 166, column: 46, scope: !326)
!333 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !334)
!334 = distinct !DILocation(line: 169, column: 5, scope: !326)
!335 = !DILocation(line: 172, column: 1, scope: !326)
!336 = distinct !DISubprogram(name: "i_alu__opc_sra__x_0__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!337 = !DILocation(line: 172, column: 1, scope: !336)
!338 = distinct !DISubprogram(name: "i_alu__opc_sra__x_0__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!339 = !DILocation(line: 172, column: 1, scope: !338)
!340 = distinct !DISubprogram(name: "i_alu__opc_sra__x_0__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!341 = !DILocation(line: 172, column: 1, scope: !340)
!342 = distinct !DISubprogram(name: "i_alu__opc_sra__x_0__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!343 = !DILocation(line: 172, column: 1, scope: !342)
!344 = distinct !DISubprogram(name: "i_alu__opc_sra__xpr__x_0__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!345 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !346)
!346 = distinct !DILocation(line: 169, column: 5, scope: !344)
!347 = !DILocation(line: 172, column: 1, scope: !344)
!348 = distinct !DISubprogram(name: "i_alu__opc_sra__xpr__x_0__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!349 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !350)
!350 = distinct !DILocation(line: 169, column: 5, scope: !348)
!351 = !DILocation(line: 172, column: 1, scope: !348)
!352 = distinct !DISubprogram(name: "i_alu__opc_sra__xpr__xpr__x_0__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!353 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !354)
!354 = distinct !DILocation(line: 163, column: 44, scope: !352)
!355 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !356)
!356 = distinct !DILocation(line: 169, column: 5, scope: !352)
!357 = !DILocation(line: 172, column: 1, scope: !352)
!358 = distinct !DISubprogram(name: "i_alu__opc_sra__xpr__xpr__xpr__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!359 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !360)
!360 = distinct !DILocation(line: 163, column: 44, scope: !358)
!361 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !362)
!362 = distinct !DILocation(line: 164, column: 44, scope: !358)
!363 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !362)
!364 = !DILocation(line: 104, column: 57, scope: !55, inlinedAt: !365)
!365 = distinct !DILocation(line: 166, column: 46, scope: !358)
!366 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !367)
!367 = distinct !DILocation(line: 169, column: 5, scope: !358)
!368 = !DILocation(line: 172, column: 1, scope: !358)
!369 = distinct !DISubprogram(name: "i_shift__opc_slli__x_0__x_0__shamt__", scope: !11, file: !11, line: 176, type: !8, isLocal: false, isDefinition: true, scopeLine: 177, isOptimized: false, unit: !0, variables: !2)
!370 = !DILocation(line: 205, column: 1, scope: !369)
!371 = distinct !DISubprogram(name: "i_shift__opc_slli__x_0__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!372 = !DILocation(line: 205, column: 1, scope: !371)
!373 = distinct !DISubprogram(name: "i_shift__opc_slli__xpr__x_0__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!374 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !375)
!375 = distinct !DILocation(line: 202, column: 5, scope: !373)
!376 = !DILocation(line: 205, column: 1, scope: !373)
!377 = distinct !DISubprogram(name: "i_shift__opc_slli__xpr__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!378 = !DILocation(line: 211, column: 57, scope: !377)
!379 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !380)
!380 = distinct !DILocation(line: 196, column: 46, scope: !377)
!381 = !DILocation(line: 93, column: 48, scope: !55, inlinedAt: !382)
!382 = distinct !DILocation(line: 199, column: 48, scope: !377)
!383 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !384)
!384 = distinct !DILocation(line: 202, column: 5, scope: !377)
!385 = !DILocation(line: 205, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "i_shift__opc_srli__x_0__x_0__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!387 = !DILocation(line: 205, column: 1, scope: !386)
!388 = distinct !DISubprogram(name: "i_shift__opc_srli__x_0__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!389 = !DILocation(line: 205, column: 1, scope: !388)
!390 = distinct !DISubprogram(name: "i_shift__opc_srli__xpr__x_0__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!391 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !392)
!392 = distinct !DILocation(line: 202, column: 5, scope: !390)
!393 = !DILocation(line: 205, column: 1, scope: !390)
!394 = distinct !DISubprogram(name: "i_shift__opc_srli__xpr__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!395 = !DILocation(line: 211, column: 57, scope: !394)
!396 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !397)
!397 = distinct !DILocation(line: 196, column: 46, scope: !394)
!398 = !DILocation(line: 97, column: 48, scope: !55, inlinedAt: !399)
!399 = distinct !DILocation(line: 199, column: 48, scope: !394)
!400 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !401)
!401 = distinct !DILocation(line: 202, column: 5, scope: !394)
!402 = !DILocation(line: 205, column: 1, scope: !394)
!403 = distinct !DISubprogram(name: "i_shift__opc_srai__x_0__x_0__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!404 = !DILocation(line: 205, column: 1, scope: !403)
!405 = distinct !DISubprogram(name: "i_shift__opc_srai__x_0__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!406 = !DILocation(line: 205, column: 1, scope: !405)
!407 = distinct !DISubprogram(name: "i_shift__opc_srai__xpr__x_0__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!408 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !409)
!409 = distinct !DILocation(line: 202, column: 5, scope: !407)
!410 = !DILocation(line: 205, column: 1, scope: !407)
!411 = distinct !DISubprogram(name: "i_shift__opc_srai__xpr__xpr__shamt__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!412 = !DILocation(line: 211, column: 57, scope: !411)
!413 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !414)
!414 = distinct !DILocation(line: 196, column: 46, scope: !411)
!415 = !DILocation(line: 104, column: 57, scope: !55, inlinedAt: !416)
!416 = distinct !DILocation(line: 199, column: 48, scope: !411)
!417 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !418)
!418 = distinct !DILocation(line: 202, column: 5, scope: !411)
!419 = !DILocation(line: 205, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "i_alu_i__opc_addi__x_0__x_0__simm12__", scope: !11, file: !11, line: 209, type: !8, isLocal: false, isDefinition: true, scopeLine: 210, isOptimized: false, unit: !0, variables: !2)
!421 = !DILocation(line: 240, column: 1, scope: !420)
!422 = distinct !DISubprogram(name: "i_alu_i__opc_addi__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!423 = !DILocation(line: 240, column: 1, scope: !422)
!424 = distinct !DISubprogram(name: "i_alu_i__opc_addi__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!425 = !DILocation(line: 246, column: 58, scope: !424)
!426 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !427)
!427 = distinct !DILocation(line: 237, column: 5, scope: !424)
!428 = !DILocation(line: 240, column: 1, scope: !424)
!429 = distinct !DISubprogram(name: "i_alu_i__opc_addi__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!430 = !DILocation(line: 246, column: 58, scope: !429)
!431 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !432)
!432 = distinct !DILocation(line: 232, column: 46, scope: !429)
!433 = !DILocation(line: 67, column: 48, scope: !55, inlinedAt: !434)
!434 = distinct !DILocation(line: 235, column: 48, scope: !429)
!435 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !436)
!436 = distinct !DILocation(line: 237, column: 5, scope: !429)
!437 = !DILocation(line: 240, column: 1, scope: !429)
!438 = distinct !DISubprogram(name: "i_alu_i__opc_slti__x_0__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!439 = !DILocation(line: 240, column: 1, scope: !438)
!440 = distinct !DISubprogram(name: "i_alu_i__opc_slti__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!441 = !DILocation(line: 240, column: 1, scope: !440)
!442 = distinct !DISubprogram(name: "i_alu_i__opc_slti__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!443 = !DILocation(line: 246, column: 58, scope: !442)
!444 = !DILocation(line: 71, column: 39, scope: !55, inlinedAt: !445)
!445 = distinct !DILocation(line: 235, column: 48, scope: !442)
!446 = !DILocation(line: 71, column: 13, scope: !55, inlinedAt: !445)
!447 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !448)
!448 = distinct !DILocation(line: 237, column: 5, scope: !442)
!449 = !DILocation(line: 240, column: 1, scope: !442)
!450 = distinct !DISubprogram(name: "i_alu_i__opc_slti__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!451 = !DILocation(line: 246, column: 58, scope: !450)
!452 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !453)
!453 = distinct !DILocation(line: 232, column: 46, scope: !450)
!454 = !DILocation(line: 71, column: 39, scope: !55, inlinedAt: !455)
!455 = distinct !DILocation(line: 235, column: 48, scope: !450)
!456 = !DILocation(line: 71, column: 13, scope: !55, inlinedAt: !455)
!457 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !458)
!458 = distinct !DILocation(line: 237, column: 5, scope: !450)
!459 = !DILocation(line: 240, column: 1, scope: !450)
!460 = distinct !DISubprogram(name: "i_alu_i__opc_sltiu__x_0__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!461 = !DILocation(line: 240, column: 1, scope: !460)
!462 = distinct !DISubprogram(name: "i_alu_i__opc_sltiu__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!463 = !DILocation(line: 240, column: 1, scope: !462)
!464 = distinct !DISubprogram(name: "i_alu_i__opc_sltiu__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!465 = !DILocation(line: 246, column: 58, scope: !464)
!466 = !DILocation(line: 76, column: 30, scope: !55, inlinedAt: !467)
!467 = distinct !DILocation(line: 235, column: 48, scope: !464)
!468 = !DILocation(line: 76, column: 13, scope: !55, inlinedAt: !467)
!469 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !470)
!470 = distinct !DILocation(line: 237, column: 5, scope: !464)
!471 = !DILocation(line: 240, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "i_alu_i__opc_sltiu__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!473 = !DILocation(line: 246, column: 58, scope: !472)
!474 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !475)
!475 = distinct !DILocation(line: 232, column: 46, scope: !472)
!476 = !DILocation(line: 76, column: 30, scope: !55, inlinedAt: !477)
!477 = distinct !DILocation(line: 235, column: 48, scope: !472)
!478 = !DILocation(line: 76, column: 13, scope: !55, inlinedAt: !477)
!479 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !480)
!480 = distinct !DILocation(line: 237, column: 5, scope: !472)
!481 = !DILocation(line: 240, column: 1, scope: !472)
!482 = distinct !DISubprogram(name: "i_alu_i__opc_andi__x_0__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!483 = !DILocation(line: 240, column: 1, scope: !482)
!484 = distinct !DISubprogram(name: "i_alu_i__opc_andi__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!485 = !DILocation(line: 240, column: 1, scope: !484)
!486 = distinct !DISubprogram(name: "i_alu_i__opc_andi__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!487 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !488)
!488 = distinct !DILocation(line: 237, column: 5, scope: !486)
!489 = !DILocation(line: 240, column: 1, scope: !486)
!490 = distinct !DISubprogram(name: "i_alu_i__opc_andi__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!491 = !DILocation(line: 246, column: 58, scope: !490)
!492 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !493)
!493 = distinct !DILocation(line: 232, column: 46, scope: !490)
!494 = !DILocation(line: 81, column: 48, scope: !55, inlinedAt: !495)
!495 = distinct !DILocation(line: 235, column: 48, scope: !490)
!496 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !497)
!497 = distinct !DILocation(line: 237, column: 5, scope: !490)
!498 = !DILocation(line: 240, column: 1, scope: !490)
!499 = distinct !DISubprogram(name: "i_alu_i__opc_ori__x_0__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!500 = !DILocation(line: 240, column: 1, scope: !499)
!501 = distinct !DISubprogram(name: "i_alu_i__opc_ori__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!502 = !DILocation(line: 240, column: 1, scope: !501)
!503 = distinct !DISubprogram(name: "i_alu_i__opc_ori__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!504 = !DILocation(line: 246, column: 58, scope: !503)
!505 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !506)
!506 = distinct !DILocation(line: 237, column: 5, scope: !503)
!507 = !DILocation(line: 240, column: 1, scope: !503)
!508 = distinct !DISubprogram(name: "i_alu_i__opc_ori__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!509 = !DILocation(line: 246, column: 58, scope: !508)
!510 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !511)
!511 = distinct !DILocation(line: 232, column: 46, scope: !508)
!512 = !DILocation(line: 85, column: 48, scope: !55, inlinedAt: !513)
!513 = distinct !DILocation(line: 235, column: 48, scope: !508)
!514 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !515)
!515 = distinct !DILocation(line: 237, column: 5, scope: !508)
!516 = !DILocation(line: 240, column: 1, scope: !508)
!517 = distinct !DISubprogram(name: "i_alu_i__opc_xori__x_0__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!518 = !DILocation(line: 240, column: 1, scope: !517)
!519 = distinct !DISubprogram(name: "i_alu_i__opc_xori__x_0__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!520 = !DILocation(line: 240, column: 1, scope: !519)
!521 = distinct !DISubprogram(name: "i_alu_i__opc_xori__xpr__x_0__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!522 = !DILocation(line: 246, column: 58, scope: !521)
!523 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !524)
!524 = distinct !DILocation(line: 237, column: 5, scope: !521)
!525 = !DILocation(line: 240, column: 1, scope: !521)
!526 = distinct !DISubprogram(name: "i_alu_i__opc_xori__xpr__xpr__simm12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!527 = !DILocation(line: 246, column: 58, scope: !526)
!528 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !529)
!529 = distinct !DILocation(line: 232, column: 46, scope: !526)
!530 = !DILocation(line: 89, column: 48, scope: !55, inlinedAt: !531)
!531 = distinct !DILocation(line: 235, column: 48, scope: !526)
!532 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !533)
!533 = distinct !DILocation(line: 237, column: 5, scope: !526)
!534 = !DILocation(line: 240, column: 1, scope: !526)
!535 = distinct !DISubprogram(name: "i_branch__opc_beq__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 244, type: !8, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: false, unit: !0, variables: !2)
!536 = !DILocation(line: 246, column: 76, scope: !535)
!537 = !DILocation(line: 276, column: 97, scope: !535)
!538 = !DILocation(line: 276, column: 21, scope: !535)
!539 = !DILocation(line: 276, column: 26, scope: !535)
!540 = !DILocation(line: 276, column: 113, scope: !535)
!541 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !543)
!542 = distinct !DISubprogram(name: "MI6set_pc", scope: !7, file: !7, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!543 = distinct !DILocation(line: 276, column: 9, scope: !535)
!544 = !DILocation(line: 280, column: 1, scope: !535)
!545 = distinct !DISubprogram(name: "i_branch__opc_beq__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!546 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !547)
!547 = distinct !DILocation(line: 269, column: 47, scope: !545)
!548 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !547)
!549 = !DILocation(line: 276, column: 21, scope: !545)
!550 = !DILocation(line: 276, column: 26, scope: !545)
!551 = !DILocation(line: 286, column: 76, scope: !545)
!552 = !DILocation(line: 276, column: 97, scope: !545)
!553 = !DILocation(line: 276, column: 113, scope: !545)
!554 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !555)
!555 = distinct !DILocation(line: 276, column: 9, scope: !545)
!556 = !DILocation(line: 280, column: 1, scope: !545)
!557 = distinct !DISubprogram(name: "i_branch__opc_beq__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!558 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !559)
!559 = distinct !DILocation(line: 268, column: 47, scope: !557)
!560 = !DILocation(line: 107, column: 30, scope: !55, inlinedAt: !561)
!561 = distinct !DILocation(line: 271, column: 49, scope: !557)
!562 = !DILocation(line: 276, column: 21, scope: !557)
!563 = !DILocation(line: 276, column: 26, scope: !557)
!564 = !DILocation(line: 286, column: 76, scope: !557)
!565 = !DILocation(line: 276, column: 97, scope: !557)
!566 = !DILocation(line: 276, column: 113, scope: !557)
!567 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !568)
!568 = distinct !DILocation(line: 276, column: 9, scope: !557)
!569 = !DILocation(line: 280, column: 1, scope: !557)
!570 = distinct !DISubprogram(name: "i_branch__opc_beq__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!571 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !572)
!572 = distinct !DILocation(line: 268, column: 47, scope: !570)
!573 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !574)
!574 = distinct !DILocation(line: 269, column: 47, scope: !570)
!575 = !DILocation(line: 107, column: 30, scope: !55, inlinedAt: !576)
!576 = distinct !DILocation(line: 271, column: 49, scope: !570)
!577 = !DILocation(line: 276, column: 21, scope: !570)
!578 = !DILocation(line: 276, column: 26, scope: !570)
!579 = !DILocation(line: 286, column: 76, scope: !570)
!580 = !DILocation(line: 276, column: 97, scope: !570)
!581 = !DILocation(line: 276, column: 113, scope: !570)
!582 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !583)
!583 = distinct !DILocation(line: 276, column: 9, scope: !570)
!584 = !DILocation(line: 280, column: 1, scope: !570)
!585 = distinct !DISubprogram(name: "i_branch__opc_bne__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!586 = !DILocation(line: 280, column: 1, scope: !585)
!587 = distinct !DISubprogram(name: "i_branch__opc_bne__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!588 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !589)
!589 = distinct !DILocation(line: 269, column: 47, scope: !587)
!590 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !589)
!591 = !DILocation(line: 276, column: 21, scope: !587)
!592 = !DILocation(line: 276, column: 26, scope: !587)
!593 = !DILocation(line: 286, column: 76, scope: !587)
!594 = !DILocation(line: 276, column: 97, scope: !587)
!595 = !DILocation(line: 276, column: 113, scope: !587)
!596 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !597)
!597 = distinct !DILocation(line: 276, column: 9, scope: !587)
!598 = !DILocation(line: 280, column: 1, scope: !587)
!599 = distinct !DISubprogram(name: "i_branch__opc_bne__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!600 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !601)
!601 = distinct !DILocation(line: 268, column: 47, scope: !599)
!602 = !DILocation(line: 110, column: 30, scope: !603, inlinedAt: !604)
!603 = !DILexicalBlockFile(scope: !55, file: !7, discriminator: 1)
!604 = distinct !DILocation(line: 271, column: 49, scope: !599)
!605 = !DILocation(line: 276, column: 21, scope: !599)
!606 = !DILocation(line: 276, column: 26, scope: !599)
!607 = !DILocation(line: 286, column: 76, scope: !599)
!608 = !DILocation(line: 276, column: 97, scope: !599)
!609 = !DILocation(line: 276, column: 113, scope: !599)
!610 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !611)
!611 = distinct !DILocation(line: 276, column: 9, scope: !599)
!612 = !DILocation(line: 280, column: 1, scope: !599)
!613 = distinct !DISubprogram(name: "i_branch__opc_bne__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!614 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !615)
!615 = distinct !DILocation(line: 268, column: 47, scope: !613)
!616 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !617)
!617 = distinct !DILocation(line: 269, column: 47, scope: !613)
!618 = !DILocation(line: 110, column: 30, scope: !603, inlinedAt: !619)
!619 = distinct !DILocation(line: 271, column: 49, scope: !613)
!620 = !DILocation(line: 276, column: 21, scope: !613)
!621 = !DILocation(line: 276, column: 26, scope: !613)
!622 = !DILocation(line: 286, column: 76, scope: !613)
!623 = !DILocation(line: 276, column: 97, scope: !613)
!624 = !DILocation(line: 276, column: 113, scope: !613)
!625 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !626)
!626 = distinct !DILocation(line: 276, column: 9, scope: !613)
!627 = !DILocation(line: 280, column: 1, scope: !613)
!628 = distinct !DISubprogram(name: "i_branch__opc_blt__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!629 = !DILocation(line: 280, column: 1, scope: !628)
!630 = distinct !DISubprogram(name: "i_branch__opc_blt__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!631 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !632)
!632 = distinct !DILocation(line: 269, column: 47, scope: !630)
!633 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !632)
!634 = !DILocation(line: 276, column: 21, scope: !630)
!635 = !DILocation(line: 276, column: 26, scope: !630)
!636 = !DILocation(line: 286, column: 76, scope: !630)
!637 = !DILocation(line: 276, column: 97, scope: !630)
!638 = !DILocation(line: 276, column: 113, scope: !630)
!639 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !640)
!640 = distinct !DILocation(line: 276, column: 9, scope: !630)
!641 = !DILocation(line: 280, column: 1, scope: !630)
!642 = distinct !DISubprogram(name: "i_branch__opc_blt__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!643 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !644)
!644 = distinct !DILocation(line: 268, column: 47, scope: !642)
!645 = !DILocation(line: 273, column: 52, scope: !642)
!646 = !DILocation(line: 276, column: 21, scope: !642)
!647 = !DILocation(line: 276, column: 26, scope: !642)
!648 = !DILocation(line: 286, column: 76, scope: !642)
!649 = !DILocation(line: 276, column: 97, scope: !642)
!650 = !DILocation(line: 276, column: 113, scope: !642)
!651 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !652)
!652 = distinct !DILocation(line: 276, column: 9, scope: !642)
!653 = !DILocation(line: 280, column: 1, scope: !642)
!654 = distinct !DISubprogram(name: "i_branch__opc_blt__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!655 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !656)
!656 = distinct !DILocation(line: 268, column: 47, scope: !654)
!657 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !658)
!658 = distinct !DILocation(line: 269, column: 47, scope: !654)
!659 = !DILocation(line: 113, column: 39, scope: !660, inlinedAt: !661)
!660 = !DILexicalBlockFile(scope: !55, file: !7, discriminator: 2)
!661 = distinct !DILocation(line: 271, column: 49, scope: !654)
!662 = !DILocation(line: 276, column: 21, scope: !654)
!663 = !DILocation(line: 276, column: 26, scope: !654)
!664 = !DILocation(line: 286, column: 76, scope: !654)
!665 = !DILocation(line: 276, column: 97, scope: !654)
!666 = !DILocation(line: 276, column: 113, scope: !654)
!667 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !668)
!668 = distinct !DILocation(line: 276, column: 9, scope: !654)
!669 = !DILocation(line: 280, column: 1, scope: !654)
!670 = distinct !DISubprogram(name: "i_branch__opc_bltu__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!671 = !DILocation(line: 280, column: 1, scope: !670)
!672 = distinct !DISubprogram(name: "i_branch__opc_bltu__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!673 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !674)
!674 = distinct !DILocation(line: 269, column: 47, scope: !672)
!675 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !674)
!676 = !DILocation(line: 276, column: 21, scope: !672)
!677 = !DILocation(line: 276, column: 26, scope: !672)
!678 = !DILocation(line: 286, column: 76, scope: !672)
!679 = !DILocation(line: 276, column: 97, scope: !672)
!680 = !DILocation(line: 276, column: 113, scope: !672)
!681 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !682)
!682 = distinct !DILocation(line: 276, column: 9, scope: !672)
!683 = !DILocation(line: 280, column: 1, scope: !672)
!684 = distinct !DISubprogram(name: "i_branch__opc_bltu__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!685 = !DILocation(line: 280, column: 1, scope: !684)
!686 = distinct !DISubprogram(name: "i_branch__opc_bltu__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!687 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !688)
!688 = distinct !DILocation(line: 268, column: 47, scope: !686)
!689 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !690)
!690 = distinct !DILocation(line: 269, column: 47, scope: !686)
!691 = !DILocation(line: 116, column: 30, scope: !660, inlinedAt: !692)
!692 = distinct !DILocation(line: 271, column: 49, scope: !686)
!693 = !DILocation(line: 276, column: 21, scope: !686)
!694 = !DILocation(line: 276, column: 26, scope: !686)
!695 = !DILocation(line: 286, column: 76, scope: !686)
!696 = !DILocation(line: 276, column: 97, scope: !686)
!697 = !DILocation(line: 276, column: 113, scope: !686)
!698 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !699)
!699 = distinct !DILocation(line: 276, column: 9, scope: !686)
!700 = !DILocation(line: 280, column: 1, scope: !686)
!701 = distinct !DISubprogram(name: "i_branch__opc_bge__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!702 = !DILocation(line: 286, column: 76, scope: !701)
!703 = !DILocation(line: 276, column: 97, scope: !701)
!704 = !DILocation(line: 276, column: 21, scope: !701)
!705 = !DILocation(line: 276, column: 26, scope: !701)
!706 = !DILocation(line: 276, column: 113, scope: !701)
!707 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !708)
!708 = distinct !DILocation(line: 276, column: 9, scope: !701)
!709 = !DILocation(line: 280, column: 1, scope: !701)
!710 = distinct !DISubprogram(name: "i_branch__opc_bge__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!711 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !712)
!712 = distinct !DILocation(line: 269, column: 47, scope: !710)
!713 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !712)
!714 = !DILocation(line: 276, column: 21, scope: !710)
!715 = !DILocation(line: 276, column: 26, scope: !710)
!716 = !DILocation(line: 286, column: 76, scope: !710)
!717 = !DILocation(line: 276, column: 97, scope: !710)
!718 = !DILocation(line: 276, column: 113, scope: !710)
!719 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !720)
!720 = distinct !DILocation(line: 276, column: 9, scope: !710)
!721 = !DILocation(line: 280, column: 1, scope: !710)
!722 = distinct !DISubprogram(name: "i_branch__opc_bge__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!723 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !724)
!724 = distinct !DILocation(line: 268, column: 47, scope: !722)
!725 = !DILocation(line: 119, column: 39, scope: !660, inlinedAt: !726)
!726 = distinct !DILocation(line: 271, column: 49, scope: !722)
!727 = !DILocation(line: 276, column: 21, scope: !722)
!728 = !DILocation(line: 276, column: 26, scope: !722)
!729 = !DILocation(line: 286, column: 76, scope: !722)
!730 = !DILocation(line: 276, column: 97, scope: !722)
!731 = !DILocation(line: 276, column: 113, scope: !722)
!732 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !733)
!733 = distinct !DILocation(line: 276, column: 9, scope: !722)
!734 = !DILocation(line: 280, column: 1, scope: !722)
!735 = distinct !DISubprogram(name: "i_branch__opc_bge__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!736 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !737)
!737 = distinct !DILocation(line: 268, column: 47, scope: !735)
!738 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !739)
!739 = distinct !DILocation(line: 269, column: 47, scope: !735)
!740 = !DILocation(line: 119, column: 39, scope: !660, inlinedAt: !741)
!741 = distinct !DILocation(line: 271, column: 49, scope: !735)
!742 = !DILocation(line: 276, column: 21, scope: !735)
!743 = !DILocation(line: 276, column: 26, scope: !735)
!744 = !DILocation(line: 286, column: 76, scope: !735)
!745 = !DILocation(line: 276, column: 97, scope: !735)
!746 = !DILocation(line: 276, column: 113, scope: !735)
!747 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !748)
!748 = distinct !DILocation(line: 276, column: 9, scope: !735)
!749 = !DILocation(line: 280, column: 1, scope: !735)
!750 = distinct !DISubprogram(name: "i_branch__opc_bgeu__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!751 = !DILocation(line: 286, column: 76, scope: !750)
!752 = !DILocation(line: 276, column: 97, scope: !750)
!753 = !DILocation(line: 276, column: 21, scope: !750)
!754 = !DILocation(line: 276, column: 26, scope: !750)
!755 = !DILocation(line: 276, column: 113, scope: !750)
!756 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !757)
!757 = distinct !DILocation(line: 276, column: 9, scope: !750)
!758 = !DILocation(line: 280, column: 1, scope: !750)
!759 = distinct !DISubprogram(name: "i_branch__opc_bgeu__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!760 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !761)
!761 = distinct !DILocation(line: 269, column: 47, scope: !759)
!762 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !761)
!763 = !DILocation(line: 276, column: 21, scope: !759)
!764 = !DILocation(line: 276, column: 26, scope: !759)
!765 = !DILocation(line: 286, column: 76, scope: !759)
!766 = !DILocation(line: 276, column: 97, scope: !759)
!767 = !DILocation(line: 276, column: 113, scope: !759)
!768 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !769)
!769 = distinct !DILocation(line: 276, column: 9, scope: !759)
!770 = !DILocation(line: 280, column: 1, scope: !759)
!771 = distinct !DISubprogram(name: "i_branch__opc_bgeu__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!772 = !DILocation(line: 286, column: 76, scope: !771)
!773 = !DILocation(line: 276, column: 97, scope: !771)
!774 = !DILocation(line: 276, column: 21, scope: !771)
!775 = !DILocation(line: 276, column: 26, scope: !771)
!776 = !DILocation(line: 276, column: 113, scope: !771)
!777 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !778)
!778 = distinct !DILocation(line: 276, column: 9, scope: !771)
!779 = !DILocation(line: 280, column: 1, scope: !771)
!780 = distinct !DISubprogram(name: "i_branch__opc_bgeu__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!781 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !782)
!782 = distinct !DILocation(line: 268, column: 47, scope: !780)
!783 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !784)
!784 = distinct !DILocation(line: 269, column: 47, scope: !780)
!785 = !DILocation(line: 122, column: 30, scope: !660, inlinedAt: !786)
!786 = distinct !DILocation(line: 271, column: 49, scope: !780)
!787 = !DILocation(line: 276, column: 21, scope: !780)
!788 = !DILocation(line: 276, column: 26, scope: !780)
!789 = !DILocation(line: 286, column: 76, scope: !780)
!790 = !DILocation(line: 276, column: 97, scope: !780)
!791 = !DILocation(line: 276, column: 113, scope: !780)
!792 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !793)
!793 = distinct !DILocation(line: 276, column: 9, scope: !780)
!794 = !DILocation(line: 280, column: 1, scope: !780)
!795 = distinct !DISubprogram(name: "i_jal__opc_jal__x_0__rel_addr20__", scope: !11, file: !11, line: 284, type: !8, isLocal: false, isDefinition: true, scopeLine: 285, isOptimized: false, unit: !0, variables: !2)
!796 = !DILocation(line: 286, column: 76, scope: !795)
!797 = !DILocation(line: 299, column: 93, scope: !795)
!798 = !DILocation(line: 297, column: 22, scope: !795)
!799 = !DILocation(line: 299, column: 22, scope: !795)
!800 = !DILocation(line: 299, column: 109, scope: !795)
!801 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !802)
!802 = distinct !DILocation(line: 299, column: 5, scope: !795)
!803 = !DILocation(line: 302, column: 1, scope: !795)
!804 = distinct !DISubprogram(name: "i_jal__opc_jal__xpr__rel_addr20__", scope: !11, file: !11, line: 306, type: !8, isLocal: false, isDefinition: true, scopeLine: 307, isOptimized: false, unit: !0, variables: !2)
!805 = !DILocation(line: 308, column: 76, scope: !804)
!806 = !DILocation(line: 299, column: 93, scope: !804)
!807 = !DILocation(line: 297, column: 22, scope: !804)
!808 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !809)
!809 = distinct !DILocation(line: 297, column: 5, scope: !804)
!810 = !DILocation(line: 299, column: 22, scope: !804)
!811 = !DILocation(line: 299, column: 109, scope: !804)
!812 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !813)
!813 = distinct !DILocation(line: 299, column: 5, scope: !804)
!814 = !DILocation(line: 302, column: 1, scope: !804)
!815 = distinct !DISubprogram(name: "i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__", scope: !11, file: !11, line: 306, type: !8, isLocal: false, isDefinition: true, scopeLine: 307, isOptimized: false, unit: !0, variables: !2)
!816 = !DILocation(line: 310, column: 85, scope: !815)
!817 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !818)
!818 = distinct !DILocation(line: 326, column: 5, scope: !815)
!819 = !DILocation(line: 329, column: 1, scope: !815)
!820 = distinct !DISubprogram(name: "i_jalr__opc_jalr__x_0__rel_jalr_addr12__xpr__", scope: !11, file: !11, line: 333, type: !8, isLocal: false, isDefinition: true, scopeLine: 334, isOptimized: false, unit: !0, variables: !2)
!821 = !DILocation(line: 336, column: 85, scope: !820)
!822 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !823)
!823 = distinct !DILocation(line: 322, column: 54, scope: !820)
!824 = !DILocation(line: 326, column: 63, scope: !820)
!825 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !826)
!826 = distinct !DILocation(line: 326, column: 5, scope: !820)
!827 = !DILocation(line: 329, column: 1, scope: !820)
!828 = distinct !DISubprogram(name: "i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__", scope: !11, file: !11, line: 333, type: !8, isLocal: false, isDefinition: true, scopeLine: 334, isOptimized: false, unit: !0, variables: !2)
!829 = !DILocation(line: 337, column: 85, scope: !828)
!830 = !DILocation(line: 324, column: 22, scope: !828)
!831 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !832)
!832 = distinct !DILocation(line: 324, column: 5, scope: !828)
!833 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !834)
!834 = distinct !DILocation(line: 326, column: 5, scope: !828)
!835 = !DILocation(line: 329, column: 1, scope: !828)
!836 = distinct !DISubprogram(name: "i_jalr__opc_jalr__xpr__rel_jalr_addr12__xpr__", scope: !11, file: !11, line: 333, type: !8, isLocal: false, isDefinition: true, scopeLine: 334, isOptimized: false, unit: !0, variables: !2)
!837 = !DILocation(line: 336, column: 85, scope: !836)
!838 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !839)
!839 = distinct !DILocation(line: 322, column: 54, scope: !836)
!840 = !DILocation(line: 324, column: 22, scope: !836)
!841 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !842)
!842 = distinct !DILocation(line: 324, column: 5, scope: !836)
!843 = !DILocation(line: 326, column: 63, scope: !836)
!844 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !845)
!845 = distinct !DILocation(line: 326, column: 5, scope: !836)
!846 = !DILocation(line: 329, column: 1, scope: !836)
!847 = distinct !DISubprogram(name: "i_upper_imm__opc_lui__x_0__simm20__", scope: !11, file: !11, line: 333, type: !8, isLocal: false, isDefinition: true, scopeLine: 334, isOptimized: false, unit: !0, variables: !2)
!848 = !DILocation(line: 365, column: 1, scope: !847)
!849 = distinct !DISubprogram(name: "i_upper_imm__opc_lui__xpr__simm20__", scope: !11, file: !11, line: 369, type: !8, isLocal: false, isDefinition: true, scopeLine: 370, isOptimized: false, unit: !0, variables: !2)
!850 = !DILocation(line: 371, column: 59, scope: !849)
!851 = !DILocation(line: 355, column: 106, scope: !849)
!852 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !853)
!853 = distinct !DILocation(line: 362, column: 5, scope: !849)
!854 = !DILocation(line: 365, column: 1, scope: !849)
!855 = distinct !DISubprogram(name: "i_upper_imm__opc_auipc__x_0__simm20__", scope: !11, file: !11, line: 369, type: !8, isLocal: false, isDefinition: true, scopeLine: 370, isOptimized: false, unit: !0, variables: !2)
!856 = !DILocation(line: 365, column: 1, scope: !855)
!857 = distinct !DISubprogram(name: "i_upper_imm__opc_auipc__xpr__simm20__", scope: !11, file: !11, line: 369, type: !8, isLocal: false, isDefinition: true, scopeLine: 370, isOptimized: false, unit: !0, variables: !2)
!858 = !DILocation(line: 360, column: 56, scope: !857)
!859 = !DILocation(line: 360, column: 61, scope: !857)
!860 = !DILocation(line: 371, column: 59, scope: !857)
!861 = !DILocation(line: 355, column: 106, scope: !857)
!862 = !DILocation(line: 67, column: 48, scope: !55, inlinedAt: !863)
!863 = distinct !DILocation(line: 360, column: 53, scope: !857)
!864 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !865)
!865 = distinct !DILocation(line: 362, column: 5, scope: !857)
!866 = !DILocation(line: 365, column: 1, scope: !857)
!867 = distinct !DISubprogram(name: "i_load__opc_lb__x_0__simm12__x_0__", scope: !11, file: !11, line: 369, type: !8, isLocal: false, isDefinition: true, scopeLine: 370, isOptimized: false, unit: !0, variables: !2)
!868 = !DILocation(line: 373, column: 58, scope: !867)
!869 = !DILocation(line: 393, column: 9, scope: !867)
!870 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !872)
!871 = distinct !DISubprogram(name: "MI12if_data_read", scope: !7, file: !7, line: 205, type: !8, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!872 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !874)
!873 = distinct !DISubprogram(name: "MI4load", scope: !7, file: !7, line: 132, type: !8, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!874 = distinct !DILocation(line: 396, column: 47, scope: !867)
!875 = !DILocation(line: 400, column: 1, scope: !867)
!876 = distinct !DISubprogram(name: "i_load__opc_lb__x_0__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!877 = !DILocation(line: 407, column: 58, scope: !876)
!878 = !DILocation(line: 393, column: 9, scope: !876)
!879 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !880)
!880 = distinct !DILocation(line: 395, column: 49, scope: !876)
!881 = !DILocation(line: 395, column: 114, scope: !876)
!882 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !883)
!883 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !884)
!884 = distinct !DILocation(line: 396, column: 47, scope: !876)
!885 = !DILocation(line: 400, column: 1, scope: !876)
!886 = distinct !DISubprogram(name: "i_load__opc_lb__xpr__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!887 = !DILocation(line: 408, column: 58, scope: !886)
!888 = !DILocation(line: 393, column: 9, scope: !886)
!889 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !890)
!890 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !891)
!891 = distinct !DILocation(line: 396, column: 47, scope: !886)
!892 = !DILocation(line: 163, column: 16, scope: !873, inlinedAt: !891)
!893 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !894)
!894 = distinct !DILocation(line: 397, column: 5, scope: !886)
!895 = !DILocation(line: 400, column: 1, scope: !886)
!896 = distinct !DISubprogram(name: "i_load__opc_lb__xpr__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!897 = !DILocation(line: 407, column: 58, scope: !896)
!898 = !DILocation(line: 393, column: 9, scope: !896)
!899 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !900)
!900 = distinct !DILocation(line: 395, column: 49, scope: !896)
!901 = !DILocation(line: 395, column: 114, scope: !896)
!902 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !903)
!903 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !904)
!904 = distinct !DILocation(line: 396, column: 47, scope: !896)
!905 = !DILocation(line: 163, column: 16, scope: !873, inlinedAt: !904)
!906 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !907)
!907 = distinct !DILocation(line: 397, column: 5, scope: !896)
!908 = !DILocation(line: 400, column: 1, scope: !896)
!909 = distinct !DISubprogram(name: "i_load__opc_lh__x_0__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!910 = !DILocation(line: 408, column: 58, scope: !909)
!911 = !DILocation(line: 393, column: 9, scope: !909)
!912 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !913)
!913 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !914)
!914 = distinct !DILocation(line: 396, column: 47, scope: !909)
!915 = !DILocation(line: 400, column: 1, scope: !909)
!916 = distinct !DISubprogram(name: "i_load__opc_lh__x_0__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!917 = !DILocation(line: 407, column: 58, scope: !916)
!918 = !DILocation(line: 393, column: 9, scope: !916)
!919 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !920)
!920 = distinct !DILocation(line: 395, column: 49, scope: !916)
!921 = !DILocation(line: 395, column: 114, scope: !916)
!922 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !923)
!923 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !924)
!924 = distinct !DILocation(line: 396, column: 47, scope: !916)
!925 = !DILocation(line: 400, column: 1, scope: !916)
!926 = distinct !DISubprogram(name: "i_load__opc_lh__xpr__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!927 = !DILocation(line: 408, column: 58, scope: !926)
!928 = !DILocation(line: 393, column: 9, scope: !926)
!929 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !930)
!930 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !931)
!931 = distinct !DILocation(line: 396, column: 47, scope: !926)
!932 = !DILocation(line: 165, column: 16, scope: !873, inlinedAt: !931)
!933 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !934)
!934 = distinct !DILocation(line: 397, column: 5, scope: !926)
!935 = !DILocation(line: 400, column: 1, scope: !926)
!936 = distinct !DISubprogram(name: "i_load__opc_lh__xpr__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!937 = !DILocation(line: 407, column: 58, scope: !936)
!938 = !DILocation(line: 393, column: 9, scope: !936)
!939 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !940)
!940 = distinct !DILocation(line: 395, column: 49, scope: !936)
!941 = !DILocation(line: 395, column: 114, scope: !936)
!942 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !943)
!943 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !944)
!944 = distinct !DILocation(line: 396, column: 47, scope: !936)
!945 = !DILocation(line: 165, column: 16, scope: !873, inlinedAt: !944)
!946 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !947)
!947 = distinct !DILocation(line: 397, column: 5, scope: !936)
!948 = !DILocation(line: 400, column: 1, scope: !936)
!949 = distinct !DISubprogram(name: "i_load__opc_lw__x_0__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!950 = !DILocation(line: 408, column: 58, scope: !949)
!951 = !DILocation(line: 393, column: 9, scope: !949)
!952 = !DILocation(line: 230, column: 41, scope: !871, inlinedAt: !953)
!953 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !954)
!954 = distinct !DILocation(line: 396, column: 47, scope: !949)
!955 = !DILocation(line: 400, column: 1, scope: !949)
!956 = distinct !DISubprogram(name: "i_load__opc_lw__x_0__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!957 = !DILocation(line: 407, column: 58, scope: !956)
!958 = !DILocation(line: 393, column: 9, scope: !956)
!959 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !960)
!960 = distinct !DILocation(line: 395, column: 49, scope: !956)
!961 = !DILocation(line: 395, column: 114, scope: !956)
!962 = !DILocation(line: 230, column: 41, scope: !871, inlinedAt: !963)
!963 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !964)
!964 = distinct !DILocation(line: 396, column: 47, scope: !956)
!965 = !DILocation(line: 400, column: 1, scope: !956)
!966 = distinct !DISubprogram(name: "i_load__opc_lw__xpr__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!967 = !DILocation(line: 408, column: 58, scope: !966)
!968 = !DILocation(line: 393, column: 9, scope: !966)
!969 = !DILocation(line: 230, column: 41, scope: !871, inlinedAt: !970)
!970 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !971)
!971 = distinct !DILocation(line: 396, column: 47, scope: !966)
!972 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !973)
!973 = distinct !DILocation(line: 397, column: 5, scope: !966)
!974 = !DILocation(line: 400, column: 1, scope: !966)
!975 = distinct !DISubprogram(name: "i_load__opc_lw__xpr__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!976 = !DILocation(line: 407, column: 58, scope: !975)
!977 = !DILocation(line: 393, column: 9, scope: !975)
!978 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !979)
!979 = distinct !DILocation(line: 395, column: 49, scope: !975)
!980 = !DILocation(line: 395, column: 114, scope: !975)
!981 = !DILocation(line: 230, column: 41, scope: !871, inlinedAt: !982)
!982 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !983)
!983 = distinct !DILocation(line: 396, column: 47, scope: !975)
!984 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !985)
!985 = distinct !DILocation(line: 397, column: 5, scope: !975)
!986 = !DILocation(line: 400, column: 1, scope: !975)
!987 = distinct !DISubprogram(name: "i_load__opc_lbu__x_0__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!988 = !DILocation(line: 408, column: 58, scope: !987)
!989 = !DILocation(line: 393, column: 9, scope: !987)
!990 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !991)
!991 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !992)
!992 = distinct !DILocation(line: 396, column: 47, scope: !987)
!993 = !DILocation(line: 400, column: 1, scope: !987)
!994 = distinct !DISubprogram(name: "i_load__opc_lbu__x_0__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!995 = !DILocation(line: 407, column: 58, scope: !994)
!996 = !DILocation(line: 393, column: 9, scope: !994)
!997 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !998)
!998 = distinct !DILocation(line: 395, column: 49, scope: !994)
!999 = !DILocation(line: 395, column: 114, scope: !994)
!1000 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 396, column: 47, scope: !994)
!1003 = !DILocation(line: 400, column: 1, scope: !994)
!1004 = distinct !DISubprogram(name: "i_load__opc_lbu__xpr__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1005 = !DILocation(line: 408, column: 58, scope: !1004)
!1006 = !DILocation(line: 393, column: 9, scope: !1004)
!1007 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 396, column: 47, scope: !1004)
!1010 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 397, column: 5, scope: !1004)
!1012 = !DILocation(line: 400, column: 1, scope: !1004)
!1013 = distinct !DISubprogram(name: "i_load__opc_lbu__xpr__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1014 = !DILocation(line: 407, column: 58, scope: !1013)
!1015 = !DILocation(line: 393, column: 9, scope: !1013)
!1016 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 395, column: 49, scope: !1013)
!1018 = !DILocation(line: 395, column: 114, scope: !1013)
!1019 = !DILocation(line: 224, column: 41, scope: !871, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 396, column: 47, scope: !1013)
!1022 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 397, column: 5, scope: !1013)
!1024 = !DILocation(line: 400, column: 1, scope: !1013)
!1025 = distinct !DISubprogram(name: "i_load__opc_lhu__x_0__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1026 = !DILocation(line: 408, column: 58, scope: !1025)
!1027 = !DILocation(line: 393, column: 9, scope: !1025)
!1028 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 396, column: 47, scope: !1025)
!1031 = !DILocation(line: 400, column: 1, scope: !1025)
!1032 = distinct !DISubprogram(name: "i_load__opc_lhu__x_0__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1033 = !DILocation(line: 407, column: 58, scope: !1032)
!1034 = !DILocation(line: 393, column: 9, scope: !1032)
!1035 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 395, column: 49, scope: !1032)
!1037 = !DILocation(line: 395, column: 114, scope: !1032)
!1038 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 396, column: 47, scope: !1032)
!1041 = !DILocation(line: 400, column: 1, scope: !1032)
!1042 = distinct !DISubprogram(name: "i_load__opc_lhu__xpr__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1043 = !DILocation(line: 408, column: 58, scope: !1042)
!1044 = !DILocation(line: 393, column: 9, scope: !1042)
!1045 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 396, column: 47, scope: !1042)
!1048 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 397, column: 5, scope: !1042)
!1050 = !DILocation(line: 400, column: 1, scope: !1042)
!1051 = distinct !DISubprogram(name: "i_load__opc_lhu__xpr__simm12__xpr__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1052 = !DILocation(line: 407, column: 58, scope: !1051)
!1053 = !DILocation(line: 393, column: 9, scope: !1051)
!1054 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 395, column: 49, scope: !1051)
!1056 = !DILocation(line: 395, column: 114, scope: !1051)
!1057 = !DILocation(line: 227, column: 41, scope: !871, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 158, column: 24, scope: !873, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 396, column: 47, scope: !1051)
!1060 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 397, column: 5, scope: !1051)
!1062 = !DILocation(line: 400, column: 1, scope: !1051)
!1063 = distinct !DISubprogram(name: "i_store__opc_sb__x_0__simm12__x_0__", scope: !11, file: !11, line: 404, type: !8, isLocal: false, isDefinition: true, scopeLine: 405, isOptimized: false, unit: !0, variables: !2)
!1064 = !DILocation(line: 408, column: 58, scope: !1063)
!1065 = !DILocation(line: 258, column: 107, scope: !1066, inlinedAt: !1067)
!1066 = distinct !DISubprogram(name: "MI13if_data_write", scope: !7, file: !7, line: 245, type: !8, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1067 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1069)
!1068 = distinct !DISubprogram(name: "MI5store", scope: !7, file: !7, line: 178, type: !8, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1069 = distinct !DILocation(line: 427, column: 5, scope: !1063)
!1070 = !DILocation(line: 430, column: 1, scope: !1063)
!1071 = distinct !DISubprogram(name: "i_store__opc_sb__x_0__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1072 = !DILocation(line: 437, column: 58, scope: !1071)
!1073 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 425, column: 50, scope: !1071)
!1075 = !DILocation(line: 425, column: 115, scope: !1071)
!1076 = !DILocation(line: 258, column: 107, scope: !1066, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 427, column: 5, scope: !1071)
!1079 = !DILocation(line: 430, column: 1, scope: !1071)
!1080 = distinct !DISubprogram(name: "i_store__opc_sb__xpr__simm12__x_0__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1081 = !DILocation(line: 438, column: 58, scope: !1080)
!1082 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 426, column: 48, scope: !1080)
!1084 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1083)
!1085 = !DILocation(line: 258, column: 107, scope: !1066, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 427, column: 5, scope: !1080)
!1088 = !DILocation(line: 430, column: 1, scope: !1080)
!1089 = distinct !DISubprogram(name: "i_store__opc_sb__xpr__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1090 = !DILocation(line: 437, column: 58, scope: !1089)
!1091 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 425, column: 50, scope: !1089)
!1093 = !DILocation(line: 425, column: 115, scope: !1089)
!1094 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 426, column: 48, scope: !1089)
!1096 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1095)
!1097 = !DILocation(line: 258, column: 107, scope: !1066, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 427, column: 5, scope: !1089)
!1100 = !DILocation(line: 430, column: 1, scope: !1089)
!1101 = distinct !DISubprogram(name: "i_store__opc_sh__x_0__simm12__x_0__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1102 = !DILocation(line: 438, column: 58, scope: !1101)
!1103 = !DILocation(line: 261, column: 107, scope: !1066, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 427, column: 5, scope: !1101)
!1106 = !DILocation(line: 430, column: 1, scope: !1101)
!1107 = distinct !DISubprogram(name: "i_store__opc_sh__x_0__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1108 = !DILocation(line: 437, column: 58, scope: !1107)
!1109 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 425, column: 50, scope: !1107)
!1111 = !DILocation(line: 425, column: 115, scope: !1107)
!1112 = !DILocation(line: 261, column: 107, scope: !1066, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 427, column: 5, scope: !1107)
!1115 = !DILocation(line: 430, column: 1, scope: !1107)
!1116 = distinct !DISubprogram(name: "i_store__opc_sh__xpr__simm12__x_0__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1117 = !DILocation(line: 438, column: 58, scope: !1116)
!1118 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 426, column: 48, scope: !1116)
!1120 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1119)
!1121 = !DILocation(line: 261, column: 107, scope: !1066, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 427, column: 5, scope: !1116)
!1124 = !DILocation(line: 430, column: 1, scope: !1116)
!1125 = distinct !DISubprogram(name: "i_store__opc_sh__xpr__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1126 = !DILocation(line: 437, column: 58, scope: !1125)
!1127 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 425, column: 50, scope: !1125)
!1129 = !DILocation(line: 425, column: 115, scope: !1125)
!1130 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 426, column: 48, scope: !1125)
!1132 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1131)
!1133 = !DILocation(line: 261, column: 107, scope: !1066, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 427, column: 5, scope: !1125)
!1136 = !DILocation(line: 430, column: 1, scope: !1125)
!1137 = distinct !DISubprogram(name: "i_store__opc_sw__x_0__simm12__x_0__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1138 = !DILocation(line: 438, column: 58, scope: !1137)
!1139 = !DILocation(line: 264, column: 107, scope: !1066, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 427, column: 5, scope: !1137)
!1142 = !DILocation(line: 430, column: 1, scope: !1137)
!1143 = distinct !DISubprogram(name: "i_store__opc_sw__x_0__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1144 = !DILocation(line: 437, column: 58, scope: !1143)
!1145 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 425, column: 50, scope: !1143)
!1147 = !DILocation(line: 425, column: 115, scope: !1143)
!1148 = !DILocation(line: 264, column: 107, scope: !1066, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 427, column: 5, scope: !1143)
!1151 = !DILocation(line: 430, column: 1, scope: !1143)
!1152 = distinct !DISubprogram(name: "i_store__opc_sw__xpr__simm12__x_0__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1153 = !DILocation(line: 438, column: 58, scope: !1152)
!1154 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 426, column: 48, scope: !1152)
!1156 = !DILocation(line: 264, column: 107, scope: !1066, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 427, column: 5, scope: !1152)
!1159 = !DILocation(line: 430, column: 1, scope: !1152)
!1160 = distinct !DISubprogram(name: "i_store__opc_sw__xpr__simm12__xpr__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1161 = !DILocation(line: 437, column: 58, scope: !1160)
!1162 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 425, column: 50, scope: !1160)
!1164 = !DILocation(line: 425, column: 115, scope: !1160)
!1165 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 426, column: 48, scope: !1160)
!1167 = !DILocation(line: 264, column: 107, scope: !1066, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 201, column: 1, scope: !1068, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 427, column: 5, scope: !1160)
!1170 = !DILocation(line: 430, column: 1, scope: !1160)
!1171 = distinct !DISubprogram(name: "i_li_alias__x_0__simm12__", scope: !11, file: !11, line: 434, type: !8, isLocal: false, isDefinition: true, scopeLine: 435, isOptimized: false, unit: !0, variables: !2)
!1172 = !DILocation(line: 467, column: 1, scope: !1171)
!1173 = distinct !DISubprogram(name: "i_li_alias__xpr__simm12__", scope: !11, file: !11, line: 471, type: !8, isLocal: false, isDefinition: true, scopeLine: 472, isOptimized: false, unit: !0, variables: !2)
!1174 = !DILocation(line: 473, column: 58, scope: !1173)
!1175 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 464, column: 5, scope: !1173)
!1177 = !DILocation(line: 467, column: 1, scope: !1173)
!1178 = distinct !DISubprogram(name: "i_mv_alias__x_0__x_0__", scope: !11, file: !11, line: 471, type: !8, isLocal: false, isDefinition: true, scopeLine: 472, isOptimized: false, unit: !0, variables: !2)
!1179 = !DILocation(line: 488, column: 1, scope: !1178)
!1180 = distinct !DISubprogram(name: "i_mv_alias__x_0__xpr__", scope: !11, file: !11, line: 492, type: !8, isLocal: false, isDefinition: true, scopeLine: 493, isOptimized: false, unit: !0, variables: !2)
!1181 = !DILocation(line: 488, column: 1, scope: !1180)
!1182 = distinct !DISubprogram(name: "i_mv_alias__xpr__x_0__", scope: !11, file: !11, line: 492, type: !8, isLocal: false, isDefinition: true, scopeLine: 493, isOptimized: false, unit: !0, variables: !2)
!1183 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 485, column: 5, scope: !1182)
!1185 = !DILocation(line: 488, column: 1, scope: !1182)
!1186 = distinct !DISubprogram(name: "i_mv_alias__xpr__xpr__", scope: !11, file: !11, line: 492, type: !8, isLocal: false, isDefinition: true, scopeLine: 493, isOptimized: false, unit: !0, variables: !2)
!1187 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 484, column: 52, scope: !1186)
!1189 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 485, column: 5, scope: !1186)
!1191 = !DILocation(line: 488, column: 1, scope: !1186)
!1192 = distinct !DISubprogram(name: "i_not_alias__x_0__x_0__", scope: !11, file: !11, line: 492, type: !8, isLocal: false, isDefinition: true, scopeLine: 493, isOptimized: false, unit: !0, variables: !2)
!1193 = !DILocation(line: 509, column: 1, scope: !1192)
!1194 = distinct !DISubprogram(name: "i_not_alias__x_0__xpr__", scope: !11, file: !11, line: 513, type: !8, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: false, unit: !0, variables: !2)
!1195 = !DILocation(line: 509, column: 1, scope: !1194)
!1196 = distinct !DISubprogram(name: "i_not_alias__xpr__x_0__", scope: !11, file: !11, line: 513, type: !8, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: false, unit: !0, variables: !2)
!1197 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 506, column: 5, scope: !1196)
!1199 = !DILocation(line: 509, column: 1, scope: !1196)
!1200 = distinct !DISubprogram(name: "i_not_alias__xpr__xpr__", scope: !11, file: !11, line: 513, type: !8, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: false, unit: !0, variables: !2)
!1201 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 504, column: 53, scope: !1200)
!1203 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1202)
!1204 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 506, column: 5, scope: !1200)
!1206 = !DILocation(line: 509, column: 1, scope: !1200)
!1207 = distinct !DISubprogram(name: "i_neg_alias__x_0__x_0__", scope: !11, file: !11, line: 513, type: !8, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: false, unit: !0, variables: !2)
!1208 = !DILocation(line: 531, column: 1, scope: !1207)
!1209 = distinct !DISubprogram(name: "i_neg_alias__x_0__xpr__", scope: !11, file: !11, line: 535, type: !8, isLocal: false, isDefinition: true, scopeLine: 536, isOptimized: false, unit: !0, variables: !2)
!1210 = !DILocation(line: 531, column: 1, scope: !1209)
!1211 = distinct !DISubprogram(name: "i_neg_alias__xpr__x_0__", scope: !11, file: !11, line: 535, type: !8, isLocal: false, isDefinition: true, scopeLine: 536, isOptimized: false, unit: !0, variables: !2)
!1212 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 528, column: 5, scope: !1211)
!1214 = !DILocation(line: 531, column: 1, scope: !1211)
!1215 = distinct !DISubprogram(name: "i_neg_alias__xpr__xpr__", scope: !11, file: !11, line: 535, type: !8, isLocal: false, isDefinition: true, scopeLine: 536, isOptimized: false, unit: !0, variables: !2)
!1216 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 526, column: 53, scope: !1215)
!1218 = !DILocation(line: 527, column: 101, scope: !1215)
!1219 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 528, column: 5, scope: !1215)
!1221 = !DILocation(line: 531, column: 1, scope: !1215)
!1222 = distinct !DISubprogram(name: "i_seqz_alias__x_0__x_0__", scope: !11, file: !11, line: 535, type: !8, isLocal: false, isDefinition: true, scopeLine: 536, isOptimized: false, unit: !0, variables: !2)
!1223 = !DILocation(line: 554, column: 1, scope: !1222)
!1224 = distinct !DISubprogram(name: "i_seqz_alias__x_0__xpr__", scope: !11, file: !11, line: 558, type: !8, isLocal: false, isDefinition: true, scopeLine: 559, isOptimized: false, unit: !0, variables: !2)
!1225 = !DILocation(line: 554, column: 1, scope: !1224)
!1226 = distinct !DISubprogram(name: "i_seqz_alias__xpr__x_0__", scope: !11, file: !11, line: 558, type: !8, isLocal: false, isDefinition: true, scopeLine: 559, isOptimized: false, unit: !0, variables: !2)
!1227 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 551, column: 5, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !11, discriminator: 2)
!1230 = !DILocation(line: 554, column: 1, scope: !1226)
!1231 = distinct !DISubprogram(name: "i_seqz_alias__xpr__xpr__", scope: !11, file: !11, line: 558, type: !8, isLocal: false, isDefinition: true, scopeLine: 559, isOptimized: false, unit: !0, variables: !2)
!1232 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 547, column: 53, scope: !1231)
!1234 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1233)
!1235 = !DILocation(line: 551, column: 5, scope: !1231)
!1236 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 551, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1231, file: !11, discriminator: 2)
!1239 = !DILocation(line: 554, column: 1, scope: !1231)
!1240 = distinct !DISubprogram(name: "i_snez_alias__x_0__x_0__", scope: !11, file: !11, line: 558, type: !8, isLocal: false, isDefinition: true, scopeLine: 559, isOptimized: false, unit: !0, variables: !2)
!1241 = !DILocation(line: 579, column: 1, scope: !1240)
!1242 = distinct !DISubprogram(name: "i_snez_alias__x_0__xpr__", scope: !11, file: !11, line: 583, type: !8, isLocal: false, isDefinition: true, scopeLine: 584, isOptimized: false, unit: !0, variables: !2)
!1243 = !DILocation(line: 579, column: 1, scope: !1242)
!1244 = distinct !DISubprogram(name: "i_snez_alias__xpr__x_0__", scope: !11, file: !11, line: 583, type: !8, isLocal: false, isDefinition: true, scopeLine: 584, isOptimized: false, unit: !0, variables: !2)
!1245 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 576, column: 5, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1244, file: !11, discriminator: 2)
!1248 = !DILocation(line: 579, column: 1, scope: !1244)
!1249 = distinct !DISubprogram(name: "i_snez_alias__xpr__xpr__", scope: !11, file: !11, line: 583, type: !8, isLocal: false, isDefinition: true, scopeLine: 584, isOptimized: false, unit: !0, variables: !2)
!1250 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 572, column: 53, scope: !1249)
!1252 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1251)
!1253 = !DILocation(line: 576, column: 5, scope: !1249)
!1254 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 576, column: 5, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1249, file: !11, discriminator: 2)
!1257 = !DILocation(line: 579, column: 1, scope: !1249)
!1258 = distinct !DISubprogram(name: "i_sltz_alias__x_0__x_0__", scope: !11, file: !11, line: 583, type: !8, isLocal: false, isDefinition: true, scopeLine: 584, isOptimized: false, unit: !0, variables: !2)
!1259 = !DILocation(line: 603, column: 1, scope: !1258)
!1260 = distinct !DISubprogram(name: "i_sltz_alias__x_0__xpr__", scope: !11, file: !11, line: 607, type: !8, isLocal: false, isDefinition: true, scopeLine: 608, isOptimized: false, unit: !0, variables: !2)
!1261 = !DILocation(line: 603, column: 1, scope: !1260)
!1262 = distinct !DISubprogram(name: "i_sltz_alias__xpr__x_0__", scope: !11, file: !11, line: 607, type: !8, isLocal: false, isDefinition: true, scopeLine: 608, isOptimized: false, unit: !0, variables: !2)
!1263 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 600, column: 5, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1262, file: !11, discriminator: 2)
!1266 = !DILocation(line: 603, column: 1, scope: !1262)
!1267 = distinct !DISubprogram(name: "i_sltz_alias__xpr__xpr__", scope: !11, file: !11, line: 607, type: !8, isLocal: false, isDefinition: true, scopeLine: 608, isOptimized: false, unit: !0, variables: !2)
!1268 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 596, column: 61, scope: !1267)
!1270 = !DILocation(line: 600, column: 5, scope: !1267)
!1271 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 600, column: 5, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1267, file: !11, discriminator: 2)
!1274 = !DILocation(line: 603, column: 1, scope: !1267)
!1275 = distinct !DISubprogram(name: "i_sgtz_alias__x_0__x_0__", scope: !11, file: !11, line: 607, type: !8, isLocal: false, isDefinition: true, scopeLine: 608, isOptimized: false, unit: !0, variables: !2)
!1276 = !DILocation(line: 628, column: 1, scope: !1275)
!1277 = distinct !DISubprogram(name: "i_sgtz_alias__x_0__xpr__", scope: !11, file: !11, line: 632, type: !8, isLocal: false, isDefinition: true, scopeLine: 633, isOptimized: false, unit: !0, variables: !2)
!1278 = !DILocation(line: 628, column: 1, scope: !1277)
!1279 = distinct !DISubprogram(name: "i_sgtz_alias__xpr__x_0__", scope: !11, file: !11, line: 632, type: !8, isLocal: false, isDefinition: true, scopeLine: 633, isOptimized: false, unit: !0, variables: !2)
!1280 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 625, column: 5, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1279, file: !11, discriminator: 2)
!1283 = !DILocation(line: 628, column: 1, scope: !1279)
!1284 = distinct !DISubprogram(name: "i_sgtz_alias__xpr__xpr__", scope: !11, file: !11, line: 632, type: !8, isLocal: false, isDefinition: true, scopeLine: 633, isOptimized: false, unit: !0, variables: !2)
!1285 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 621, column: 61, scope: !1284)
!1287 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1286)
!1288 = !DILocation(line: 625, column: 5, scope: !1284)
!1289 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 625, column: 5, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1284, file: !11, discriminator: 2)
!1292 = !DILocation(line: 628, column: 1, scope: !1284)
!1293 = distinct !DISubprogram(name: "i_beqz_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 632, type: !8, isLocal: false, isDefinition: true, scopeLine: 633, isOptimized: false, unit: !0, variables: !2)
!1294 = !DILocation(line: 634, column: 76, scope: !1293)
!1295 = !DILocation(line: 675, column: 97, scope: !1293)
!1296 = !DILocation(line: 675, column: 21, scope: !1293)
!1297 = !DILocation(line: 675, column: 26, scope: !1293)
!1298 = !DILocation(line: 675, column: 113, scope: !1293)
!1299 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 675, column: 9, scope: !1293)
!1301 = !DILocation(line: 679, column: 1, scope: !1293)
!1302 = distinct !DISubprogram(name: "i_beqz_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 683, type: !8, isLocal: false, isDefinition: true, scopeLine: 684, isOptimized: false, unit: !0, variables: !2)
!1303 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 672, column: 62, scope: !1302)
!1305 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1304)
!1306 = !DILocation(line: 675, column: 21, scope: !1302)
!1307 = !DILocation(line: 675, column: 26, scope: !1302)
!1308 = !DILocation(line: 685, column: 76, scope: !1302)
!1309 = !DILocation(line: 675, column: 97, scope: !1302)
!1310 = !DILocation(line: 675, column: 113, scope: !1302)
!1311 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 675, column: 9, scope: !1302)
!1313 = !DILocation(line: 679, column: 1, scope: !1302)
!1314 = distinct !DISubprogram(name: "i_bnez_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 683, type: !8, isLocal: false, isDefinition: true, scopeLine: 684, isOptimized: false, unit: !0, variables: !2)
!1315 = !DILocation(line: 700, column: 1, scope: !1314)
!1316 = distinct !DISubprogram(name: "i_bnez_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 704, type: !8, isLocal: false, isDefinition: true, scopeLine: 705, isOptimized: false, unit: !0, variables: !2)
!1317 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 693, column: 62, scope: !1316)
!1319 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1318)
!1320 = !DILocation(line: 696, column: 21, scope: !1316)
!1321 = !DILocation(line: 696, column: 26, scope: !1316)
!1322 = !DILocation(line: 706, column: 76, scope: !1316)
!1323 = !DILocation(line: 696, column: 97, scope: !1316)
!1324 = !DILocation(line: 696, column: 113, scope: !1316)
!1325 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 696, column: 9, scope: !1316)
!1327 = !DILocation(line: 700, column: 1, scope: !1316)
!1328 = distinct !DISubprogram(name: "i_blez_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 704, type: !8, isLocal: false, isDefinition: true, scopeLine: 705, isOptimized: false, unit: !0, variables: !2)
!1329 = !DILocation(line: 706, column: 76, scope: !1328)
!1330 = !DILocation(line: 717, column: 97, scope: !1328)
!1331 = !DILocation(line: 717, column: 21, scope: !1328)
!1332 = !DILocation(line: 717, column: 26, scope: !1328)
!1333 = !DILocation(line: 717, column: 113, scope: !1328)
!1334 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 717, column: 9, scope: !1328)
!1336 = !DILocation(line: 721, column: 1, scope: !1328)
!1337 = distinct !DISubprogram(name: "i_blez_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 725, type: !8, isLocal: false, isDefinition: true, scopeLine: 726, isOptimized: false, unit: !0, variables: !2)
!1338 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 714, column: 62, scope: !1337)
!1340 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1339)
!1341 = !DILocation(line: 717, column: 21, scope: !1337)
!1342 = !DILocation(line: 717, column: 26, scope: !1337)
!1343 = !DILocation(line: 727, column: 76, scope: !1337)
!1344 = !DILocation(line: 717, column: 97, scope: !1337)
!1345 = !DILocation(line: 717, column: 113, scope: !1337)
!1346 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 717, column: 9, scope: !1337)
!1348 = !DILocation(line: 721, column: 1, scope: !1337)
!1349 = distinct !DISubprogram(name: "i_bgez_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 725, type: !8, isLocal: false, isDefinition: true, scopeLine: 726, isOptimized: false, unit: !0, variables: !2)
!1350 = !DILocation(line: 727, column: 76, scope: !1349)
!1351 = !DILocation(line: 738, column: 97, scope: !1349)
!1352 = !DILocation(line: 738, column: 21, scope: !1349)
!1353 = !DILocation(line: 738, column: 26, scope: !1349)
!1354 = !DILocation(line: 738, column: 113, scope: !1349)
!1355 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 738, column: 9, scope: !1349)
!1357 = !DILocation(line: 742, column: 1, scope: !1349)
!1358 = distinct !DISubprogram(name: "i_bgez_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 746, type: !8, isLocal: false, isDefinition: true, scopeLine: 747, isOptimized: false, unit: !0, variables: !2)
!1359 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 735, column: 62, scope: !1358)
!1361 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1360)
!1362 = !DILocation(line: 738, column: 21, scope: !1358)
!1363 = !DILocation(line: 738, column: 26, scope: !1358)
!1364 = !DILocation(line: 748, column: 76, scope: !1358)
!1365 = !DILocation(line: 738, column: 97, scope: !1358)
!1366 = !DILocation(line: 738, column: 113, scope: !1358)
!1367 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 738, column: 9, scope: !1358)
!1369 = !DILocation(line: 742, column: 1, scope: !1358)
!1370 = distinct !DISubprogram(name: "i_bltz_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 746, type: !8, isLocal: false, isDefinition: true, scopeLine: 747, isOptimized: false, unit: !0, variables: !2)
!1371 = !DILocation(line: 763, column: 1, scope: !1370)
!1372 = distinct !DISubprogram(name: "i_bltz_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 767, type: !8, isLocal: false, isDefinition: true, scopeLine: 768, isOptimized: false, unit: !0, variables: !2)
!1373 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 756, column: 62, scope: !1372)
!1375 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1374)
!1376 = !DILocation(line: 759, column: 21, scope: !1372)
!1377 = !DILocation(line: 759, column: 26, scope: !1372)
!1378 = !DILocation(line: 769, column: 76, scope: !1372)
!1379 = !DILocation(line: 759, column: 97, scope: !1372)
!1380 = !DILocation(line: 759, column: 113, scope: !1372)
!1381 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 759, column: 9, scope: !1372)
!1383 = !DILocation(line: 763, column: 1, scope: !1372)
!1384 = distinct !DISubprogram(name: "i_bgtz_alias__x_0__rel_addr12__", scope: !11, file: !11, line: 767, type: !8, isLocal: false, isDefinition: true, scopeLine: 768, isOptimized: false, unit: !0, variables: !2)
!1385 = !DILocation(line: 784, column: 1, scope: !1384)
!1386 = distinct !DISubprogram(name: "i_bgtz_alias__xpr__rel_addr12__", scope: !11, file: !11, line: 788, type: !8, isLocal: false, isDefinition: true, scopeLine: 789, isOptimized: false, unit: !0, variables: !2)
!1387 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 777, column: 62, scope: !1386)
!1389 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1388)
!1390 = !DILocation(line: 780, column: 21, scope: !1386)
!1391 = !DILocation(line: 780, column: 26, scope: !1386)
!1392 = !DILocation(line: 790, column: 76, scope: !1386)
!1393 = !DILocation(line: 780, column: 97, scope: !1386)
!1394 = !DILocation(line: 780, column: 113, scope: !1386)
!1395 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 780, column: 9, scope: !1386)
!1397 = !DILocation(line: 784, column: 1, scope: !1386)
!1398 = distinct !DISubprogram(name: "i_bgt_alias__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 788, type: !8, isLocal: false, isDefinition: true, scopeLine: 789, isOptimized: false, unit: !0, variables: !2)
!1399 = !DILocation(line: 806, column: 1, scope: !1398)
!1400 = distinct !DISubprogram(name: "i_bgt_alias__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 810, type: !8, isLocal: false, isDefinition: true, scopeLine: 811, isOptimized: false, unit: !0, variables: !2)
!1401 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 799, column: 59, scope: !1400)
!1403 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1402)
!1404 = !DILocation(line: 802, column: 21, scope: !1400)
!1405 = !DILocation(line: 802, column: 26, scope: !1400)
!1406 = !DILocation(line: 812, column: 76, scope: !1400)
!1407 = !DILocation(line: 802, column: 97, scope: !1400)
!1408 = !DILocation(line: 802, column: 113, scope: !1400)
!1409 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 802, column: 9, scope: !1400)
!1411 = !DILocation(line: 806, column: 1, scope: !1400)
!1412 = distinct !DISubprogram(name: "i_bgt_alias__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 810, type: !8, isLocal: false, isDefinition: true, scopeLine: 811, isOptimized: false, unit: !0, variables: !2)
!1413 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 798, column: 59, scope: !1412)
!1415 = !DILocation(line: 800, column: 54, scope: !1412)
!1416 = !DILocation(line: 802, column: 21, scope: !1412)
!1417 = !DILocation(line: 802, column: 26, scope: !1412)
!1418 = !DILocation(line: 812, column: 76, scope: !1412)
!1419 = !DILocation(line: 802, column: 97, scope: !1412)
!1420 = !DILocation(line: 802, column: 113, scope: !1412)
!1421 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 802, column: 9, scope: !1412)
!1423 = !DILocation(line: 806, column: 1, scope: !1412)
!1424 = distinct !DISubprogram(name: "i_bgt_alias__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 810, type: !8, isLocal: false, isDefinition: true, scopeLine: 811, isOptimized: false, unit: !0, variables: !2)
!1425 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 798, column: 59, scope: !1424)
!1427 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 799, column: 59, scope: !1424)
!1429 = !DILocation(line: 800, column: 54, scope: !1424)
!1430 = !DILocation(line: 802, column: 21, scope: !1424)
!1431 = !DILocation(line: 802, column: 26, scope: !1424)
!1432 = !DILocation(line: 812, column: 76, scope: !1424)
!1433 = !DILocation(line: 802, column: 97, scope: !1424)
!1434 = !DILocation(line: 802, column: 113, scope: !1424)
!1435 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 802, column: 9, scope: !1424)
!1437 = !DILocation(line: 806, column: 1, scope: !1424)
!1438 = distinct !DISubprogram(name: "i_ble_alias__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 810, type: !8, isLocal: false, isDefinition: true, scopeLine: 811, isOptimized: false, unit: !0, variables: !2)
!1439 = !DILocation(line: 812, column: 76, scope: !1438)
!1440 = !DILocation(line: 824, column: 97, scope: !1438)
!1441 = !DILocation(line: 824, column: 21, scope: !1438)
!1442 = !DILocation(line: 824, column: 26, scope: !1438)
!1443 = !DILocation(line: 824, column: 113, scope: !1438)
!1444 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 824, column: 9, scope: !1438)
!1446 = !DILocation(line: 828, column: 1, scope: !1438)
!1447 = distinct !DISubprogram(name: "i_ble_alias__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 832, type: !8, isLocal: false, isDefinition: true, scopeLine: 833, isOptimized: false, unit: !0, variables: !2)
!1448 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 821, column: 59, scope: !1447)
!1450 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1449)
!1451 = !DILocation(line: 824, column: 21, scope: !1447)
!1452 = !DILocation(line: 824, column: 26, scope: !1447)
!1453 = !DILocation(line: 834, column: 76, scope: !1447)
!1454 = !DILocation(line: 824, column: 97, scope: !1447)
!1455 = !DILocation(line: 824, column: 113, scope: !1447)
!1456 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 824, column: 9, scope: !1447)
!1458 = !DILocation(line: 828, column: 1, scope: !1447)
!1459 = distinct !DISubprogram(name: "i_ble_alias__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 832, type: !8, isLocal: false, isDefinition: true, scopeLine: 833, isOptimized: false, unit: !0, variables: !2)
!1460 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 820, column: 59, scope: !1459)
!1462 = !DILocation(line: 822, column: 54, scope: !1459)
!1463 = !DILocation(line: 824, column: 21, scope: !1459)
!1464 = !DILocation(line: 824, column: 26, scope: !1459)
!1465 = !DILocation(line: 834, column: 76, scope: !1459)
!1466 = !DILocation(line: 824, column: 97, scope: !1459)
!1467 = !DILocation(line: 824, column: 113, scope: !1459)
!1468 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 824, column: 9, scope: !1459)
!1470 = !DILocation(line: 828, column: 1, scope: !1459)
!1471 = distinct !DISubprogram(name: "i_ble_alias__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 832, type: !8, isLocal: false, isDefinition: true, scopeLine: 833, isOptimized: false, unit: !0, variables: !2)
!1472 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 820, column: 59, scope: !1471)
!1474 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 821, column: 59, scope: !1471)
!1476 = !DILocation(line: 822, column: 54, scope: !1471)
!1477 = !DILocation(line: 824, column: 21, scope: !1471)
!1478 = !DILocation(line: 824, column: 26, scope: !1471)
!1479 = !DILocation(line: 834, column: 76, scope: !1471)
!1480 = !DILocation(line: 824, column: 97, scope: !1471)
!1481 = !DILocation(line: 824, column: 113, scope: !1471)
!1482 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 824, column: 9, scope: !1471)
!1484 = !DILocation(line: 828, column: 1, scope: !1471)
!1485 = distinct !DISubprogram(name: "i_bgtu_alias__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 832, type: !8, isLocal: false, isDefinition: true, scopeLine: 833, isOptimized: false, unit: !0, variables: !2)
!1486 = !DILocation(line: 850, column: 1, scope: !1485)
!1487 = distinct !DISubprogram(name: "i_bgtu_alias__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 854, type: !8, isLocal: false, isDefinition: true, scopeLine: 855, isOptimized: false, unit: !0, variables: !2)
!1488 = !DILocation(line: 850, column: 1, scope: !1487)
!1489 = distinct !DISubprogram(name: "i_bgtu_alias__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 854, type: !8, isLocal: false, isDefinition: true, scopeLine: 855, isOptimized: false, unit: !0, variables: !2)
!1490 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 842, column: 52, scope: !1489)
!1492 = !DILocation(line: 844, column: 55, scope: !1489)
!1493 = !DILocation(line: 846, column: 21, scope: !1489)
!1494 = !DILocation(line: 846, column: 26, scope: !1489)
!1495 = !DILocation(line: 856, column: 76, scope: !1489)
!1496 = !DILocation(line: 846, column: 97, scope: !1489)
!1497 = !DILocation(line: 846, column: 113, scope: !1489)
!1498 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 846, column: 9, scope: !1489)
!1500 = !DILocation(line: 850, column: 1, scope: !1489)
!1501 = distinct !DISubprogram(name: "i_bgtu_alias__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 854, type: !8, isLocal: false, isDefinition: true, scopeLine: 855, isOptimized: false, unit: !0, variables: !2)
!1502 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 842, column: 52, scope: !1501)
!1504 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 843, column: 52, scope: !1501)
!1506 = !DILocation(line: 844, column: 55, scope: !1501)
!1507 = !DILocation(line: 846, column: 21, scope: !1501)
!1508 = !DILocation(line: 846, column: 26, scope: !1501)
!1509 = !DILocation(line: 856, column: 76, scope: !1501)
!1510 = !DILocation(line: 846, column: 97, scope: !1501)
!1511 = !DILocation(line: 846, column: 113, scope: !1501)
!1512 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 846, column: 9, scope: !1501)
!1514 = !DILocation(line: 850, column: 1, scope: !1501)
!1515 = distinct !DISubprogram(name: "i_bleu_alias__x_0__x_0__rel_addr12__", scope: !11, file: !11, line: 854, type: !8, isLocal: false, isDefinition: true, scopeLine: 855, isOptimized: false, unit: !0, variables: !2)
!1516 = !DILocation(line: 872, column: 1, scope: !1515)
!1517 = distinct !DISubprogram(name: "i_bleu_alias__x_0__xpr__rel_addr12__", scope: !11, file: !11, line: 876, type: !8, isLocal: false, isDefinition: true, scopeLine: 877, isOptimized: false, unit: !0, variables: !2)
!1518 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 865, column: 52, scope: !1517)
!1520 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1519)
!1521 = !DILocation(line: 868, column: 21, scope: !1517)
!1522 = !DILocation(line: 868, column: 26, scope: !1517)
!1523 = !DILocation(line: 878, column: 76, scope: !1517)
!1524 = !DILocation(line: 868, column: 97, scope: !1517)
!1525 = !DILocation(line: 868, column: 113, scope: !1517)
!1526 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 868, column: 9, scope: !1517)
!1528 = !DILocation(line: 872, column: 1, scope: !1517)
!1529 = distinct !DISubprogram(name: "i_bleu_alias__xpr__x_0__rel_addr12__", scope: !11, file: !11, line: 876, type: !8, isLocal: false, isDefinition: true, scopeLine: 877, isOptimized: false, unit: !0, variables: !2)
!1530 = !DILocation(line: 872, column: 1, scope: !1529)
!1531 = distinct !DISubprogram(name: "i_bleu_alias__xpr__xpr__rel_addr12__", scope: !11, file: !11, line: 876, type: !8, isLocal: false, isDefinition: true, scopeLine: 877, isOptimized: false, unit: !0, variables: !2)
!1532 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 864, column: 52, scope: !1531)
!1534 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 865, column: 52, scope: !1531)
!1536 = !DILocation(line: 866, column: 55, scope: !1531)
!1537 = !DILocation(line: 868, column: 21, scope: !1531)
!1538 = !DILocation(line: 868, column: 26, scope: !1531)
!1539 = !DILocation(line: 878, column: 76, scope: !1531)
!1540 = !DILocation(line: 868, column: 97, scope: !1531)
!1541 = !DILocation(line: 868, column: 113, scope: !1531)
!1542 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 868, column: 9, scope: !1531)
!1544 = !DILocation(line: 872, column: 1, scope: !1531)
!1545 = distinct !DISubprogram(name: "i_j_alias__rel_addr20__", scope: !11, file: !11, line: 876, type: !8, isLocal: false, isDefinition: true, scopeLine: 877, isOptimized: false, unit: !0, variables: !2)
!1546 = !DILocation(line: 878, column: 76, scope: !1545)
!1547 = !DILocation(line: 883, column: 93, scope: !1545)
!1548 = !DILocation(line: 883, column: 17, scope: !1545)
!1549 = !DILocation(line: 883, column: 22, scope: !1545)
!1550 = !DILocation(line: 883, column: 109, scope: !1545)
!1551 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 883, column: 5, scope: !1545)
!1553 = !DILocation(line: 886, column: 1, scope: !1545)
!1554 = distinct !DISubprogram(name: "i_jr_alias__x_0__", scope: !11, file: !11, line: 890, type: !8, isLocal: false, isDefinition: true, scopeLine: 891, isOptimized: false, unit: !0, variables: !2)
!1555 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 904, column: 5, scope: !1554)
!1557 = !DILocation(line: 907, column: 1, scope: !1554)
!1558 = distinct !DISubprogram(name: "i_jr_alias__xpr__", scope: !11, file: !11, line: 911, type: !8, isLocal: false, isDefinition: true, scopeLine: 912, isOptimized: false, unit: !0, variables: !2)
!1559 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 903, column: 59, scope: !1558)
!1561 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 904, column: 5, scope: !1558)
!1563 = !DILocation(line: 907, column: 1, scope: !1558)
!1564 = distinct !DISubprogram(name: "i_ret_alias__", scope: !11, file: !11, line: 911, type: !8, isLocal: false, isDefinition: true, scopeLine: 912, isOptimized: false, unit: !0, variables: !2)
!1565 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 921, column: 60, scope: !1564)
!1567 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 922, column: 5, scope: !1564)
!1569 = !DILocation(line: 925, column: 1, scope: !1564)
!1570 = distinct !DISubprogram(name: "i_call_alias__rel_addr20__", scope: !11, file: !11, line: 929, type: !8, isLocal: false, isDefinition: true, scopeLine: 930, isOptimized: false, unit: !0, variables: !2)
!1571 = !DILocation(line: 931, column: 76, scope: !1570)
!1572 = !DILocation(line: 942, column: 93, scope: !1570)
!1573 = !DILocation(line: 940, column: 22, scope: !1570)
!1574 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 940, column: 5, scope: !1570)
!1576 = !DILocation(line: 942, column: 22, scope: !1570)
!1577 = !DILocation(line: 942, column: 109, scope: !1570)
!1578 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 942, column: 5, scope: !1570)
!1580 = !DILocation(line: 945, column: 1, scope: !1570)
!1581 = distinct !DISubprogram(name: "i_call_reg_alias__x_0__", scope: !11, file: !11, line: 949, type: !8, isLocal: false, isDefinition: true, scopeLine: 950, isOptimized: false, unit: !0, variables: !2)
!1582 = !DILocation(line: 961, column: 22, scope: !1581)
!1583 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 961, column: 5, scope: !1581)
!1585 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 963, column: 5, scope: !1581)
!1587 = !DILocation(line: 966, column: 1, scope: !1581)
!1588 = distinct !DISubprogram(name: "i_call_reg_alias__xpr__", scope: !11, file: !11, line: 970, type: !8, isLocal: false, isDefinition: true, scopeLine: 971, isOptimized: false, unit: !0, variables: !2)
!1589 = !DILocation(line: 961, column: 22, scope: !1588)
!1590 = !DILocation(line: 40, column: 40, scope: !34, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 961, column: 5, scope: !1588)
!1592 = !DILocation(line: 34, column: 12, scope: !16, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 962, column: 66, scope: !1588)
!1594 = !DILocation(line: 34, column: 5, scope: !16, inlinedAt: !1593)
!1595 = !DILocation(line: 49, column: 6, scope: !542, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 963, column: 5, scope: !1588)
!1597 = !DILocation(line: 966, column: 1, scope: !1588)
!1598 = distinct !DISubprogram(name: "e_movi32__", scope: !11, file: !11, line: 970, type: !8, isLocal: false, isDefinition: true, scopeLine: 971, isOptimized: false, unit: !0, variables: !2)
!1599 = !DILocation(line: 972, column: 23, scope: !1598)
!1600 = !DILocation(line: 996, column: 69, scope: !1598)
!1601 = !DILocation(line: 999, column: 1, scope: !1598)
