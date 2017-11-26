/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* DAG Instruction Selector for the Codasip target                            *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

// *** NOTE: This file is #included into the middle of the target
// *** instruction selector class.  These functions are really methods.

// The main instruction selector code.
SDNode *SelectCode(SDNode *N) {
  // Some target values are emitted as 2 bytes, TARGET_VAL handles
  // this.
  #define TARGET_VAL(X) X & 255, unsigned(X) >> 8
  static const unsigned char MatcherTable[] = {
/*0*/       OPC_SwitchOpcode /*22 cases */, 67|128,5/*707*/, TARGET_VAL(ISD::STORE),// ->712
/*5*/         OPC_RecordMemRef,
/*6*/         OPC_RecordNode, // #0 = 'st' chained node
/*7*/         OPC_Scope, 106|128,1/*234*/, /*->244*/ // 8 children in Scope
/*10*/          OPC_CheckChild1Integer, 0, 
/*12*/          OPC_Scope, 38, /*->52*/ // 6 children in Scope
/*14*/            OPC_CheckChild1Type, MVT::i8,
/*16*/            OPC_MoveChild2,
/*17*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*20*/            OPC_RecordChild0, // #1 = $op0
/*21*/            OPC_MoveChild0,
/*22*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*24*/            OPC_MoveParent,
/*25*/            OPC_RecordChild1, // #2 = $op1
/*26*/            OPC_MoveChild1,
/*27*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*30*/            OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*32*/            OPC_MoveParent,
/*33*/            OPC_CheckType, MVT::i32,
/*35*/            OPC_MoveParent,
/*36*/            OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*38*/            OPC_CheckPredicate, 3, // Predicate_store
/*40*/            OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*42*/            OPC_EmitMergeInputChains1_0,
/*43*/            OPC_EmitConvertToTarget, 2,
/*45*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:i8, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                  // Dst: (i_store__opc_sb__x_0__simm12__xpr__ xpr:i32:$op0, (imm:i32):$op1)
/*52*/          /*Scope*/ 38, /*->91*/
/*53*/            OPC_MoveChild2,
/*54*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*57*/            OPC_RecordChild0, // #1 = $op0
/*58*/            OPC_MoveChild0,
/*59*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*61*/            OPC_MoveParent,
/*62*/            OPC_RecordChild1, // #2 = $op1
/*63*/            OPC_MoveChild1,
/*64*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*67*/            OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*69*/            OPC_MoveParent,
/*70*/            OPC_CheckType, MVT::i32,
/*72*/            OPC_MoveParent,
/*73*/            OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*75*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*77*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*79*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*81*/            OPC_EmitMergeInputChains1_0,
/*82*/            OPC_EmitConvertToTarget, 2,
/*84*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:i32, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 17
                  // Dst: (i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__ xpr:i32:$op0, (imm:i32):$op1)
/*91*/          /*Scope*/ 38, /*->130*/
/*92*/            OPC_CheckChild1Type, MVT::i16,
/*94*/            OPC_MoveChild2,
/*95*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*98*/            OPC_RecordChild0, // #1 = $op0
/*99*/            OPC_MoveChild0,
/*100*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*102*/           OPC_MoveParent,
/*103*/           OPC_RecordChild1, // #2 = $op1
/*104*/           OPC_MoveChild1,
/*105*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*108*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*110*/           OPC_MoveParent,
/*111*/           OPC_CheckType, MVT::i32,
/*113*/           OPC_MoveParent,
/*114*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*116*/           OPC_CheckPredicate, 3, // Predicate_store
/*118*/           OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*120*/           OPC_EmitMergeInputChains1_0,
/*121*/           OPC_EmitConvertToTarget, 2,
/*123*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:i16, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                  // Dst: (i_store__opc_sh__x_0__simm12__xpr__ xpr:i32:$op0, (imm:i32):$op1)
/*130*/         /*Scope*/ 56, /*->187*/
/*131*/           OPC_MoveChild2,
/*132*/           OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*135*/           OPC_RecordChild0, // #1 = $op0
/*136*/           OPC_MoveChild0,
/*137*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*139*/           OPC_MoveParent,
/*140*/           OPC_RecordChild1, // #2 = $op1
/*141*/           OPC_MoveChild1,
/*142*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*145*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*147*/           OPC_MoveParent,
/*148*/           OPC_CheckType, MVT::i32,
/*150*/           OPC_MoveParent,
/*151*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*153*/           OPC_Scope, 16, /*->171*/ // 2 children in Scope
/*155*/             OPC_CheckPredicate, 5, // Predicate_truncstore
/*157*/             OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*159*/             OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*161*/             OPC_EmitMergeInputChains1_0,
/*162*/             OPC_EmitConvertToTarget, 2,
/*164*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:i32, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 17
                    // Dst: (i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__ xpr:i32:$op0, (imm:i32):$op1)
/*171*/           /*Scope*/ 14, /*->186*/
/*172*/             OPC_CheckPredicate, 3, // Predicate_store
/*174*/             OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*176*/             OPC_EmitMergeInputChains1_0,
/*177*/             OPC_EmitConvertToTarget, 2,
/*179*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__x_0__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:i32, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 17
                    // Dst: (i_store__opc_sw__x_0__simm12__xpr__ xpr:i32:$op0, (imm:i32):$op1)
/*186*/           0, /*End of Scope*/
/*187*/         /*Scope*/ 27, /*->215*/
/*188*/           OPC_CheckChild1Type, MVT::i8,
/*190*/           OPC_RecordChild2, // #1 = $op0
/*191*/           OPC_MoveChild2,
/*192*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*195*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*197*/           OPC_CheckType, MVT::i32,
/*199*/           OPC_MoveParent,
/*200*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*202*/           OPC_CheckPredicate, 3, // Predicate_store
/*204*/           OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*206*/           OPC_EmitMergeInputChains1_0,
/*207*/           OPC_EmitConvertToTarget, 1,
/*209*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:i8, (imm:i32)<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                  // Dst: (i_store__opc_sb__x_0__simm12__x_0__ (imm:i32):$op0)
/*215*/         /*Scope*/ 27, /*->243*/
/*216*/           OPC_RecordChild2, // #1 = $op0
/*217*/           OPC_MoveChild2,
/*218*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*221*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*223*/           OPC_CheckType, MVT::i32,
/*225*/           OPC_MoveParent,
/*226*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*228*/           OPC_CheckPredicate, 5, // Predicate_truncstore
/*230*/           OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*232*/           OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*234*/           OPC_EmitMergeInputChains1_0,
/*235*/           OPC_EmitConvertToTarget, 1,
/*237*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:i32, (imm:i32)<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 13
                  // Dst: (i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__ (imm:i32):$op0)
/*243*/         0, /*End of Scope*/
/*244*/       /*Scope*/ 46, /*->291*/
/*245*/         OPC_RecordChild1, // #1 = $op0
/*246*/         OPC_MoveChild1,
/*247*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*249*/         OPC_CheckType, MVT::i32,
/*251*/         OPC_MoveParent,
/*252*/         OPC_MoveChild2,
/*253*/         OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*256*/         OPC_RecordChild0, // #2 = $op1
/*257*/         OPC_MoveChild0,
/*258*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*260*/         OPC_MoveParent,
/*261*/         OPC_RecordChild1, // #3 = $op2
/*262*/         OPC_MoveChild1,
/*263*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*266*/         OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*268*/         OPC_MoveParent,
/*269*/         OPC_CheckType, MVT::i32,
/*271*/         OPC_MoveParent,
/*272*/         OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*274*/         OPC_CheckPredicate, 5, // Predicate_truncstore
/*276*/         OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*278*/         OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*280*/         OPC_EmitMergeInputChains1_0,
/*281*/         OPC_EmitConvertToTarget, 3,
/*283*/         OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 13
                // Dst: (i_store__opc_sb__xpr__simm12__xpr__ xpr:i32:$op0, xpr:i32:$op1, (imm:i32):$op2)
/*291*/       /*Scope*/ 60, /*->352*/
/*292*/         OPC_CheckChild1Integer, 0, 
/*294*/         OPC_Scope, 27, /*->323*/ // 2 children in Scope
/*296*/           OPC_CheckChild1Type, MVT::i16,
/*298*/           OPC_RecordChild2, // #1 = $op0
/*299*/           OPC_MoveChild2,
/*300*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*303*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*305*/           OPC_CheckType, MVT::i32,
/*307*/           OPC_MoveParent,
/*308*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*310*/           OPC_CheckPredicate, 3, // Predicate_store
/*312*/           OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*314*/           OPC_EmitMergeInputChains1_0,
/*315*/           OPC_EmitConvertToTarget, 1,
/*317*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:i16, (imm:i32)<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                  // Dst: (i_store__opc_sh__x_0__simm12__x_0__ (imm:i32):$op0)
/*323*/         /*Scope*/ 27, /*->351*/
/*324*/           OPC_RecordChild2, // #1 = $op0
/*325*/           OPC_MoveChild2,
/*326*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*329*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*331*/           OPC_CheckType, MVT::i32,
/*333*/           OPC_MoveParent,
/*334*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*336*/           OPC_CheckPredicate, 5, // Predicate_truncstore
/*338*/           OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*340*/           OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*342*/           OPC_EmitMergeInputChains1_0,
/*343*/           OPC_EmitConvertToTarget, 1,
/*345*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:i32, (imm:i32)<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 13
                  // Dst: (i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__ (imm:i32):$op0)
/*351*/         0, /*End of Scope*/
/*352*/       /*Scope*/ 46, /*->399*/
/*353*/         OPC_RecordChild1, // #1 = $op0
/*354*/         OPC_MoveChild1,
/*355*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*357*/         OPC_CheckType, MVT::i32,
/*359*/         OPC_MoveParent,
/*360*/         OPC_MoveChild2,
/*361*/         OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*364*/         OPC_RecordChild0, // #2 = $op1
/*365*/         OPC_MoveChild0,
/*366*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*368*/         OPC_MoveParent,
/*369*/         OPC_RecordChild1, // #3 = $op2
/*370*/         OPC_MoveChild1,
/*371*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*374*/         OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*376*/         OPC_MoveParent,
/*377*/         OPC_CheckType, MVT::i32,
/*379*/         OPC_MoveParent,
/*380*/         OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*382*/         OPC_CheckPredicate, 5, // Predicate_truncstore
/*384*/         OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*386*/         OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*388*/         OPC_EmitMergeInputChains1_0,
/*389*/         OPC_EmitConvertToTarget, 3,
/*391*/         OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 13
                // Dst: (i_store__opc_sh__xpr__simm12__xpr__ xpr:i32:$op0, xpr:i32:$op1, (imm:i32):$op2)
/*399*/       /*Scope*/ 27, /*->427*/
/*400*/         OPC_CheckChild1Integer, 0, 
/*402*/         OPC_RecordChild2, // #1 = $op0
/*403*/         OPC_MoveChild2,
/*404*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*407*/         OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*409*/         OPC_CheckType, MVT::i32,
/*411*/         OPC_MoveParent,
/*412*/         OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*414*/         OPC_CheckPredicate, 3, // Predicate_store
/*416*/         OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*418*/         OPC_EmitMergeInputChains1_0,
/*419*/         OPC_EmitConvertToTarget, 1,
/*421*/         OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__x_0__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:i32, (imm:i32)<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                // Dst: (i_store__opc_sw__x_0__simm12__x_0__ (imm:i32):$op0)
/*427*/       /*Scope*/ 44, /*->472*/
/*428*/         OPC_RecordChild1, // #1 = $op0
/*429*/         OPC_MoveChild1,
/*430*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*432*/         OPC_CheckType, MVT::i32,
/*434*/         OPC_MoveParent,
/*435*/         OPC_MoveChild2,
/*436*/         OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*439*/         OPC_RecordChild0, // #2 = $op1
/*440*/         OPC_MoveChild0,
/*441*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*443*/         OPC_MoveParent,
/*444*/         OPC_RecordChild1, // #3 = $op2
/*445*/         OPC_MoveChild1,
/*446*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*449*/         OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*451*/         OPC_MoveParent,
/*452*/         OPC_CheckType, MVT::i32,
/*454*/         OPC_MoveParent,
/*455*/         OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*457*/         OPC_CheckPredicate, 3, // Predicate_store
/*459*/         OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*461*/         OPC_EmitMergeInputChains1_0,
/*462*/         OPC_EmitConvertToTarget, 3,
/*464*/         OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 13
                // Dst: (i_store__opc_sw__xpr__simm12__xpr__ xpr:i32:$op0, xpr:i32:$op1, (imm:i32):$op2)
/*472*/       /*Scope*/ 111, /*->584*/
/*473*/         OPC_CheckChild1Integer, 0, 
/*475*/         OPC_Scope, 22, /*->499*/ // 4 children in Scope
/*477*/           OPC_CheckChild1Type, MVT::i8,
/*479*/           OPC_RecordChild2, // #1 = $op0
/*480*/           OPC_MoveChild2,
/*481*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*483*/           OPC_CheckType, MVT::i32,
/*485*/           OPC_MoveParent,
/*486*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*488*/           OPC_CheckPredicate, 3, // Predicate_store
/*490*/           OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*492*/           OPC_EmitMergeInputChains1_0,
/*493*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:i8, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                  // Dst: (i_store__opc_sb__x_0__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0)
/*499*/         /*Scope*/ 22, /*->522*/
/*500*/           OPC_RecordChild2, // #1 = $op0
/*501*/           OPC_MoveChild2,
/*502*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*504*/           OPC_CheckType, MVT::i32,
/*506*/           OPC_MoveParent,
/*507*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*509*/           OPC_CheckPredicate, 5, // Predicate_truncstore
/*511*/           OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*513*/           OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*515*/           OPC_EmitMergeInputChains1_0,
/*516*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:i32, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 10
                  // Dst: (i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_ xpr:i32:$op0)
/*522*/         /*Scope*/ 22, /*->545*/
/*523*/           OPC_CheckChild1Type, MVT::i16,
/*525*/           OPC_RecordChild2, // #1 = $op0
/*526*/           OPC_MoveChild2,
/*527*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*529*/           OPC_CheckType, MVT::i32,
/*531*/           OPC_MoveParent,
/*532*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*534*/           OPC_CheckPredicate, 3, // Predicate_store
/*536*/           OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*538*/           OPC_EmitMergeInputChains1_0,
/*539*/           OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:i16, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                  // Dst: (i_store__opc_sh__x_0__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0)
/*545*/         /*Scope*/ 37, /*->583*/
/*546*/           OPC_RecordChild2, // #1 = $op0
/*547*/           OPC_MoveChild2,
/*548*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*550*/           OPC_CheckType, MVT::i32,
/*552*/           OPC_MoveParent,
/*553*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*555*/           OPC_Scope, 13, /*->570*/ // 2 children in Scope
/*557*/             OPC_CheckPredicate, 5, // Predicate_truncstore
/*559*/             OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*561*/             OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*563*/             OPC_EmitMergeInputChains1_0,
/*564*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:i32, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 10
                    // Dst: (i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_ xpr:i32:$op0)
/*570*/           /*Scope*/ 11, /*->582*/
/*571*/             OPC_CheckPredicate, 3, // Predicate_store
/*573*/             OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*575*/             OPC_EmitMergeInputChains1_0,
/*576*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__x_0__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:i32, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                    // Dst: (i_store__opc_sw__x_0__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0)
/*582*/           0, /*End of Scope*/
/*583*/         0, /*End of Scope*/
/*584*/       /*Scope*/ 126, /*->711*/
/*585*/         OPC_RecordChild1, // #1 = $op0
/*586*/         OPC_MoveChild1,
/*587*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*589*/         OPC_CheckType, MVT::i32,
/*591*/         OPC_MoveParent,
/*592*/         OPC_RecordChild2, // #2 = $op1
/*593*/         OPC_MoveChild2,
/*594*/         OPC_CheckType, MVT::i32,
/*596*/         OPC_Scope, 60, /*->658*/ // 2 children in Scope
/*598*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*601*/           OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*603*/           OPC_MoveParent,
/*604*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*606*/           OPC_Scope, 34, /*->642*/ // 2 children in Scope
/*608*/             OPC_CheckPredicate, 5, // Predicate_truncstore
/*610*/             OPC_Scope, 14, /*->626*/ // 2 children in Scope
/*612*/               OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*614*/               OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*616*/               OPC_EmitMergeInputChains1_0,
/*617*/               OPC_EmitConvertToTarget, 2,
/*619*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 9
                      // Dst: (i_store__opc_sb__xpr__simm12__x_0__ xpr:i32:$op0, (imm:i32):$op1)
/*626*/             /*Scope*/ 14, /*->641*/
/*627*/               OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*629*/               OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*631*/               OPC_EmitMergeInputChains1_0,
/*632*/               OPC_EmitConvertToTarget, 2,
/*634*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 9
                      // Dst: (i_store__opc_sh__xpr__simm12__x_0__ xpr:i32:$op0, (imm:i32):$op1)
/*641*/             0, /*End of Scope*/
/*642*/           /*Scope*/ 14, /*->657*/
/*643*/             OPC_CheckPredicate, 3, // Predicate_store
/*645*/             OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*647*/             OPC_EmitMergeInputChains1_0,
/*648*/             OPC_EmitConvertToTarget, 2,
/*650*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 9
                    // Dst: (i_store__opc_sw__xpr__simm12__x_0__ xpr:i32:$op0, (imm:i32):$op1)
/*657*/           0, /*End of Scope*/
/*658*/         /*Scope*/ 51, /*->710*/
/*659*/           OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*661*/           OPC_MoveParent,
/*662*/           OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*664*/           OPC_Scope, 30, /*->696*/ // 2 children in Scope
/*666*/             OPC_CheckPredicate, 5, // Predicate_truncstore
/*668*/             OPC_Scope, 12, /*->682*/ // 2 children in Scope
/*670*/               OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*672*/               OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*674*/               OPC_EmitMergeInputChains1_0,
/*675*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sb__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 6
                      // Dst: (i_store__opc_sb__xpr__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0, xpr:i32:$op1)
/*682*/             /*Scope*/ 12, /*->695*/
/*683*/               OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*685*/               OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*687*/               OPC_EmitMergeInputChains1_0,
/*688*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sh__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 6
                      // Dst: (i_store__opc_sh__xpr__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0, xpr:i32:$op1)
/*695*/             0, /*End of Scope*/
/*696*/           /*Scope*/ 12, /*->709*/
/*697*/             OPC_CheckPredicate, 3, // Predicate_store
/*699*/             OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*701*/             OPC_EmitMergeInputChains1_0,
/*702*/             OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 2, 
                    // Src: (st xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 6
                    // Dst: (i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_ xpr:i32:$op0, xpr:i32:$op1)
/*709*/           0, /*End of Scope*/
/*710*/         0, /*End of Scope*/
/*711*/       0, /*End of Scope*/
/*712*/     /*SwitchOpcode*/ 68|128,7/*964*/, TARGET_VAL(ISD::BRCOND),// ->1680
/*716*/       OPC_RecordNode, // #0 = 'brcond' chained node
/*717*/       OPC_Scope, 43|128,7/*939*/, /*->1659*/ // 2 children in Scope
/*720*/         OPC_MoveChild1,
/*721*/         OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*724*/         OPC_RecordChild0, // #1 = $op0
/*725*/         OPC_MoveChild0,
/*726*/         OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*728*/         OPC_Scope, 42|128,4/*554*/, /*->1285*/ // 2 children in Scope
/*731*/           OPC_MoveParent,
/*732*/           OPC_Scope, 15|128,2/*271*/, /*->1006*/ // 4 children in Scope
/*735*/             OPC_CheckChild1Integer, 0, 
/*737*/             OPC_MoveChild2,
/*738*/             OPC_Scope, 18, /*->758*/ // 12 children in Scope
/*740*/               OPC_CheckCondCode, ISD::SETEQ,
/*742*/               OPC_MoveParent,
/*743*/               OPC_MoveParent,
/*744*/               OPC_RecordChild2, // #2 = $op1
/*745*/               OPC_MoveChild2,
/*746*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*749*/               OPC_MoveParent,
/*750*/               OPC_EmitMergeInputChains1_0,
/*751*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_beqz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETEQ:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_beqz_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*758*/             /*Scope*/ 18, /*->777*/
/*759*/               OPC_CheckCondCode, ISD::SETLT,
/*761*/               OPC_MoveParent,
/*762*/               OPC_MoveParent,
/*763*/               OPC_RecordChild2, // #2 = $op1
/*764*/               OPC_MoveChild2,
/*765*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*768*/               OPC_MoveParent,
/*769*/               OPC_EmitMergeInputChains1_0,
/*770*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgt_alias__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bgt_alias__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*777*/             /*Scope*/ 18, /*->796*/
/*778*/               OPC_CheckCondCode, ISD::SETGT,
/*780*/               OPC_MoveParent,
/*781*/               OPC_MoveParent,
/*782*/               OPC_RecordChild2, // #2 = $op1
/*783*/               OPC_MoveChild2,
/*784*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*787*/               OPC_MoveParent,
/*788*/               OPC_EmitMergeInputChains1_0,
/*789*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgt_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bgt_alias__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*796*/             /*Scope*/ 18, /*->815*/
/*797*/               OPC_CheckCondCode, ISD::SETNE,
/*799*/               OPC_MoveParent,
/*800*/               OPC_MoveParent,
/*801*/               OPC_RecordChild2, // #2 = $op1
/*802*/               OPC_MoveChild2,
/*803*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*806*/               OPC_MoveParent,
/*807*/               OPC_EmitMergeInputChains1_0,
/*808*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bgtu_alias__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*815*/             /*Scope*/ 18, /*->834*/
/*816*/               OPC_CheckCondCode, ISD::SETGT,
/*818*/               OPC_MoveParent,
/*819*/               OPC_MoveParent,
/*820*/               OPC_RecordChild2, // #2 = $op1
/*821*/               OPC_MoveChild2,
/*822*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*825*/               OPC_MoveParent,
/*826*/               OPC_EmitMergeInputChains1_0,
/*827*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bgtz_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*834*/             /*Scope*/ 18, /*->853*/
/*835*/               OPC_CheckCondCode, ISD::SETNE,
/*837*/               OPC_MoveParent,
/*838*/               OPC_MoveParent,
/*839*/               OPC_RecordChild2, // #2 = $op1
/*840*/               OPC_MoveChild2,
/*841*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*844*/               OPC_MoveParent,
/*845*/               OPC_EmitMergeInputChains1_0,
/*846*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bleu_alias__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bleu_alias__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*853*/             /*Scope*/ 18, /*->872*/
/*854*/               OPC_CheckCondCode, ISD::SETLT,
/*856*/               OPC_MoveParent,
/*857*/               OPC_MoveParent,
/*858*/               OPC_RecordChild2, // #2 = $op1
/*859*/               OPC_MoveChild2,
/*860*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*863*/               OPC_MoveParent,
/*864*/               OPC_EmitMergeInputChains1_0,
/*865*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bltz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bltz_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*872*/             /*Scope*/ 18, /*->891*/
/*873*/               OPC_CheckCondCode, ISD::SETNE,
/*875*/               OPC_MoveParent,
/*876*/               OPC_MoveParent,
/*877*/               OPC_RecordChild2, // #2 = $op1
/*878*/               OPC_MoveChild2,
/*879*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*882*/               OPC_MoveParent,
/*883*/               OPC_EmitMergeInputChains1_0,
/*884*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bnez_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bnez_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*891*/             /*Scope*/ 37, /*->929*/
/*892*/               OPC_CheckCondCode, ISD::SETEQ,
/*894*/               OPC_MoveParent,
/*895*/               OPC_MoveParent,
/*896*/               OPC_RecordChild2, // #2 = $op1
/*897*/               OPC_MoveChild2,
/*898*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*901*/               OPC_MoveParent,
/*902*/               OPC_EmitMergeInputChains1_0,
/*903*/               OPC_Scope, 7, /*->912*/ // 3 children in Scope
/*905*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETEQ:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_beq__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*912*/               /*Scope*/ 7, /*->920*/
/*913*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETEQ:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_beq__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*920*/               /*Scope*/ 7, /*->928*/
/*921*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETEQ:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_bgeu__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*928*/               0, /*End of Scope*/
/*929*/             /*Scope*/ 18, /*->948*/
/*930*/               OPC_CheckCondCode, ISD::SETGT,
/*932*/               OPC_MoveParent,
/*933*/               OPC_MoveParent,
/*934*/               OPC_RecordChild2, // #2 = $op1
/*935*/               OPC_MoveChild2,
/*936*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*939*/               OPC_MoveParent,
/*940*/               OPC_EmitMergeInputChains1_0,
/*941*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_branch__opc_blt__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*948*/             /*Scope*/ 18, /*->967*/
/*949*/               OPC_CheckCondCode, ISD::SETLT,
/*951*/               OPC_MoveParent,
/*952*/               OPC_MoveParent,
/*953*/               OPC_RecordChild2, // #2 = $op1
/*954*/               OPC_MoveChild2,
/*955*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*958*/               OPC_MoveParent,
/*959*/               OPC_EmitMergeInputChains1_0,
/*960*/               OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_branch__opc_blt__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*967*/             /*Scope*/ 37, /*->1005*/
/*968*/               OPC_CheckCondCode, ISD::SETNE,
/*970*/               OPC_MoveParent,
/*971*/               OPC_MoveParent,
/*972*/               OPC_RecordChild2, // #2 = $op1
/*973*/               OPC_MoveChild2,
/*974*/               OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*977*/               OPC_MoveParent,
/*978*/               OPC_EmitMergeInputChains1_0,
/*979*/               OPC_Scope, 7, /*->988*/ // 3 children in Scope
/*981*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_bltu__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*988*/               /*Scope*/ 7, /*->996*/
/*989*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_bne__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*996*/               /*Scope*/ 7, /*->1004*/
/*997*/                 OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 0:i32, SETNE:Other), (bb:Other):$op1) - Complexity = 12
                        // Dst: (i_branch__opc_bne__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1004*/              0, /*End of Scope*/
/*1005*/            0, /*End of Scope*/
/*1006*/          /*Scope*/ 49, /*->1056*/
/*1007*/            OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*1018*/            OPC_MoveChild2,
/*1019*/            OPC_CheckCondCode, ISD::SETGT,
/*1021*/            OPC_MoveParent,
/*1022*/            OPC_MoveParent,
/*1023*/            OPC_RecordChild2, // #2 = $op1
/*1024*/            OPC_MoveChild2,
/*1025*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1028*/            OPC_MoveParent,
/*1029*/            OPC_EmitMergeInputChains1_0,
/*1030*/            OPC_Scope, 7, /*->1039*/ // 3 children in Scope
/*1032*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgez_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, -1:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_bgez_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1039*/            /*Scope*/ 7, /*->1047*/
/*1040*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ble_alias__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, -1:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_ble_alias__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1047*/            /*Scope*/ 7, /*->1055*/
/*1048*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bge__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, -1:i32, SETGT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_branch__opc_bge__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1055*/            0, /*End of Scope*/
/*1056*/          /*Scope*/ 40, /*->1097*/
/*1057*/            OPC_CheckChild1Integer, 1, 
/*1059*/            OPC_MoveChild2,
/*1060*/            OPC_CheckCondCode, ISD::SETLT,
/*1062*/            OPC_MoveParent,
/*1063*/            OPC_MoveParent,
/*1064*/            OPC_RecordChild2, // #2 = $op1
/*1065*/            OPC_MoveChild2,
/*1066*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1069*/            OPC_MoveParent,
/*1070*/            OPC_EmitMergeInputChains1_0,
/*1071*/            OPC_Scope, 7, /*->1080*/ // 3 children in Scope
/*1073*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ble_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 1:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_ble_alias__xpr__x_0__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1080*/            /*Scope*/ 7, /*->1088*/
/*1081*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_blez_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 1:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_blez_alias__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1088*/            /*Scope*/ 7, /*->1096*/
/*1089*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, 1:i32, SETLT:Other), (bb:Other):$op1) - Complexity = 12
                      // Dst: (i_branch__opc_bge__x_0__xpr__rel_addr12__ xpr:i32:$op0, (bb:Other):$op1)
/*1096*/            0, /*End of Scope*/
/*1097*/          /*Scope*/ 57|128,1/*185*/, /*->1284*/
/*1099*/            OPC_RecordChild1, // #2 = $op1
/*1100*/            OPC_MoveChild1,
/*1101*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1104*/            OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*1106*/            OPC_MoveParent,
/*1107*/            OPC_MoveChild2,
/*1108*/            OPC_Scope, 28, /*->1138*/ // 6 children in Scope
/*1110*/              OPC_CheckCondCode, ISD::SETEQ,
/*1112*/              OPC_MoveParent,
/*1113*/              OPC_MoveParent,
/*1114*/              OPC_RecordChild2, // #3 = $op2
/*1115*/              OPC_MoveChild2,
/*1116*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1119*/              OPC_MoveParent,
/*1120*/              OPC_EmitMergeInputChains1_0,
/*1121*/              OPC_EmitConvertToTarget, 2,
/*1123*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1131*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_beqz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETEQ:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1138*/            /*Scope*/ 28, /*->1167*/
/*1139*/              OPC_CheckCondCode, ISD::SETNE,
/*1141*/              OPC_MoveParent,
/*1142*/              OPC_MoveParent,
/*1143*/              OPC_RecordChild2, // #3 = $op2
/*1144*/              OPC_MoveChild2,
/*1145*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1148*/              OPC_MoveParent,
/*1149*/              OPC_EmitMergeInputChains1_0,
/*1150*/              OPC_EmitConvertToTarget, 2,
/*1152*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1160*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETNE:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1167*/            /*Scope*/ 28, /*->1196*/
/*1168*/              OPC_CheckCondCode, ISD::SETGE,
/*1170*/              OPC_MoveParent,
/*1171*/              OPC_MoveParent,
/*1172*/              OPC_RecordChild2, // #3 = $op2
/*1173*/              OPC_MoveChild2,
/*1174*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1177*/              OPC_MoveParent,
/*1178*/              OPC_EmitMergeInputChains1_0,
/*1179*/              OPC_EmitConvertToTarget, 2,
/*1181*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1189*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_beqz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETGE:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_slti__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1196*/            /*Scope*/ 28, /*->1225*/
/*1197*/              OPC_CheckCondCode, ISD::SETLT,
/*1199*/              OPC_MoveParent,
/*1200*/              OPC_MoveParent,
/*1201*/              OPC_RecordChild2, // #3 = $op2
/*1202*/              OPC_MoveChild2,
/*1203*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1206*/              OPC_MoveParent,
/*1207*/              OPC_EmitMergeInputChains1_0,
/*1208*/              OPC_EmitConvertToTarget, 2,
/*1210*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1218*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETLT:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_slti__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1225*/            /*Scope*/ 28, /*->1254*/
/*1226*/              OPC_CheckCondCode, ISD::SETUGE,
/*1228*/              OPC_MoveParent,
/*1229*/              OPC_MoveParent,
/*1230*/              OPC_RecordChild2, // #3 = $op2
/*1231*/              OPC_MoveChild2,
/*1232*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1235*/              OPC_MoveParent,
/*1236*/              OPC_EmitMergeInputChains1_0,
/*1237*/              OPC_EmitConvertToTarget, 2,
/*1239*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1247*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_beqz_alias__xpr__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETUGE:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_beqz_alias__xpr__rel_addr12__ (i_alu_i__opc_sltiu__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1254*/            /*Scope*/ 28, /*->1283*/
/*1255*/              OPC_CheckCondCode, ISD::SETULT,
/*1257*/              OPC_MoveParent,
/*1258*/              OPC_MoveParent,
/*1259*/              OPC_RecordChild2, // #3 = $op2
/*1260*/              OPC_MoveChild2,
/*1261*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1264*/              OPC_MoveParent,
/*1265*/              OPC_EmitMergeInputChains1_0,
/*1266*/              OPC_EmitConvertToTarget, 2,
/*1268*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*1276*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETULT:Other), (bb:Other):$op2) - Complexity = 11
                      // Dst: (i_bgtu_alias__xpr__x_0__rel_addr12__ (i_alu_i__opc_sltiu__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), (bb:Other):$op2)
/*1283*/            0, /*End of Scope*/
/*1284*/          0, /*End of Scope*/
/*1285*/        /*Scope*/ 115|128,2/*371*/, /*->1658*/
/*1287*/          OPC_CheckType, MVT::i32,
/*1289*/          OPC_MoveParent,
/*1290*/          OPC_RecordChild1, // #2 = $op1
/*1291*/          OPC_MoveChild1,
/*1292*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*1294*/          OPC_MoveParent,
/*1295*/          OPC_MoveChild2,
/*1296*/          OPC_Scope, 19, /*->1317*/ // 18 children in Scope
/*1298*/            OPC_CheckCondCode, ISD::SETGT,
/*1300*/            OPC_MoveParent,
/*1301*/            OPC_MoveParent,
/*1302*/            OPC_RecordChild2, // #3 = $op2
/*1303*/            OPC_MoveChild2,
/*1304*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1307*/            OPC_MoveParent,
/*1308*/            OPC_EmitMergeInputChains1_0,
/*1309*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgt_alias__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bgt_alias__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1317*/          /*Scope*/ 19, /*->1337*/
/*1318*/            OPC_CheckCondCode, ISD::SETLT,
/*1320*/            OPC_MoveParent,
/*1321*/            OPC_MoveParent,
/*1322*/            OPC_RecordChild2, // #3 = $op2
/*1323*/            OPC_MoveChild2,
/*1324*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1327*/            OPC_MoveParent,
/*1328*/            OPC_EmitMergeInputChains1_0,
/*1329*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1337*/          /*Scope*/ 19, /*->1357*/
/*1338*/            OPC_CheckCondCode, ISD::SETUGT,
/*1340*/            OPC_MoveParent,
/*1341*/            OPC_MoveParent,
/*1342*/            OPC_RecordChild2, // #3 = $op2
/*1343*/            OPC_MoveChild2,
/*1344*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1347*/            OPC_MoveParent,
/*1348*/            OPC_EmitMergeInputChains1_0,
/*1349*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bgtu_alias__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1357*/          /*Scope*/ 19, /*->1377*/
/*1358*/            OPC_CheckCondCode, ISD::SETULT,
/*1360*/            OPC_MoveParent,
/*1361*/            OPC_MoveParent,
/*1362*/            OPC_RecordChild2, // #3 = $op2
/*1363*/            OPC_MoveChild2,
/*1364*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1367*/            OPC_MoveParent,
/*1368*/            OPC_EmitMergeInputChains1_0,
/*1369*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1377*/          /*Scope*/ 19, /*->1397*/
/*1378*/            OPC_CheckCondCode, ISD::SETLE,
/*1380*/            OPC_MoveParent,
/*1381*/            OPC_MoveParent,
/*1382*/            OPC_RecordChild2, // #3 = $op2
/*1383*/            OPC_MoveChild2,
/*1384*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1387*/            OPC_MoveParent,
/*1388*/            OPC_EmitMergeInputChains1_0,
/*1389*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ble_alias__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_ble_alias__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1397*/          /*Scope*/ 19, /*->1417*/
/*1398*/            OPC_CheckCondCode, ISD::SETGE,
/*1400*/            OPC_MoveParent,
/*1401*/            OPC_MoveParent,
/*1402*/            OPC_RecordChild2, // #3 = $op2
/*1403*/            OPC_MoveChild2,
/*1404*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1407*/            OPC_MoveParent,
/*1408*/            OPC_EmitMergeInputChains1_0,
/*1409*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1417*/          /*Scope*/ 19, /*->1437*/
/*1418*/            OPC_CheckCondCode, ISD::SETULT,
/*1420*/            OPC_MoveParent,
/*1421*/            OPC_MoveParent,
/*1422*/            OPC_RecordChild2, // #3 = $op2
/*1423*/            OPC_MoveChild2,
/*1424*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1427*/            OPC_MoveParent,
/*1428*/            OPC_EmitMergeInputChains1_0,
/*1429*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bleu_alias__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bleu_alias__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1437*/          /*Scope*/ 19, /*->1457*/
/*1438*/            OPC_CheckCondCode, ISD::SETUGT,
/*1440*/            OPC_MoveParent,
/*1441*/            OPC_MoveParent,
/*1442*/            OPC_RecordChild2, // #3 = $op2
/*1443*/            OPC_MoveChild2,
/*1444*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1447*/            OPC_MoveParent,
/*1448*/            OPC_EmitMergeInputChains1_0,
/*1449*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1457*/          /*Scope*/ 19, /*->1477*/
/*1458*/            OPC_CheckCondCode, ISD::SETEQ,
/*1460*/            OPC_MoveParent,
/*1461*/            OPC_MoveParent,
/*1462*/            OPC_RecordChild2, // #3 = $op2
/*1463*/            OPC_MoveChild2,
/*1464*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1467*/            OPC_MoveParent,
/*1468*/            OPC_EmitMergeInputChains1_0,
/*1469*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETEQ:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_beq__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1477*/          /*Scope*/ 19, /*->1497*/
/*1478*/            OPC_CheckCondCode, ISD::SETGE,
/*1480*/            OPC_MoveParent,
/*1481*/            OPC_MoveParent,
/*1482*/            OPC_RecordChild2, // #3 = $op2
/*1483*/            OPC_MoveChild2,
/*1484*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1487*/            OPC_MoveParent,
/*1488*/            OPC_EmitMergeInputChains1_0,
/*1489*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bge__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1497*/          /*Scope*/ 19, /*->1517*/
/*1498*/            OPC_CheckCondCode, ISD::SETLE,
/*1500*/            OPC_MoveParent,
/*1501*/            OPC_MoveParent,
/*1502*/            OPC_RecordChild2, // #3 = $op2
/*1503*/            OPC_MoveChild2,
/*1504*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1507*/            OPC_MoveParent,
/*1508*/            OPC_EmitMergeInputChains1_0,
/*1509*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1517*/          /*Scope*/ 19, /*->1537*/
/*1518*/            OPC_CheckCondCode, ISD::SETUGE,
/*1520*/            OPC_MoveParent,
/*1521*/            OPC_MoveParent,
/*1522*/            OPC_RecordChild2, // #3 = $op2
/*1523*/            OPC_MoveChild2,
/*1524*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1527*/            OPC_MoveParent,
/*1528*/            OPC_EmitMergeInputChains1_0,
/*1529*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bgeu__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1537*/          /*Scope*/ 19, /*->1557*/
/*1538*/            OPC_CheckCondCode, ISD::SETULE,
/*1540*/            OPC_MoveParent,
/*1541*/            OPC_MoveParent,
/*1542*/            OPC_RecordChild2, // #3 = $op2
/*1543*/            OPC_MoveChild2,
/*1544*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1547*/            OPC_MoveParent,
/*1548*/            OPC_EmitMergeInputChains1_0,
/*1549*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1557*/          /*Scope*/ 19, /*->1577*/
/*1558*/            OPC_CheckCondCode, ISD::SETLT,
/*1560*/            OPC_MoveParent,
/*1561*/            OPC_MoveParent,
/*1562*/            OPC_RecordChild2, // #3 = $op2
/*1563*/            OPC_MoveChild2,
/*1564*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1567*/            OPC_MoveParent,
/*1568*/            OPC_EmitMergeInputChains1_0,
/*1569*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_blt__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1577*/          /*Scope*/ 19, /*->1597*/
/*1578*/            OPC_CheckCondCode, ISD::SETGT,
/*1580*/            OPC_MoveParent,
/*1581*/            OPC_MoveParent,
/*1582*/            OPC_RecordChild2, // #3 = $op2
/*1583*/            OPC_MoveChild2,
/*1584*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1587*/            OPC_MoveParent,
/*1588*/            OPC_EmitMergeInputChains1_0,
/*1589*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1597*/          /*Scope*/ 19, /*->1617*/
/*1598*/            OPC_CheckCondCode, ISD::SETULT,
/*1600*/            OPC_MoveParent,
/*1601*/            OPC_MoveParent,
/*1602*/            OPC_RecordChild2, // #3 = $op2
/*1603*/            OPC_MoveChild2,
/*1604*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1607*/            OPC_MoveParent,
/*1608*/            OPC_EmitMergeInputChains1_0,
/*1609*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bltu__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1617*/          /*Scope*/ 19, /*->1637*/
/*1618*/            OPC_CheckCondCode, ISD::SETUGT,
/*1620*/            OPC_MoveParent,
/*1621*/            OPC_MoveParent,
/*1622*/            OPC_RecordChild2, // #3 = $op2
/*1623*/            OPC_MoveChild2,
/*1624*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1627*/            OPC_MoveParent,
/*1628*/            OPC_EmitMergeInputChains1_0,
/*1629*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGT:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1637*/          /*Scope*/ 19, /*->1657*/
/*1638*/            OPC_CheckCondCode, ISD::SETNE,
/*1640*/            OPC_MoveParent,
/*1641*/            OPC_MoveParent,
/*1642*/            OPC_RecordChild2, // #3 = $op2
/*1643*/            OPC_MoveChild2,
/*1644*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1647*/            OPC_MoveParent,
/*1648*/            OPC_EmitMergeInputChains1_0,
/*1649*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETNE:Other), (bb:Other):$op2) - Complexity = 8
                    // Dst: (i_branch__opc_bne__xpr__xpr__rel_addr12__ xpr:i32:$op0, xpr:i32:$op1, (bb:Other):$op2)
/*1657*/          0, /*End of Scope*/
/*1658*/        0, /*End of Scope*/
/*1659*/      /*Scope*/ 19, /*->1679*/
/*1660*/        OPC_RecordChild1, // #1 = $op0
/*1661*/        OPC_MoveChild1,
/*1662*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*1664*/        OPC_MoveParent,
/*1665*/        OPC_RecordChild2, // #2 = $op1
/*1666*/        OPC_MoveChild2,
/*1667*/        OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*1670*/        OPC_MoveParent,
/*1671*/        OPC_EmitMergeInputChains1_0,
/*1672*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (bb:Other):$op1) - Complexity = 4
                // Dst: (i_bgtu_alias__xpr__x_0__rel_addr12__ xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (bb:Other):$op1)
/*1679*/      0, /*End of Scope*/
/*1680*/    /*SwitchOpcode*/ 45|128,3/*429*/, TARGET_VAL(ISD::SETCC),// ->2113
/*1684*/      OPC_RecordChild0, // #0 = $op1
/*1685*/      OPC_MoveChild0,
/*1686*/      OPC_Scope, 37, /*->1725*/ // 2 children in Scope
/*1688*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1691*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*1693*/        OPC_MoveParent,
/*1694*/        OPC_CheckChild1Integer, 0, 
/*1696*/        OPC_MoveChild2,
/*1697*/        OPC_Scope, 12, /*->1711*/ // 2 children in Scope
/*1699*/          OPC_CheckCondCode, ISD::SETGT,
/*1701*/          OPC_MoveParent,
/*1702*/          OPC_EmitConvertToTarget, 0,
/*1704*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, 0:i32, SETGT:Other) - Complexity = 12
                  // Dst: (i_alu_i__opc_slti__xpr__x_0__simm12__:i32 (imm:i32):$op1)
/*1711*/        /*Scope*/ 12, /*->1724*/
/*1712*/          OPC_CheckCondCode, ISD::SETNE,
/*1714*/          OPC_MoveParent,
/*1715*/          OPC_EmitConvertToTarget, 0,
/*1717*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, 0:i32, SETNE:Other) - Complexity = 12
                  // Dst: (i_alu_i__opc_sltiu__xpr__x_0__simm12__:i32 (imm:i32):$op1)
/*1724*/        0, /*End of Scope*/
/*1725*/      /*Scope*/ 1|128,3/*385*/, /*->2112*/
/*1727*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*1729*/        OPC_Scope, 64|128,1/*192*/, /*->1924*/ // 2 children in Scope
/*1732*/          OPC_MoveParent,
/*1733*/          OPC_Scope, 60, /*->1795*/ // 2 children in Scope
/*1735*/            OPC_CheckChild1Integer, 0, 
/*1737*/            OPC_MoveChild2,
/*1738*/            OPC_Scope, 10, /*->1750*/ // 5 children in Scope
/*1740*/              OPC_CheckCondCode, ISD::SETGT,
/*1742*/              OPC_MoveParent,
/*1743*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__x_0__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 0:i32, SETGT:Other) - Complexity = 9
                      // Dst: (i_alu__opc_slt__xpr__x_0__xpr__:i32 xpr:i32:$op1)
/*1750*/            /*Scope*/ 10, /*->1761*/
/*1751*/              OPC_CheckCondCode, ISD::SETNE,
/*1753*/              OPC_MoveParent,
/*1754*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__x_0__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 0:i32, SETNE:Other) - Complexity = 9
                      // Dst: (i_alu__opc_sltu__xpr__x_0__xpr__:i32 xpr:i32:$op1)
/*1761*/            /*Scope*/ 10, /*->1772*/
/*1762*/              OPC_CheckCondCode, ISD::SETEQ,
/*1764*/              OPC_MoveParent,
/*1765*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 0:i32, SETEQ:Other) - Complexity = 9
                      // Dst: (i_seqz_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*1772*/            /*Scope*/ 10, /*->1783*/
/*1773*/              OPC_CheckCondCode, ISD::SETGT,
/*1775*/              OPC_MoveParent,
/*1776*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_sgtz_alias__xpr__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 0:i32, SETGT:Other) - Complexity = 9
                      // Dst: (i_sgtz_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*1783*/            /*Scope*/ 10, /*->1794*/
/*1784*/              OPC_CheckCondCode, ISD::SETNE,
/*1786*/              OPC_MoveParent,
/*1787*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__xpr__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 0:i32, SETNE:Other) - Complexity = 9
                      // Dst: (i_snez_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*1794*/            0, /*End of Scope*/
/*1795*/          /*Scope*/ 127, /*->1923*/
/*1796*/            OPC_RecordChild1, // #1 = $op2
/*1797*/            OPC_MoveChild1,
/*1798*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1801*/            OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*1803*/            OPC_MoveParent,
/*1804*/            OPC_MoveChild2,
/*1805*/            OPC_Scope, 13, /*->1820*/ // 6 children in Scope
/*1807*/              OPC_CheckCondCode, ISD::SETLT,
/*1809*/              OPC_MoveParent,
/*1810*/              OPC_EmitConvertToTarget, 1,
/*1812*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2, SETLT:Other) - Complexity = 8
                      // Dst: (i_alu_i__opc_slti__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*1820*/            /*Scope*/ 13, /*->1834*/
/*1821*/              OPC_CheckCondCode, ISD::SETULT,
/*1823*/              OPC_MoveParent,
/*1824*/              OPC_EmitConvertToTarget, 1,
/*1826*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2, SETULT:Other) - Complexity = 8
                      // Dst: (i_alu_i__opc_sltiu__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*1834*/            /*Scope*/ 20, /*->1855*/
/*1835*/              OPC_CheckCondCode, ISD::SETEQ,
/*1837*/              OPC_MoveParent,
/*1838*/              OPC_EmitConvertToTarget, 1,
/*1840*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*1848*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETEQ:Other) - Complexity = 8
                      // Dst: (i_seqz_alias__xpr__xpr__:i32 (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))
/*1855*/            /*Scope*/ 20, /*->1876*/
/*1856*/              OPC_CheckCondCode, ISD::SETNE,
/*1858*/              OPC_MoveParent,
/*1859*/              OPC_EmitConvertToTarget, 1,
/*1861*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*1869*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__x_0__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETNE:Other) - Complexity = 8
                      // Dst: (i_alu__opc_sltu__xpr__x_0__xpr__:i32 (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))
/*1876*/            /*Scope*/ 20, /*->1897*/
/*1877*/              OPC_CheckCondCode, ISD::SETGE,
/*1879*/              OPC_MoveParent,
/*1880*/              OPC_EmitConvertToTarget, 1,
/*1882*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*1890*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__xpr__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETGE:Other) - Complexity = 8
                      // Dst: (i_seqz_alias__xpr__xpr__:i32 (i_alu_i__opc_slti__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1))
/*1897*/            /*Scope*/ 24, /*->1922*/
/*1898*/              OPC_CheckCondCode, ISD::SETUGE,
/*1900*/              OPC_MoveParent,
/*1901*/              OPC_EmitConvertToTarget, 1,
/*1903*/              OPC_EmitNode1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*1911*/              OPC_EmitInteger, MVT::i32, 1, 
/*1914*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1, SETUGE:Other) - Complexity = 8
                      // Dst: (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 (i_alu_i__opc_sltiu__xpr__xpr__simm12__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, (imm:i32)<<P:Predicate_sext12To32imm>>:$op1), 1:i32)
/*1922*/            0, /*End of Scope*/
/*1923*/          0, /*End of Scope*/
/*1924*/        /*Scope*/ 57|128,1/*185*/, /*->2111*/
/*1926*/          OPC_CheckType, MVT::i32,
/*1928*/          OPC_MoveParent,
/*1929*/          OPC_RecordChild1, // #1 = $op2
/*1930*/          OPC_MoveChild1,
/*1931*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*1933*/          OPC_MoveParent,
/*1934*/          OPC_MoveChild2,
/*1935*/          OPC_Scope, 11, /*->1948*/ // 10 children in Scope
/*1937*/            OPC_CheckCondCode, ISD::SETLT,
/*1939*/            OPC_MoveParent,
/*1940*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, SETLT:Other) - Complexity = 5
                    // Dst: (i_alu__opc_slt__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*1948*/          /*Scope*/ 11, /*->1960*/
/*1949*/            OPC_CheckCondCode, ISD::SETGT,
/*1951*/            OPC_MoveParent,
/*1952*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, SETGT:Other) - Complexity = 5
                    // Dst: (i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*1960*/          /*Scope*/ 11, /*->1972*/
/*1961*/            OPC_CheckCondCode, ISD::SETULT,
/*1963*/            OPC_MoveParent,
/*1964*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, SETULT:Other) - Complexity = 5
                    // Dst: (i_alu__opc_sltu__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*1972*/          /*Scope*/ 11, /*->1984*/
/*1973*/            OPC_CheckCondCode, ISD::SETUGT,
/*1975*/            OPC_MoveParent,
/*1976*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, SETUGT:Other) - Complexity = 5
                    // Dst: (i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*1984*/          /*Scope*/ 18, /*->2003*/
/*1985*/            OPC_CheckCondCode, ISD::SETEQ,
/*1987*/            OPC_MoveParent,
/*1988*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_xor__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*1996*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__xpr__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETEQ:Other) - Complexity = 5
                    // Dst: (i_seqz_alias__xpr__xpr__:i32 (i_alu__opc_xor__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1))
/*2003*/          /*Scope*/ 18, /*->2022*/
/*2004*/            OPC_CheckCondCode, ISD::SETNE,
/*2006*/            OPC_MoveParent,
/*2007*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_xor__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*2015*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__x_0__xpr__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETNE:Other) - Complexity = 5
                    // Dst: (i_alu__opc_sltu__xpr__x_0__xpr__:i32 (i_alu__opc_xor__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1))
/*2022*/          /*Scope*/ 18, /*->2041*/
/*2023*/            OPC_CheckCondCode, ISD::SETGE,
/*2025*/            OPC_MoveParent,
/*2026*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*2034*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__xpr__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGE:Other) - Complexity = 5
                    // Dst: (i_seqz_alias__xpr__xpr__:i32 (i_alu__opc_slt__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1))
/*2041*/          /*Scope*/ 22, /*->2064*/
/*2042*/            OPC_CheckCondCode, ISD::SETLE,
/*2044*/            OPC_MoveParent,
/*2045*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*2053*/            OPC_EmitInteger, MVT::i32, 1, 
/*2056*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLE:Other) - Complexity = 5
                    // Dst: (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 (i_alu__opc_slt__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0), 1:i32)
/*2064*/          /*Scope*/ 22, /*->2087*/
/*2065*/            OPC_CheckCondCode, ISD::SETUGE,
/*2067*/            OPC_MoveParent,
/*2068*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*2076*/            OPC_EmitInteger, MVT::i32, 1, 
/*2079*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGE:Other) - Complexity = 5
                    // Dst: (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 (i_alu__opc_sltu__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1), 1:i32)
/*2087*/          /*Scope*/ 22, /*->2110*/
/*2088*/            OPC_CheckCondCode, ISD::SETULE,
/*2090*/            OPC_MoveParent,
/*2091*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__xpr__xpr__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*2099*/            OPC_EmitInteger, MVT::i32, 1, 
/*2102*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULE:Other) - Complexity = 5
                    // Dst: (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 (i_alu__opc_sltu__xpr__xpr__xpr__:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0), 1:i32)
/*2110*/          0, /*End of Scope*/
/*2111*/        0, /*End of Scope*/
/*2112*/      0, /*End of Scope*/
/*2113*/    /*SwitchOpcode*/ 24|128,3/*408*/, TARGET_VAL(ISD::LOAD),// ->2525
/*2117*/      OPC_RecordMemRef,
/*2118*/      OPC_RecordNode, // #0 = 'ld' chained node
/*2119*/      OPC_Scope, 22|128,1/*150*/, /*->2272*/ // 2 children in Scope
/*2122*/        OPC_MoveChild1,
/*2123*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2126*/        OPC_RecordChild0, // #1 = $op1
/*2127*/        OPC_MoveChild0,
/*2128*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2130*/        OPC_MoveParent,
/*2131*/        OPC_RecordChild1, // #2 = $op2
/*2132*/        OPC_MoveChild1,
/*2133*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2136*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*2138*/        OPC_MoveParent,
/*2139*/        OPC_CheckType, MVT::i32,
/*2141*/        OPC_MoveParent,
/*2142*/        OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2144*/        OPC_CheckType, MVT::i32,
/*2146*/        OPC_Scope, 17, /*->2165*/ // 7 children in Scope
/*2148*/          OPC_CheckPredicate, 9, // Predicate_sextload
/*2150*/          OPC_CheckPredicate, 10, // Predicate_sextloadi8
/*2152*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*2154*/          OPC_EmitMergeInputChains1_0,
/*2155*/          OPC_EmitConvertToTarget, 2,
/*2157*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lb__xpr__simm12__xpr__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2165*/        /*Scope*/ 17, /*->2183*/
/*2166*/          OPC_CheckPredicate, 11, // Predicate_extload
/*2168*/          OPC_CheckPredicate, 10, // Predicate_extloadi8
/*2170*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*2172*/          OPC_EmitMergeInputChains1_0,
/*2173*/          OPC_EmitConvertToTarget, 2,
/*2175*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2183*/        /*Scope*/ 17, /*->2201*/
/*2184*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*2186*/          OPC_CheckPredicate, 10, // Predicate_zextloadi8
/*2188*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*2190*/          OPC_EmitMergeInputChains1_0,
/*2191*/          OPC_EmitConvertToTarget, 2,
/*2193*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lbu__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lbu__xpr__simm12__xpr__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2201*/        /*Scope*/ 17, /*->2219*/
/*2202*/          OPC_CheckPredicate, 9, // Predicate_sextload
/*2204*/          OPC_CheckPredicate, 13, // Predicate_sextloadi16
/*2206*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*2208*/          OPC_EmitMergeInputChains1_0,
/*2209*/          OPC_EmitConvertToTarget, 2,
/*2211*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lh__xpr__simm12__xpr__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2219*/        /*Scope*/ 17, /*->2237*/
/*2220*/          OPC_CheckPredicate, 11, // Predicate_extload
/*2222*/          OPC_CheckPredicate, 13, // Predicate_extloadi16
/*2224*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*2226*/          OPC_EmitMergeInputChains1_0,
/*2227*/          OPC_EmitConvertToTarget, 2,
/*2229*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2237*/        /*Scope*/ 17, /*->2255*/
/*2238*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*2240*/          OPC_CheckPredicate, 13, // Predicate_zextloadi16
/*2242*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*2244*/          OPC_EmitMergeInputChains1_0,
/*2245*/          OPC_EmitConvertToTarget, 2,
/*2247*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lhu__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lhu__xpr__simm12__xpr__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2255*/        /*Scope*/ 15, /*->2271*/
/*2256*/          OPC_CheckPredicate, 14, // Predicate_load
/*2258*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*2260*/          OPC_EmitMergeInputChains1_0,
/*2261*/          OPC_EmitConvertToTarget, 2,
/*2263*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lw__xpr__simm12__xpr__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:i32 (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 12
                  // Dst: (i_load__opc_lw__xpr__simm12__xpr__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2271*/        0, /*End of Scope*/
/*2272*/      /*Scope*/ 122|128,1/*250*/, /*->2524*/
/*2274*/        OPC_RecordChild1, // #1 = $op1
/*2275*/        OPC_MoveChild1,
/*2276*/        OPC_CheckType, MVT::i32,
/*2278*/        OPC_Scope, 1|128,1/*129*/, /*->2410*/ // 2 children in Scope
/*2281*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2284*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*2286*/          OPC_MoveParent,
/*2287*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2289*/          OPC_CheckType, MVT::i32,
/*2291*/          OPC_Scope, 16, /*->2309*/ // 7 children in Scope
/*2293*/            OPC_CheckPredicate, 9, // Predicate_sextload
/*2295*/            OPC_CheckPredicate, 10, // Predicate_sextloadi8
/*2297*/            OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*2299*/            OPC_EmitMergeInputChains1_0,
/*2300*/            OPC_EmitConvertToTarget, 1,
/*2302*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lb__xpr__simm12__x_0__:i32 (imm:i32):$op1)
/*2309*/          /*Scope*/ 16, /*->2326*/
/*2310*/            OPC_CheckPredicate, 11, // Predicate_extload
/*2312*/            OPC_CheckPredicate, 10, // Predicate_extloadi8
/*2314*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*2316*/            OPC_EmitMergeInputChains1_0,
/*2317*/            OPC_EmitConvertToTarget, 1,
/*2319*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_:i32 (imm:i32):$op1)
/*2326*/          /*Scope*/ 16, /*->2343*/
/*2327*/            OPC_CheckPredicate, 12, // Predicate_zextload
/*2329*/            OPC_CheckPredicate, 10, // Predicate_zextloadi8
/*2331*/            OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*2333*/            OPC_EmitMergeInputChains1_0,
/*2334*/            OPC_EmitConvertToTarget, 1,
/*2336*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lbu__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lbu__xpr__simm12__x_0__:i32 (imm:i32):$op1)
/*2343*/          /*Scope*/ 16, /*->2360*/
/*2344*/            OPC_CheckPredicate, 9, // Predicate_sextload
/*2346*/            OPC_CheckPredicate, 13, // Predicate_sextloadi16
/*2348*/            OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*2350*/            OPC_EmitMergeInputChains1_0,
/*2351*/            OPC_EmitConvertToTarget, 1,
/*2353*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lh__xpr__simm12__x_0__:i32 (imm:i32):$op1)
/*2360*/          /*Scope*/ 16, /*->2377*/
/*2361*/            OPC_CheckPredicate, 11, // Predicate_extload
/*2363*/            OPC_CheckPredicate, 13, // Predicate_extloadi16
/*2365*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*2367*/            OPC_EmitMergeInputChains1_0,
/*2368*/            OPC_EmitConvertToTarget, 1,
/*2370*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_:i32 (imm:i32):$op1)
/*2377*/          /*Scope*/ 16, /*->2394*/
/*2378*/            OPC_CheckPredicate, 12, // Predicate_zextload
/*2380*/            OPC_CheckPredicate, 13, // Predicate_zextloadi16
/*2382*/            OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*2384*/            OPC_EmitMergeInputChains1_0,
/*2385*/            OPC_EmitConvertToTarget, 1,
/*2387*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lhu__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lhu__xpr__simm12__x_0__:i32 (imm:i32):$op1)
/*2394*/          /*Scope*/ 14, /*->2409*/
/*2395*/            OPC_CheckPredicate, 14, // Predicate_load
/*2397*/            OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*2399*/            OPC_EmitMergeInputChains1_0,
/*2400*/            OPC_EmitConvertToTarget, 1,
/*2402*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lw__xpr__simm12__x_0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:i32 (imm:i32)<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 8
                    // Dst: (i_load__opc_lw__xpr__simm12__x_0__:i32 (imm:i32):$op1)
/*2409*/          0, /*End of Scope*/
/*2410*/        /*Scope*/ 112, /*->2523*/
/*2411*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2413*/          OPC_MoveParent,
/*2414*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2416*/          OPC_CheckType, MVT::i32,
/*2418*/          OPC_Scope, 14, /*->2434*/ // 7 children in Scope
/*2420*/            OPC_CheckPredicate, 9, // Predicate_sextload
/*2422*/            OPC_CheckPredicate, 10, // Predicate_sextloadi8
/*2424*/            OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*2426*/            OPC_EmitMergeInputChains1_0,
/*2427*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_:i32 xpr:i32:$op1)
/*2434*/          /*Scope*/ 14, /*->2449*/
/*2435*/            OPC_CheckPredicate, 11, // Predicate_extload
/*2437*/            OPC_CheckPredicate, 10, // Predicate_extloadi8
/*2439*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*2441*/            OPC_EmitMergeInputChains1_0,
/*2442*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:i32 xpr:i32:$op1)
/*2449*/          /*Scope*/ 14, /*->2464*/
/*2450*/            OPC_CheckPredicate, 12, // Predicate_zextload
/*2452*/            OPC_CheckPredicate, 10, // Predicate_zextloadi8
/*2454*/            OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*2456*/            OPC_EmitMergeInputChains1_0,
/*2457*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lbu__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lbu__xpr__simm12__xpr__SPEC_CLONE_:i32 xpr:i32:$op1)
/*2464*/          /*Scope*/ 14, /*->2479*/
/*2465*/            OPC_CheckPredicate, 9, // Predicate_sextload
/*2467*/            OPC_CheckPredicate, 13, // Predicate_sextloadi16
/*2469*/            OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*2471*/            OPC_EmitMergeInputChains1_0,
/*2472*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_:i32 xpr:i32:$op1)
/*2479*/          /*Scope*/ 14, /*->2494*/
/*2480*/            OPC_CheckPredicate, 11, // Predicate_extload
/*2482*/            OPC_CheckPredicate, 13, // Predicate_extloadi16
/*2484*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*2486*/            OPC_EmitMergeInputChains1_0,
/*2487*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:i32 xpr:i32:$op1)
/*2494*/          /*Scope*/ 14, /*->2509*/
/*2495*/            OPC_CheckPredicate, 12, // Predicate_zextload
/*2497*/            OPC_CheckPredicate, 13, // Predicate_zextloadi16
/*2499*/            OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*2501*/            OPC_EmitMergeInputChains1_0,
/*2502*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lhu__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lhu__xpr__simm12__xpr__SPEC_CLONE_:i32 xpr:i32:$op1)
/*2509*/          /*Scope*/ 12, /*->2522*/
/*2510*/            OPC_CheckPredicate, 14, // Predicate_load
/*2512*/            OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*2514*/            OPC_EmitMergeInputChains1_0,
/*2515*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 5
                    // Dst: (i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_:i32 xpr:i32:$op1)
/*2522*/          0, /*End of Scope*/
/*2523*/        0, /*End of Scope*/
/*2524*/      0, /*End of Scope*/
/*2525*/    /*SwitchOpcode*/ 64|128,2/*320*/, TARGET_VAL(ISD::SELECT),// ->2849
/*2529*/      OPC_Scope, 33|128,2/*289*/, /*->2821*/ // 2 children in Scope
/*2532*/        OPC_MoveChild0,
/*2533*/        OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*2536*/        OPC_RecordChild0, // #0 = $op0
/*2537*/        OPC_MoveChild0,
/*2538*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2540*/        OPC_CheckType, MVT::i32,
/*2542*/        OPC_MoveParent,
/*2543*/        OPC_RecordChild1, // #1 = $op1
/*2544*/        OPC_MoveChild1,
/*2545*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2547*/        OPC_MoveParent,
/*2548*/        OPC_MoveChild2,
/*2549*/        OPC_Scope, 26, /*->2577*/ // 10 children in Scope
/*2551*/          OPC_CheckCondCode, ISD::SETEQ,
/*2553*/          OPC_MoveParent,
/*2554*/          OPC_MoveParent,
/*2555*/          OPC_RecordChild1, // #2 = $op2
/*2556*/          OPC_MoveChild1,
/*2557*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2559*/          OPC_MoveParent,
/*2560*/          OPC_RecordChild2, // #3 = $op3
/*2561*/          OPC_MoveChild2,
/*2562*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2564*/          OPC_MoveParent,
/*2565*/          OPC_CheckType, MVT::i32,
/*2567*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETEQ:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_7:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2577*/        /*Scope*/ 26, /*->2604*/
/*2578*/          OPC_CheckCondCode, ISD::SETNE,
/*2580*/          OPC_MoveParent,
/*2581*/          OPC_MoveParent,
/*2582*/          OPC_RecordChild1, // #2 = $op2
/*2583*/          OPC_MoveChild1,
/*2584*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2586*/          OPC_MoveParent,
/*2587*/          OPC_RecordChild2, // #3 = $op3
/*2588*/          OPC_MoveChild2,
/*2589*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2591*/          OPC_MoveParent,
/*2592*/          OPC_CheckType, MVT::i32,
/*2594*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETNE:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_8:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2604*/        /*Scope*/ 26, /*->2631*/
/*2605*/          OPC_CheckCondCode, ISD::SETGE,
/*2607*/          OPC_MoveParent,
/*2608*/          OPC_MoveParent,
/*2609*/          OPC_RecordChild1, // #2 = $op2
/*2610*/          OPC_MoveChild1,
/*2611*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2613*/          OPC_MoveParent,
/*2614*/          OPC_RecordChild2, // #3 = $op3
/*2615*/          OPC_MoveChild2,
/*2616*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2618*/          OPC_MoveParent,
/*2619*/          OPC_CheckType, MVT::i32,
/*2621*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGE:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_9:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2631*/        /*Scope*/ 26, /*->2658*/
/*2632*/          OPC_CheckCondCode, ISD::SETGT,
/*2634*/          OPC_MoveParent,
/*2635*/          OPC_MoveParent,
/*2636*/          OPC_RecordChild1, // #2 = $op2
/*2637*/          OPC_MoveChild1,
/*2638*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2640*/          OPC_MoveParent,
/*2641*/          OPC_RecordChild2, // #3 = $op3
/*2642*/          OPC_MoveChild2,
/*2643*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2645*/          OPC_MoveParent,
/*2646*/          OPC_CheckType, MVT::i32,
/*2648*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETGT:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_10:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2658*/        /*Scope*/ 26, /*->2685*/
/*2659*/          OPC_CheckCondCode, ISD::SETLE,
/*2661*/          OPC_MoveParent,
/*2662*/          OPC_MoveParent,
/*2663*/          OPC_RecordChild1, // #2 = $op2
/*2664*/          OPC_MoveChild1,
/*2665*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2667*/          OPC_MoveParent,
/*2668*/          OPC_RecordChild2, // #3 = $op3
/*2669*/          OPC_MoveChild2,
/*2670*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2672*/          OPC_MoveParent,
/*2673*/          OPC_CheckType, MVT::i32,
/*2675*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLE:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_11:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2685*/        /*Scope*/ 26, /*->2712*/
/*2686*/          OPC_CheckCondCode, ISD::SETLT,
/*2688*/          OPC_MoveParent,
/*2689*/          OPC_MoveParent,
/*2690*/          OPC_RecordChild1, // #2 = $op2
/*2691*/          OPC_MoveChild1,
/*2692*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2694*/          OPC_MoveParent,
/*2695*/          OPC_RecordChild2, // #3 = $op3
/*2696*/          OPC_MoveChild2,
/*2697*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2699*/          OPC_MoveParent,
/*2700*/          OPC_CheckType, MVT::i32,
/*2702*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETLT:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_12:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2712*/        /*Scope*/ 26, /*->2739*/
/*2713*/          OPC_CheckCondCode, ISD::SETUGE,
/*2715*/          OPC_MoveParent,
/*2716*/          OPC_MoveParent,
/*2717*/          OPC_RecordChild1, // #2 = $op2
/*2718*/          OPC_MoveChild1,
/*2719*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2721*/          OPC_MoveParent,
/*2722*/          OPC_RecordChild2, // #3 = $op3
/*2723*/          OPC_MoveChild2,
/*2724*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2726*/          OPC_MoveParent,
/*2727*/          OPC_CheckType, MVT::i32,
/*2729*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGE:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_13:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2739*/        /*Scope*/ 26, /*->2766*/
/*2740*/          OPC_CheckCondCode, ISD::SETUGT,
/*2742*/          OPC_MoveParent,
/*2743*/          OPC_MoveParent,
/*2744*/          OPC_RecordChild1, // #2 = $op2
/*2745*/          OPC_MoveChild1,
/*2746*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2748*/          OPC_MoveParent,
/*2749*/          OPC_RecordChild2, // #3 = $op3
/*2750*/          OPC_MoveChild2,
/*2751*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2753*/          OPC_MoveParent,
/*2754*/          OPC_CheckType, MVT::i32,
/*2756*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETUGT:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_14:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2766*/        /*Scope*/ 26, /*->2793*/
/*2767*/          OPC_CheckCondCode, ISD::SETULE,
/*2769*/          OPC_MoveParent,
/*2770*/          OPC_MoveParent,
/*2771*/          OPC_RecordChild1, // #2 = $op2
/*2772*/          OPC_MoveChild1,
/*2773*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2775*/          OPC_MoveParent,
/*2776*/          OPC_RecordChild2, // #3 = $op3
/*2777*/          OPC_MoveChild2,
/*2778*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2780*/          OPC_MoveParent,
/*2781*/          OPC_CheckType, MVT::i32,
/*2783*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULE:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_15:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2793*/        /*Scope*/ 26, /*->2820*/
/*2794*/          OPC_CheckCondCode, ISD::SETULT,
/*2796*/          OPC_MoveParent,
/*2797*/          OPC_MoveParent,
/*2798*/          OPC_RecordChild1, // #2 = $op2
/*2799*/          OPC_MoveChild1,
/*2800*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2802*/          OPC_MoveParent,
/*2803*/          OPC_RecordChild2, // #3 = $op3
/*2804*/          OPC_MoveChild2,
/*2805*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2807*/          OPC_MoveParent,
/*2808*/          OPC_CheckType, MVT::i32,
/*2810*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:i32 (setcc:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, SETULT:Other), xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_16:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2, xpr:i32:$op3)
/*2820*/        0, /*End of Scope*/
/*2821*/      /*Scope*/ 26, /*->2848*/
/*2822*/        OPC_RecordChild0, // #0 = $op0
/*2823*/        OPC_MoveChild0,
/*2824*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2826*/        OPC_MoveParent,
/*2827*/        OPC_RecordChild1, // #1 = $op1
/*2828*/        OPC_MoveChild1,
/*2829*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2831*/        OPC_MoveParent,
/*2832*/        OPC_RecordChild2, // #2 = $op2
/*2833*/        OPC_MoveChild2,
/*2834*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2836*/        OPC_MoveParent,
/*2837*/        OPC_CheckType, MVT::i32,
/*2839*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:i32 xpr:i32:$op0, xpr:i32:$op1, xpr:i32:$op2)
/*2848*/      0, /*End of Scope*/
/*2849*/    /*SwitchOpcode*/ 74, TARGET_VAL(CodasipISD::Call),// ->2926
/*2852*/      OPC_RecordNode, // #0 = 'Call' chained node
/*2853*/      OPC_CaptureGlueInput,
/*2854*/      OPC_Scope, 53, /*->2909*/ // 2 children in Scope
/*2856*/        OPC_MoveChild1,
/*2857*/        OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*2860*/        OPC_RecordChild0, // #1 = $op0
/*2861*/        OPC_MoveChild0,
/*2862*/        OPC_SwitchOpcode /*3 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->2878
/*2866*/          OPC_MoveParent,
/*2867*/          OPC_CheckType, MVT::i32,
/*2869*/          OPC_MoveParent,
/*2870*/          OPC_EmitMergeInputChains1_0,
/*2871*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                  // Dst: (i_call_alias__rel_addr20__:i32 (tglobaladdr:i32):$op0)
/*2878*/        /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->2893
/*2881*/          OPC_MoveParent,
/*2882*/          OPC_CheckType, MVT::i32,
/*2884*/          OPC_MoveParent,
/*2885*/          OPC_EmitMergeInputChains1_0,
/*2886*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                  // Dst: (i_call_alias__rel_addr20__ES:i32 (texternalsym:i32):$op0)
/*2893*/        /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->2908
/*2896*/          OPC_MoveParent,
/*2897*/          OPC_CheckType, MVT::i32,
/*2899*/          OPC_MoveParent,
/*2900*/          OPC_EmitMergeInputChains1_0,
/*2901*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                  // Dst: (i_call_alias__rel_addr20__BA:i32 (tblockaddress:i32):$op0)
/*2908*/        0, // EndSwitchOpcode
/*2909*/      /*Scope*/ 15, /*->2925*/
/*2910*/        OPC_RecordChild1, // #1 = $op0
/*2911*/        OPC_MoveChild1,
/*2912*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2914*/        OPC_CheckType, MVT::i32,
/*2916*/        OPC_MoveParent,
/*2917*/        OPC_EmitMergeInputChains1_0,
/*2918*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__xpr__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0) - Complexity = 4
                // Dst: (i_call_reg_alias__xpr__:i32 xpr:i32:$op0)
/*2925*/      0, /*End of Scope*/
/*2926*/    /*SwitchOpcode*/ 62, TARGET_VAL(ISD::SRL),// ->2991
/*2929*/      OPC_RecordChild0, // #0 = $op1
/*2930*/      OPC_MoveChild0,
/*2931*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2933*/      OPC_MoveParent,
/*2934*/      OPC_Scope, 20, /*->2956*/ // 2 children in Scope
/*2936*/        OPC_CheckChild1Integer, 31, 
/*2938*/        OPC_Scope, 7, /*->2947*/ // 2 children in Scope
/*2940*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__xpr__x_0__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (srl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 31:i32) - Complexity = 9
                  // Dst: (i_alu__opc_slt__xpr__xpr__x_0__:i32 xpr:i32:$op1)
/*2947*/        /*Scope*/ 7, /*->2955*/
/*2948*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_sltz_alias__xpr__xpr__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (srl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, 31:i32) - Complexity = 9
                  // Dst: (i_sltz_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*2955*/        0, /*End of Scope*/
/*2956*/      /*Scope*/ 33, /*->2990*/
/*2957*/        OPC_RecordChild1, // #1 = $op2
/*2958*/        OPC_MoveChild1,
/*2959*/        OPC_Scope, 16, /*->2977*/ // 2 children in Scope
/*2961*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2964*/          OPC_CheckPredicate, 15, // Predicate_zext5To32imm
/*2966*/          OPC_MoveParent,
/*2967*/          OPC_EmitConvertToTarget, 1,
/*2969*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_srli__xpr__xpr__shamt__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_shift__opc_srli__xpr__xpr__shamt__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*2977*/        /*Scope*/ 11, /*->2989*/
/*2978*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*2980*/          OPC_MoveParent,
/*2981*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_srl__xpr__xpr__xpr__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                  // Dst: (i_alu__opc_srl__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*2989*/        0, /*End of Scope*/
/*2990*/      0, /*End of Scope*/
/*2991*/    /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->3041
/*2994*/      OPC_Scope, 25, /*->3021*/ // 2 children in Scope
/*2996*/        OPC_CheckChild0Integer, 0, 
/*2998*/        OPC_RecordChild1, // #0 = $op1
/*2999*/        OPC_MoveChild1,
/*3000*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3002*/        OPC_MoveParent,
/*3003*/        OPC_Scope, 7, /*->3012*/ // 2 children in Scope
/*3005*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sub__xpr__x_0__xpr__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:i32 0:i32, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1) - Complexity = 9
                  // Dst: (i_alu__opc_sub__xpr__x_0__xpr__:i32 xpr:i32:$op1)
/*3012*/        /*Scope*/ 7, /*->3020*/
/*3013*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__xpr__xpr__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:i32 0:i32, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1) - Complexity = 9
                  // Dst: (i_neg_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*3020*/        0, /*End of Scope*/
/*3021*/      /*Scope*/ 18, /*->3040*/
/*3022*/        OPC_RecordChild0, // #0 = $op1
/*3023*/        OPC_MoveChild0,
/*3024*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3026*/        OPC_MoveParent,
/*3027*/        OPC_RecordChild1, // #1 = $op2
/*3028*/        OPC_MoveChild1,
/*3029*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3031*/        OPC_MoveParent,
/*3032*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sub__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_sub__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3040*/      0, /*End of Scope*/
/*3041*/    /*SwitchOpcode*/ 60, TARGET_VAL(ISD::XOR),// ->3104
/*3044*/      OPC_RecordChild0, // #0 = $op1
/*3045*/      OPC_MoveChild0,
/*3046*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3048*/      OPC_MoveParent,
/*3049*/      OPC_Scope, 18, /*->3069*/ // 2 children in Scope
/*3051*/        OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3062*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_not_alias__xpr__xpr__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (xor:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, -1:i32) - Complexity = 9
                // Dst: (i_not_alias__xpr__xpr__:i32 xpr:i32:$op1)
/*3069*/      /*Scope*/ 33, /*->3103*/
/*3070*/        OPC_RecordChild1, // #1 = $op2
/*3071*/        OPC_MoveChild1,
/*3072*/        OPC_Scope, 16, /*->3090*/ // 2 children in Scope
/*3074*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3077*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*3079*/          OPC_MoveParent,
/*3080*/          OPC_EmitConvertToTarget, 1,
/*3082*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (xor:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_alu_i__opc_xori__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3090*/        /*Scope*/ 11, /*->3102*/
/*3091*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3093*/          OPC_MoveParent,
/*3094*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_xor__xpr__xpr__xpr__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                  // Dst: (i_alu__opc_xor__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3102*/        0, /*End of Scope*/
/*3103*/      0, /*End of Scope*/
/*3104*/    /*SwitchOpcode*/ 85|128,2/*341*/, TARGET_VAL(CodasipISD::TailCall),// ->3449
/*3108*/      OPC_RecordNode, // #0 = 'TailCall' chained node
/*3109*/      OPC_CaptureGlueInput,
/*3110*/      OPC_Scope, 46|128,2/*302*/, /*->3415*/ // 2 children in Scope
/*3113*/        OPC_MoveChild1,
/*3114*/        OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*3117*/        OPC_RecordChild0, // #1 = $op0
/*3118*/        OPC_MoveChild0,
/*3119*/        OPC_SwitchOpcode /*3 cases */, 95, TARGET_VAL(ISD::TargetGlobalAddress),// ->3218
/*3123*/          OPC_MoveParent,
/*3124*/          OPC_CheckType, MVT::i32,
/*3126*/          OPC_MoveParent,
/*3127*/          OPC_EmitMergeInputChains1_0,
/*3128*/          OPC_Scope, 7, /*->3137*/ // 11 children in Scope
/*3130*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_j_alias__rel_addr20__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3137*/          /*Scope*/ 7, /*->3145*/
/*3138*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3145*/          /*Scope*/ 7, /*->3153*/
/*3146*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3153*/          /*Scope*/ 7, /*->3161*/
/*3154*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3161*/          /*Scope*/ 7, /*->3169*/
/*3162*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3169*/          /*Scope*/ 7, /*->3177*/
/*3170*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3177*/          /*Scope*/ 7, /*->3185*/
/*3178*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3185*/          /*Scope*/ 7, /*->3193*/
/*3186*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3193*/          /*Scope*/ 7, /*->3201*/
/*3194*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3201*/          /*Scope*/ 7, /*->3209*/
/*3202*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3209*/          /*Scope*/ 7, /*->3217*/
/*3210*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tglobaladdr:i32):$op0)) - Complexity = 9
                    // Dst: (i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_:i32 (tglobaladdr:i32):$op0)
/*3217*/          0, /*End of Scope*/
/*3218*/        /*SwitchOpcode*/ 95, TARGET_VAL(ISD::TargetExternalSymbol),// ->3316
/*3221*/          OPC_MoveParent,
/*3222*/          OPC_CheckType, MVT::i32,
/*3224*/          OPC_MoveParent,
/*3225*/          OPC_EmitMergeInputChains1_0,
/*3226*/          OPC_Scope, 7, /*->3235*/ // 11 children in Scope
/*3228*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_j_alias__rel_addr20__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3235*/          /*Scope*/ 7, /*->3243*/
/*3236*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3243*/          /*Scope*/ 7, /*->3251*/
/*3244*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3251*/          /*Scope*/ 7, /*->3259*/
/*3252*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3259*/          /*Scope*/ 7, /*->3267*/
/*3260*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3267*/          /*Scope*/ 7, /*->3275*/
/*3268*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3275*/          /*Scope*/ 7, /*->3283*/
/*3276*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3283*/          /*Scope*/ 7, /*->3291*/
/*3284*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3291*/          /*Scope*/ 7, /*->3299*/
/*3292*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3299*/          /*Scope*/ 7, /*->3307*/
/*3300*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3307*/          /*Scope*/ 7, /*->3315*/
/*3308*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (texternalsym:i32):$op0)) - Complexity = 9
                    // Dst: (i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES:i32 (texternalsym:i32):$op0)
/*3315*/          0, /*End of Scope*/
/*3316*/        /*SwitchOpcode*/ 95, TARGET_VAL(ISD::TargetBlockAddress),// ->3414
/*3319*/          OPC_MoveParent,
/*3320*/          OPC_CheckType, MVT::i32,
/*3322*/          OPC_MoveParent,
/*3323*/          OPC_EmitMergeInputChains1_0,
/*3324*/          OPC_Scope, 7, /*->3333*/ // 11 children in Scope
/*3326*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_j_alias__rel_addr20__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3333*/          /*Scope*/ 7, /*->3341*/
/*3334*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3341*/          /*Scope*/ 7, /*->3349*/
/*3342*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3349*/          /*Scope*/ 7, /*->3357*/
/*3350*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3357*/          /*Scope*/ 7, /*->3365*/
/*3358*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3365*/          /*Scope*/ 7, /*->3373*/
/*3366*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3373*/          /*Scope*/ 7, /*->3381*/
/*3374*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3381*/          /*Scope*/ 7, /*->3389*/
/*3382*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3389*/          /*Scope*/ 7, /*->3397*/
/*3390*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3397*/          /*Scope*/ 7, /*->3405*/
/*3398*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3405*/          /*Scope*/ 7, /*->3413*/
/*3406*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:i32 (tblockaddress:i32):$op0)) - Complexity = 9
                    // Dst: (i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA:i32 (tblockaddress:i32):$op0)
/*3413*/          0, /*End of Scope*/
/*3414*/        0, // EndSwitchOpcode
/*3415*/      /*Scope*/ 32, /*->3448*/
/*3416*/        OPC_RecordChild1, // #1 = $op0
/*3417*/        OPC_MoveChild1,
/*3418*/        OPC_CheckType, MVT::i32,
/*3420*/        OPC_Scope, 11, /*->3433*/ // 2 children in Scope
/*3422*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3424*/          OPC_MoveParent,
/*3425*/          OPC_EmitMergeInputChains1_0,
/*3426*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_jr_alias__xpr__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (TailCall xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0) - Complexity = 4
                  // Dst: (i_jr_alias__xpr__TAILCALL_CLONE_:i32 xpr:i32:$op0)
/*3433*/        /*Scope*/ 13, /*->3447*/
/*3434*/          OPC_CheckPredicate, 16, // Predicate_NotFI_rf_xpr_1
/*3436*/          OPC_MoveParent,
/*3437*/          OPC_EmitMergeInputChains1_0,
/*3438*/          OPC_EmitCopyToReg, 1,  Codasip::rf_xpr_1,
/*3441*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ret_alias__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: (TailCall rf_xpr_1:i32<<P:Predicate_NotFI_rf_xpr_1>>) - Complexity = 4
                  // Dst: (i_ret_alias__TAILCALL_CLONE_:i32)
/*3447*/        0, /*End of Scope*/
/*3448*/      0, /*End of Scope*/
/*3449*/    /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3474
/*3452*/      OPC_RecordNode, // #0 = 'callseq_end' chained node
/*3453*/      OPC_CaptureGlueInput,
/*3454*/      OPC_RecordChild1, // #1 = $imm
/*3455*/      OPC_MoveChild1,
/*3456*/      OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*3459*/      OPC_MoveParent,
/*3460*/      OPC_RecordChild2, // #2 = $imm2
/*3461*/      OPC_MoveChild2,
/*3462*/      OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*3465*/      OPC_MoveParent,
/*3466*/      OPC_EmitMergeInputChains1_0,
/*3467*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:i32):$imm, (timm:i32):$imm2) - Complexity = 9
              // Dst: (CALLEND (timm:i32):$imm, (timm:i32):$imm2)
/*3474*/    /*SwitchOpcode*/ 38, TARGET_VAL(ISD::ADD),// ->3515
/*3477*/      OPC_RecordChild0, // #0 = $op1
/*3478*/      OPC_MoveChild0,
/*3479*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3481*/      OPC_MoveParent,
/*3482*/      OPC_RecordChild1, // #1 = $op2
/*3483*/      OPC_MoveChild1,
/*3484*/      OPC_Scope, 16, /*->3502*/ // 2 children in Scope
/*3486*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3489*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*3491*/        OPC_MoveParent,
/*3492*/        OPC_EmitConvertToTarget, 1,
/*3494*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_alu_i__opc_addi__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3502*/      /*Scope*/ 11, /*->3514*/
/*3503*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3505*/        OPC_MoveParent,
/*3506*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_add__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_add__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3514*/      0, /*End of Scope*/
/*3515*/    /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3556
/*3518*/      OPC_RecordChild0, // #0 = $op1
/*3519*/      OPC_MoveChild0,
/*3520*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3522*/      OPC_MoveParent,
/*3523*/      OPC_RecordChild1, // #1 = $op2
/*3524*/      OPC_MoveChild1,
/*3525*/      OPC_Scope, 16, /*->3543*/ // 2 children in Scope
/*3527*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3530*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*3532*/        OPC_MoveParent,
/*3533*/        OPC_EmitConvertToTarget, 1,
/*3535*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_alu_i__opc_andi__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3543*/      /*Scope*/ 11, /*->3555*/
/*3544*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3546*/        OPC_MoveParent,
/*3547*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_and__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_and__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3555*/      0, /*End of Scope*/
/*3556*/    /*SwitchOpcode*/ 38, TARGET_VAL(ISD::OR),// ->3597
/*3559*/      OPC_RecordChild0, // #0 = $op1
/*3560*/      OPC_MoveChild0,
/*3561*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3563*/      OPC_MoveParent,
/*3564*/      OPC_RecordChild1, // #1 = $op2
/*3565*/      OPC_MoveChild1,
/*3566*/      OPC_Scope, 16, /*->3584*/ // 2 children in Scope
/*3568*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3571*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*3573*/        OPC_MoveParent,
/*3574*/        OPC_EmitConvertToTarget, 1,
/*3576*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (or:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                // Dst: (i_alu_i__opc_ori__xpr__xpr__simm12__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3584*/      /*Scope*/ 11, /*->3596*/
/*3585*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3587*/        OPC_MoveParent,
/*3588*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_or__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_or__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3596*/      0, /*End of Scope*/
/*3597*/    /*SwitchOpcode*/ 38, TARGET_VAL(ISD::SHL),// ->3638
/*3600*/      OPC_RecordChild0, // #0 = $op1
/*3601*/      OPC_MoveChild0,
/*3602*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3604*/      OPC_MoveParent,
/*3605*/      OPC_RecordChild1, // #1 = $op2
/*3606*/      OPC_MoveChild1,
/*3607*/      OPC_Scope, 16, /*->3625*/ // 2 children in Scope
/*3609*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3612*/        OPC_CheckPredicate, 15, // Predicate_zext5To32imm
/*3614*/        OPC_MoveParent,
/*3615*/        OPC_EmitConvertToTarget, 1,
/*3617*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_slli__xpr__xpr__shamt__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (shl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                // Dst: (i_shift__opc_slli__xpr__xpr__shamt__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3625*/      /*Scope*/ 11, /*->3637*/
/*3626*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3628*/        OPC_MoveParent,
/*3629*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sll__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_sll__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3637*/      0, /*End of Scope*/
/*3638*/    /*SwitchOpcode*/ 38, TARGET_VAL(ISD::SRA),// ->3679
/*3641*/      OPC_RecordChild0, // #0 = $op1
/*3642*/      OPC_MoveChild0,
/*3643*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3645*/      OPC_MoveParent,
/*3646*/      OPC_RecordChild1, // #1 = $op2
/*3647*/      OPC_MoveChild1,
/*3648*/      OPC_Scope, 16, /*->3666*/ // 2 children in Scope
/*3650*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3653*/        OPC_CheckPredicate, 15, // Predicate_zext5To32imm
/*3655*/        OPC_MoveParent,
/*3656*/        OPC_EmitConvertToTarget, 1,
/*3658*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_srai__xpr__xpr__shamt__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (sra:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, (imm:i32)<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 8
                // Dst: (i_shift__opc_srai__xpr__xpr__shamt__:i32 xpr:i32:$op1, (imm:i32):$op2)
/*3666*/      /*Scope*/ 11, /*->3678*/
/*3667*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*3669*/        OPC_MoveParent,
/*3670*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sra__xpr__xpr__xpr__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:i32 xpr:i32<<P:Predicate_CheckFI_xpr>>:$op1, xpr:i32<<P:Predicate_CheckFI_xpr>>:$op2) - Complexity = 5
                // Dst: (i_alu__opc_sra__xpr__xpr__xpr__:i32 xpr:i32:$op1, xpr:i32:$op2)
/*3678*/      0, /*End of Scope*/
/*3679*/    /*SwitchOpcode*/ 14, TARGET_VAL(ISD::CALLSEQ_START),// ->3696
/*3682*/      OPC_RecordNode, // #0 = 'callseq_start' chained node
/*3683*/      OPC_RecordChild1, // #1 = $off
/*3684*/      OPC_MoveChild1,
/*3685*/      OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*3688*/      OPC_MoveParent,
/*3689*/      OPC_EmitMergeInputChains1_0,
/*3690*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  1/*#Ops*/, 1, 
              // Src: (callseq_start (timm:i32):$off) - Complexity = 6
              // Dst: (CALLSTART (timm:i32):$off)
/*3696*/    /*SwitchOpcode*/ 59, TARGET_VAL(CodasipISD::GAWrap),// ->3758
/*3699*/      OPC_RecordChild0, // #0 = $op1
/*3700*/      OPC_MoveChild0,
/*3701*/      OPC_SwitchOpcode /*5 cases */, 8, TARGET_VAL(ISD::TargetGlobalAddress),// ->3713
/*3705*/        OPC_MoveParent,
/*3706*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:i32 (tglobaladdr:i32):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:i32 (tglobaladdr:i32):$op1)
/*3713*/      /*SwitchOpcode*/ 8, TARGET_VAL(ISD::TargetExternalSymbol),// ->3724
/*3716*/        OPC_MoveParent,
/*3717*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:i32 (texternalsym:i32):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:i32 (texternalsym:i32):$op1)
/*3724*/      /*SwitchOpcode*/ 8, TARGET_VAL(ISD::TargetBlockAddress),// ->3735
/*3727*/        OPC_MoveParent,
/*3728*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:i32 (tblockaddress:i32):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:i32 (tblockaddress:i32):$op1)
/*3735*/      /*SwitchOpcode*/ 8, TARGET_VAL(ISD::TargetJumpTable),// ->3746
/*3738*/        OPC_MoveParent,
/*3739*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:i32 (tjumptable:i32):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:i32 (tjumptable:i32):$op1)
/*3746*/      /*SwitchOpcode*/ 8, TARGET_VAL(ISD::TargetConstantPool),// ->3757
/*3749*/        OPC_MoveParent,
/*3750*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:i32 (tconstpool:i32):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:i32 (tconstpool:i32):$op1)
/*3757*/      0, // EndSwitchOpcode
/*3758*/    /*SwitchOpcode*/ 50|128,2/*306*/, TARGET_VAL(ISD::Constant),// ->4068
/*3762*/      OPC_Scope, 65|128,1/*193*/, /*->3958*/ // 4 children in Scope
/*3765*/        OPC_CheckInteger, 0, 
/*3767*/        OPC_Scope, 6, /*->3775*/ // 27 children in Scope
/*3769*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_add__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_add__xpr__x_0__x_0__:i32)
/*3775*/        /*Scope*/ 6, /*->3782*/
/*3776*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_and__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_and__xpr__x_0__x_0__:i32)
/*3782*/        /*Scope*/ 6, /*->3789*/
/*3783*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_and__xpr__x_0__xpr__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_and__xpr__x_0__xpr__:i32)
/*3789*/        /*Scope*/ 6, /*->3796*/
/*3790*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_and__xpr__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_and__xpr__xpr__x_0__:i32)
/*3796*/        /*Scope*/ 6, /*->3803*/
/*3797*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_or__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_or__xpr__x_0__x_0__:i32)
/*3803*/        /*Scope*/ 6, /*->3810*/
/*3804*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sll__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sll__xpr__x_0__x_0__:i32)
/*3810*/        /*Scope*/ 6, /*->3817*/
/*3811*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sll__xpr__x_0__xpr__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sll__xpr__x_0__xpr__:i32)
/*3817*/        /*Scope*/ 6, /*->3824*/
/*3818*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_slt__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_slt__xpr__x_0__x_0__:i32)
/*3824*/        /*Scope*/ 6, /*->3831*/
/*3825*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sltu__xpr__x_0__x_0__:i32)
/*3831*/        /*Scope*/ 6, /*->3838*/
/*3832*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sltu__xpr__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sltu__xpr__xpr__x_0__:i32)
/*3838*/        /*Scope*/ 6, /*->3845*/
/*3839*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sra__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sra__xpr__x_0__x_0__:i32)
/*3845*/        /*Scope*/ 6, /*->3852*/
/*3846*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sra__xpr__x_0__xpr__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sra__xpr__x_0__xpr__:i32)
/*3852*/        /*Scope*/ 6, /*->3859*/
/*3853*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_srl__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_srl__xpr__x_0__x_0__:i32)
/*3859*/        /*Scope*/ 6, /*->3866*/
/*3860*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_srl__xpr__x_0__xpr__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_srl__xpr__x_0__xpr__:i32)
/*3866*/        /*Scope*/ 6, /*->3873*/
/*3867*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_sub__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_sub__xpr__x_0__x_0__:i32)
/*3873*/        /*Scope*/ 6, /*->3880*/
/*3874*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu__opc_xor__xpr__x_0__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu__opc_xor__xpr__x_0__x_0__:i32)
/*3880*/        /*Scope*/ 6, /*->3887*/
/*3881*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_andi__xpr__x_0__simm12__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu_i__opc_andi__xpr__x_0__simm12__:i32)
/*3887*/        /*Scope*/ 6, /*->3894*/
/*3888*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__:i32)
/*3894*/        /*Scope*/ 6, /*->3901*/
/*3895*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__:i32)
/*3901*/        /*Scope*/ 6, /*->3908*/
/*3902*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_mv_alias__xpr__x_0__:i32)
/*3908*/        /*Scope*/ 6, /*->3915*/
/*3909*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_neg_alias__xpr__x_0__:i32)
/*3915*/        /*Scope*/ 6, /*->3922*/
/*3916*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_sgtz_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_sgtz_alias__xpr__x_0__:i32)
/*3922*/        /*Scope*/ 6, /*->3929*/
/*3923*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_slli__xpr__x_0__shamt__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_shift__opc_slli__xpr__x_0__shamt__:i32)
/*3929*/        /*Scope*/ 6, /*->3936*/
/*3930*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_srai__xpr__x_0__shamt__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_shift__opc_srai__xpr__x_0__shamt__:i32)
/*3936*/        /*Scope*/ 6, /*->3943*/
/*3937*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_shift__opc_srli__xpr__x_0__shamt__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_shift__opc_srli__xpr__x_0__shamt__:i32)
/*3943*/        /*Scope*/ 6, /*->3950*/
/*3944*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_sltz_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_sltz_alias__xpr__x_0__:i32)
/*3950*/        /*Scope*/ 6, /*->3957*/
/*3951*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:i32 - Complexity = 5
                  // Dst: (i_snez_alias__xpr__x_0__:i32)
/*3957*/        0, /*End of Scope*/
/*3958*/      /*Scope*/ 25, /*->3984*/
/*3959*/        OPC_CheckInteger, 1, 
/*3961*/        OPC_Scope, 6, /*->3969*/ // 3 children in Scope
/*3963*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:i32 - Complexity = 5
                  // Dst: (i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__:i32)
/*3969*/        /*Scope*/ 6, /*->3976*/
/*3970*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:i32 - Complexity = 5
                  // Dst: (i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__:i32)
/*3976*/        /*Scope*/ 6, /*->3983*/
/*3977*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__xpr__x_0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:i32 - Complexity = 5
                  // Dst: (i_seqz_alias__xpr__x_0__:i32)
/*3983*/        0, /*End of Scope*/
/*3984*/      /*Scope*/ 17, /*->4002*/
/*3985*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3996*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_not_alias__xpr__x_0__), 0,
                    MVT::i32, 0/*#Ops*/, 
                // Src: -1:i32 - Complexity = 5
                // Dst: (i_not_alias__xpr__x_0__:i32)
/*4002*/      /*Scope*/ 64, /*->4067*/
/*4003*/        OPC_RecordNode, // #0 = $op1
/*4004*/        OPC_Scope, 38, /*->4044*/ // 3 children in Scope
/*4006*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*4008*/          OPC_EmitConvertToTarget, 0,
/*4010*/          OPC_Scope, 7, /*->4019*/ // 4 children in Scope
/*4012*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:i32)<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_alu_i__opc_addi__xpr__x_0__simm12__:i32 (imm:i32):$op1)
/*4019*/          /*Scope*/ 7, /*->4027*/
/*4020*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:i32)<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_alu_i__opc_ori__xpr__x_0__simm12__:i32 (imm:i32):$op1)
/*4027*/          /*Scope*/ 7, /*->4035*/
/*4028*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:i32)<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_alu_i__opc_xori__xpr__x_0__simm12__:i32 (imm:i32):$op1)
/*4035*/          /*Scope*/ 7, /*->4043*/
/*4036*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_li_alias__xpr__simm12__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:i32)<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                    // Dst: (i_li_alias__xpr__simm12__:i32 (imm:i32):$op1)
/*4043*/          0, /*End of Scope*/
/*4044*/        /*Scope*/ 11, /*->4056*/
/*4045*/          OPC_CheckPredicate, 17, // Predicate_Trunc12_i32imm
/*4047*/          OPC_EmitConvertToTarget, 0,
/*4049*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_upper_imm__opc_lui__xpr__simm20__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:i32)<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 4
                  // Dst: (i_upper_imm__opc_lui__xpr__simm20__:i32 (imm:i32):$op1)
/*4056*/        /*Scope*/ 9, /*->4066*/
/*4057*/          OPC_EmitConvertToTarget, 0,
/*4059*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:i32):$op1 - Complexity = 3
                  // Dst: (e_movi32__:i32 (imm:i32):$op1)
/*4066*/        0, /*End of Scope*/
/*4067*/      0, /*End of Scope*/
/*4068*/    /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->4086
/*4071*/      OPC_RecordNode, // #0 = 'brind' chained node
/*4072*/      OPC_RecordChild1, // #1 = $op0
/*4073*/      OPC_MoveChild1,
/*4074*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_xpr
/*4076*/      OPC_CheckType, MVT::i32,
/*4078*/      OPC_MoveParent,
/*4079*/      OPC_EmitMergeInputChains1_0,
/*4080*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jr_alias__xpr__), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind xpr:i32<<P:Predicate_CheckFI_xpr>>:$op0) - Complexity = 4
              // Dst: (i_jr_alias__xpr__ xpr:i32:$op0)
/*4086*/    /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->4097
/*4089*/      OPC_RecordNode, // #0 = 'Return' chained node
/*4090*/      OPC_CaptureGlueInput,
/*4091*/      OPC_EmitMergeInputChains1_0,
/*4092*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ret_alias__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 3
              // Dst: (i_ret_alias__)
/*4097*/    /*SwitchOpcode*/ 87, TARGET_VAL(ISD::BR),// ->4187
/*4100*/      OPC_RecordNode, // #0 = 'br' chained node
/*4101*/      OPC_RecordChild1, // #1 = $op0
/*4102*/      OPC_MoveChild1,
/*4103*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*4106*/      OPC_MoveParent,
/*4107*/      OPC_EmitMergeInputChains1_0,
/*4108*/      OPC_Scope, 6, /*->4116*/ // 11 children in Scope
/*4110*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_j_alias__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_j_alias__rel_addr20__ (bb:Other):$op0)
/*4116*/      /*Scope*/ 6, /*->4123*/
/*4117*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__x_0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_jal__opc_jal__x_0__rel_addr20__ (bb:Other):$op0)
/*4123*/      /*Scope*/ 6, /*->4130*/
/*4124*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_beqz_alias__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_beqz_alias__x_0__rel_addr12__ (bb:Other):$op0)
/*4130*/      /*Scope*/ 6, /*->4137*/
/*4131*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_bgez_alias__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_bgez_alias__x_0__rel_addr12__ (bb:Other):$op0)
/*4137*/      /*Scope*/ 6, /*->4144*/
/*4138*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ble_alias__x_0__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_ble_alias__x_0__x_0__rel_addr12__ (bb:Other):$op0)
/*4144*/      /*Scope*/ 6, /*->4151*/
/*4145*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_blez_alias__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_blez_alias__x_0__rel_addr12__ (bb:Other):$op0)
/*4151*/      /*Scope*/ 6, /*->4158*/
/*4152*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_branch__opc_beq__x_0__x_0__rel_addr12__ (bb:Other):$op0)
/*4158*/      /*Scope*/ 6, /*->4165*/
/*4159*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_branch__opc_bge__x_0__x_0__rel_addr12__ (bb:Other):$op0)
/*4165*/      /*Scope*/ 6, /*->4172*/
/*4166*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_branch__opc_bgeu__x_0__x_0__rel_addr12__ (bb:Other):$op0)
/*4172*/      /*Scope*/ 6, /*->4179*/
/*4173*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_branch__opc_bgeu__xpr__x_0__rel_addr12__ (bb:Other):$op0)
/*4179*/      /*Scope*/ 6, /*->4186*/
/*4180*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:Other):$op0) - Complexity = 3
                // Dst: (i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__ (bb:Other):$op0)
/*4186*/      0, /*End of Scope*/
/*4187*/    0, // EndSwitchOpcode
    0
  }; // Total Array size is 4189 bytes

  // Opcode Histogram:
  // #OPC_Scope                          = 59
  // #OPC_RecordNode                     = 11
  // #OPC_RecordChild                    = 129
  // #OPC_RecordMemRef                   = 2
  // #OPC_CaptureGlueInput               = 4
  // #OPC_MoveChild                      = 151
  // #OPC_MoveParent                     = 283
  // #OPC_CheckSame                      = 0
  // #OPC_CheckChildSame                 = 0
  // #OPC_CheckPatternPredicate          = 0
  // #OPC_CheckPredicate                 = 235
  // #OPC_CheckOpcode                    = 80
  // #OPC_SwitchOpcode                   = 4
  // #OPC_CheckType                      = 49
  // #OPC_SwitchType                     = 0
  // #OPC_CheckChildType                 = 6
  // #OPC_CheckInteger                   = 3
  // #OPC_CheckChildInteger              = 12
  // #OPC_CheckCondCode                  = 71
  // #OPC_CheckValueType                 = 0
  // #OPC_CheckComplexPat                = 0
  // #OPC_CheckAndImm                    = 0
  // #OPC_CheckOrImm                     = 0
  // #OPC_CheckFoldableChainNode         = 0
  // #OPC_EmitInteger                    = 4
  // #OPC_EmitStringInteger              = 0
  // #OPC_EmitRegister                   = 0
  // #OPC_EmitConvertToTarget            = 54
  // #OPC_EmitMergeInputChains           = 98
  // #OPC_EmitCopyToReg                  = 1
  // #OPC_EmitNode                       = 16
  // #OPC_EmitNodeXForm                  = 0
  // #OPC_CompleteMatch                  = 0
  // #OPC_MorphNodeTo                    = 242

  #undef TARGET_VAL
  SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
  return nullptr;
}
bool CheckNodePredicate(SDNode *Node,
                        unsigned PredNo) const override {
  switch (PredNo) {
  default: llvm_unreachable("Invalid predicate in table?");
  case 0: { 
    // Predicate_CheckFI_xpr
    SDNode *N = Node;
return CheckFI(N, Codasip::xprRegClassID);
  }
  case 1: { 
    // Predicate_sext12To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,12,1,0);
  }
  case 2: { 
    // Predicate_unindexedstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 3: { 
    // Predicate_store
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 4: { 
    // Predicate_store_a1_s0
    // Predicate_truncstorei8_a1_s0
    // Predicate_truncstorei16_a1_s0
    // Predicate_sextloadi8_a1_s0
    // Predicate_extloadi8_a1_s0
    // Predicate_zextloadi8_a1_s0
    // Predicate_sextloadi16_a1_s0
    // Predicate_extloadi16_a1_s0
    // Predicate_zextloadi16_a1_s0
    // Predicate_load_a1_s0
    SDNode *N = Node;
return CheckLoadStore(cast<MemSDNode>(N),1,0);
  }
  case 5: { 
    // Predicate_truncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 6: { 
    // Predicate_truncstorei8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 7: { 
    // Predicate_truncstorei16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 8: { 
    // Predicate_unindexedload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 9: { 
    // Predicate_sextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::SEXTLOAD;

  }
  case 10: { 
    // Predicate_sextloadi8
    // Predicate_extloadi8
    // Predicate_zextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 11: { 
    // Predicate_extload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::EXTLOAD;

  }
  case 12: { 
    // Predicate_zextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::ZEXTLOAD;

  }
  case 13: { 
    // Predicate_sextloadi16
    // Predicate_extloadi16
    // Predicate_zextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 14: { 
    // Predicate_load
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::NON_EXTLOAD;

  }
  case 15: { 
    // Predicate_zext5To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,5,0,0);
  }
  case 16: { 
    // Predicate_NotFI_rf_xpr_1
    SDNode *N = Node;
return !FrameIndexSDNode::classof(N);
  }
  case 17: { 
    // Predicate_Trunc12_i32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,32,0,12);
  }
  }
}

