//********************************************************
// Copyright (C) 2014, Codasip s.r.o., All Rights Reserved *
//********************************************************

// Library of detections and emulations.

// NOTES:
// LLVM uses (xor x,-1) for BITWISE negation.
// For logical negation, perform (xor cmp,1), where "cmp" is one of the standard cmp operations.
// (CODAL is an extension of C and thus every cmp operation sets the LSB on 1 or 0 and others on 0)
// (Exception is i1, where 1 is noted as -1 -> the system takes care of this however)

// brcond patterns
(brcond (seteq reg:0, op:1), bb:2):
 (brcond (seteq (xor :0, :1), 0), :2) |
 (brcond (setueq :0[flt], :1), :2) | // should work in most cases
 (cmp :0, :1), (brcond zf, bb:2) ; // ZF=1

(brcond (setne reg:0, op:1), bb:2):
 (brcond (setne (xor :0, :1), 0), :2) |
 (brcond (setune :0[flt], :1), :2) | // should work in most cases
 (brcond (xor (seteq :0, :1), 1), :2) |
 (brcond (xor (setoeq :0[flt], :1), 1), :2) |
 (cmp :0, :1), (brcond (xor zf, 1), bb:2) ; // ZF=0

(brcond (setge reg:0, op:1), bb:2):
 (brcond (setle :1, :0), :2) |
 (brcond (setne (setge :0, :1), 0), :2) |
 (brcond (seteq (setlt :0, :1), 0), :2) |
 (brcond (setule :1, :0[flt]), :2)      |
 (cmp :0, :1), (brcond (xor (xor sf, of), -1), :2) ; // SF=OF 

(brcond (setgt reg:0, op:1), bb:2):
 (brcond (setlt :1, :0), :2) |
 (brcond (setne (setgt :0, :1), 0), :2) |
 (brcond (seteq (setle :0, :1), 0), :2) |
 (brcond (setne (setlt :1, :0), 0), :2) |
 (brcond (setult :1, :0[flt]), :2)      |
 (cmp :0, :1), (brcond (xor (or zf, (xor sf, of)), 1), :2) ; // ZF=0 and SF=OF

(brcond (setle reg:0, op:1), bb:2):             // br(a<=b)
 (brcond (setge :1, :0), :2) |                  // br(b>=a)
 (brcond (setne (setle :0, :1), 0), :2) |       // br(a<=b!=0)
 (brcond (seteq (setgt :0, :1), 0), :2) |       // br(a>b==0)
 (brcond (seteq (setlt :1, :0), 0), :2) |       // br(b<a==0)
 (brcond (setule :0[flt], :1), :2) |
 (cmp :0, :1), (brcond (or zf, (xor sf, of)), :2) ; // ZF=1 or SF!=OF

(brcond (setlt reg:0, op:1), bb:2):
 (brcond (setgt :1, :0), :2) |
 (brcond (setne (setlt :0, :1), 0), :2) |
 (brcond (seteq (setge :0, :1), 0), :2) |
 (brcond (setult :0[flt], :1), :2) |
 (cmp :0, :1), (brcond (xor sf, of), :2) ; // SF != OF

(brcond (setuge reg:0, op:1), bb:2):
 (brcond (setule :1, :0), :2) |
 (brcond (seteq (setult :0[int], :1), 0), :2) |
 (cmp :0, :1), (brcond (xor cf, 1), :2) ; // JAE ~ CF=0

(brcond (setugt reg:0, op:1), bb:2):
 (brcond (setult :1, :0), :2) |
 (brcond (setne (setult :1, :0), 0), :2) |
 (cmp :0, :1), (brcond (and (xor cf, -1), (xor zf, -1)), :2) |
 (cmp :0, :1), (brcond (xor (or cf, zf), -1), :2) ; // JA ~ CF=0 and ZF=0

(brcond (setule reg:0, op:1), bb:2):
 (brcond (seteq (setult :1, :0[int]), 0), :2) |
 (cmp :0, :1), (brcond (or cf, zf), :2) ; // JBE ~ CF=1 or ZF=1

(brcond (setult reg:0, op:1), bb:2):
 (brcond (setne (setult :0, :1), 0), :2) |
 (cmp :0, :1), (brcond cf, :2) ; // JB ~ CF=1

(brcond reg:0, bb:1):
 (brcond (setne :0, 0), :1) |
 (cmp :0, 0), (brcond (xor zf, -1), :1) ;

// select patterns
(select (seteq reg:0, op:1), op:2, op:3):
 (select (seteq (xor :0, :1), 0), :2, :3)  |
 (select (seteq (setne :0, :1), 0), :2, :3) |
 (select (setueq :0[flt], :1), :2, :3)      |
 (cmp :0, :1), (brcond zf, bb_skip), (phi :2, :3) |
 (brcond (seteq :0, :1), bb_skip), (phi :2, :3) ;

(select (setne reg:0, op:1), op:2, op:3):
 (select (setne (xor :0, :1), 0), :2, :3) |
 (select (seteq (seteq :0, :1), 0), :2, :3) |
 (select (xor (setoeq :0[flt], :1), 1), :2, :3) |
 (cmp :0, :1), (brcond (xor zf, 1), bb_skip), (phi :2, :3) |
 (brcond (setne :0, :1), bb_skip), (phi :2, :3) ;

(select (setge reg:0, op:1), op:2, op:3):       // (a>=b) c:d
 (select (seteq (setlt :0, :1), 0), :2, :3) |   // ((a<b)==0) c:d
 (select (xor (setlt :0, :1), 1), :2, :3)  |
 (select (setule :1, :0[flt]), :2, :3)   |
 (cmp :0, :1), (brcond (xor (xor sf, of), -1), bb_skip), (phi :2, :3) |
 (brcond (setge :0, :1), bb_skip), (phi :2, :3) ;

(select (setgt reg:0, op:1), op:2, op:3):       // (a>b) c:d
 (select (setne (setlt :1, :0), 0), :2, :3) |   // ((b<a)!=0) c:d
 (select (xor (setle :0, :1), 1), :2, :3)  |
 (select (setult :1, :0[flt]), :2, :3)  |
 (cmp :0, :1), (brcond (xor (or zf, (xor sf, of)), 1), bb_skip), (phi :2, :3) |
 (brcond (setgt :0, :1), bb_skip), (phi :2, :3) ;

(select (setle reg:0, op:1), op:2, op:3):
 (select (seteq (setlt :1, :0), 0), :2, :3) |
 (select (setule :0[flt], :1), :2, :3) |
 (cmp :0, :1), (brcond (or zf, (xor sf, of)), bb_skip), (phi :2, :3) |
 (brcond (setle :0, :1), bb_skip), (phi :2, :3) ;
 
(select (setlt reg:0, op:1), op:2, op:3):
 (select (setne (setlt :0, :1), 0), :2, :3) |
 (select (setult :0[flt], :1), :2, :3) |
 (cmp :0, :1), (brcond (xor sf, of), bb_skip), (phi :2, :3) |
 (brcond (setlt :0, :1), bb_skip), (phi :2, :3) ;

(select (setuge reg:0, op:1), op:2, op:3):
 (select (seteq (setult :0[int], :1), 0), :2, :3) |
 (select (xor (setult :0[int], :1), 1), :2, :3)  |
 (cmp :0, :1), (brcond (xor cf, -1), bb_skip), (phi :2, :3) |
 (brcond (setuge :0, :1), bb_skip), (phi :2, :3) ;

(select (setugt reg:0, op:1), op:2, op:3):
 (select (setne (setult :1, :0), 0), :2, :3) |       
 (select (xor (setule :0[int], :1), 1), :2, :3)  |
 (cmp :0, :1), (brcond (and (xor cf, -1), (xor zf, -1)), bb_skip), (phi :2, :3) |
 (cmp :0, :1), (brcond (xor (or cf, zf), -1), bb_skip), (phi :2, :3) |
 (brcond (setugt :0, :1), bb_skip), (phi :2, :3) ;

(select (setule reg:0, op:1), op:2, op:3):
 (select (seteq (setult :1, :0[int]), 0), :2, :3) |
 (cmp :0, :1), (brcond (or cf, zf), bb_skip), (phi :2, :3) |
 (brcond (setule :0, :1), bb_skip), (phi :2, :3) ;

(select (setult reg:0, op:1), op:2, op:3):
 (select (setne (setult :0, :1), 0), :2, :3) |
 (cmp :0, :1), (brcond cf, bb_skip), (phi :2, :3) |
 (brcond (setult :0, :1), bb_skip), (phi :2, :3) ;

(select reg:0, op:1, op:2):
 (select (setne :0, 0), :1, :2) |
 (cmp :0, 0), (brcond (xor zf, -1), bb_skip), (phi :1, :2) |
 (brcond :0, bb_skip), (phi :1, :2) |
 (brcond (setne :0, 0), bb_skip), (phi :1, :2) ;

// setc patterns
// - result must be C conforming (see above)
(seteq reg:0, op:1):
 (seteq (xor :0, :1), 0) |
 (setult (xor :0, :1), 1) |
 (select (setueq :0[flt], :1), 1, 0) |
 (select (seteq :0, :1), 1, 0) |
 (zext (seteq :0, :1)) ;

(setne reg:0, op:1):
 (setne (xor :0, :1), 0) |
 (xor (setult (xor :0, :1), 1), 1) |
 (select (seteq :0, :1), 0, 1) |
 (select (setueq :0[flt], :1), 0, 1) |
 (select (setne :0, :1), 1, 0) |
 (zext (setne :0, :1)) ;

(setge reg:0, op:1):          // (a>=b)
 (seteq (setlt :0, :1), 0) |  // (a<b==0)
 (xor (setlt :0, :1), 1) |    // (!a<b)
 (select (setlt :0, :1), 0, 1) |
 (select (setule :1, :0[flt]), 1, 0) |
 (select (setge :0, :1), 1, 0) |
 (zext (setge :0, :1)) ;

(setgt reg:0, op:1):        // (a>b)
 (setlt :1, :0) |           // (b<a)
 (select (setlt :1, :0), 1, 0) | // (b<a)
 (select (setult :1, :0[flt]), 1, 0) |
 (select (setgt :0, :1), 1, 0) |
 (zext (setgt :0, :1)) ;

(setle reg:0, op:1):          // (a<=b)
 (xor (setlt :1, :0), 1) |    // (!b<a)
 (select (setule :0[flt], :1), 1, 0) |
 (select (setle :0, :1), 1, 0) |
 (zext (setle :0, :1)) ;

(setlt reg:0, op:1):
 (select (setult :0[flt], :1), 1, 0) |
 (select (setlt :0, :1), 1, 0) |
 (zext (setlt :0, :1)) ;

(setuge reg:0, op:1):
 (xor (setult :0[int], :1), 1) |
 (select (setuge :0, :1), 1, 0) | 
 (select (setule :1, :0), 1, 0) |
 (select (xor (setult :0[int], :1), 1), 1, 0) |
 (zext (setuge :0, :1)) ;

(setugt reg:0, op:1):
 (setult :1, :0) |
 (select (setugt :0, :1), 1, 0) |
 (select (setult :1, :0), 1, 0) |
 (select (xor (setule :0[int], :1), 1), 1, 0) |
 (zext (setugt :0, :1)) ;

(setule reg:0, op:1):
 (xor (setult :1, :0[int]), 1) |
 (select (setule :0, :1), 1, 0) |
 (zext (setule :0, :1)) ;

(setult reg:0, op:1):
 (select (setult :0, :1), 1, 0) |
 (zext (setult :0, :1)) ;

// === Some float exclusive operations

// brcond
(brcond (setu reg:0, reg:1), bb:2):
 (brcond (seteq (setu :0, :1), 1), :2) ;

(brcond (seto reg:0, reg:1), bb:2):
 (brcond (xor (setu :0, :1), 1), :2) ;

(brcond (setoeq reg:0, reg:1), bb:2):
 (brcond (seteq (setoeq :0, :1), 1), :2) ;

(brcond (setole reg:0, reg:1), bb:2):
 (brcond (seteq (setole :0, :1), 1), :2) ;

(brcond (setolt reg:0, reg:1), bb:2):
 (brcond (seteq (setolt :0, :1), 1), :2) ;

(brcond (setone reg:0, reg:1), bb:2):
 (brcond (xor (setueq :0, :1), 1), :2) ; //(flip from o to u needed)

(brcond (setoge reg:0, reg:1), bb:2):
 (brcond (xor (setult :0, :1), 1), :2) ;

(brcond (setogt reg:0, reg:1), bb:2):
 (brcond (xor (setule :0, :1), 1), :2) ;

(brcond (setueq reg:0, reg:1), bb:2): ;

(brcond (setune reg:0, reg:1), bb:2):
 (brcond (xor (setoeq :0, :1), 1), :2) ;

// select
(select (setu reg:0, reg:1), op:2, op:3):
 (select (seteq (setu :0, :1), 1), :2, :3) ;

(select (seto reg:0, reg:1), op:2, op:3):
 (select (xor (setu :0, :1), 1), :2, :3) ;

(select (setoeq reg:0, reg:1), op:2, op:3): ;
(select (setole reg:0, reg:1), op:2, op:3): ;
(select (setolt reg:0, reg:1), op:2, op:3): ;

(select (setone reg:0, reg:1), op:2, op:3):
 (select (xor (setueq :0, :1), 1), :2, :3) ;

(select (setoge reg:0, reg:1), op:2, op:3):
 (select (xor (setult :0, :1), 1), :2, :3) ;

(select (setogt reg:0, reg:1), op:2, op:3):
 (select (xor (setule :0, :1), 1), :2, :3) ;

(select (setueq reg:0, reg:1), op:2, op:3): ;
(select (setune reg:0, reg:1), op:2, op:3):
 (select (xor (setoeq :0, :1), 1), :2, :3) ;

// setc
(seto reg:0, reg:1):
 (select (setu :0, :1), 1, 0) |
 (select (xor (setu :0, :1), 1), 1, 0) ;

(setu reg:0, reg:1):
 (select (setu :0, :1), 1, 0) ;

(setoeq reg:0, reg:1):
 (select (setoeq :0, :1), 1, 0) ;

(setole reg:0, reg:1):
 (select (xor (setole :0, :1), 1), 0, 1) |
 (select (setole :0, :1), 1, 0) ;

(setolt reg:0, reg:1):
 (select (xor (setolt :0, :1), 1), 0, 1) |
 (select (setolt :0, :1), 1, 0) ;

(setone reg:0, reg:1):
 (select (xor (setueq :0, :1), 1), 1, 0) |
 (select (setone :0, :1), 1, 0) ;

(setoge reg:0, reg:1):
 (select (xor (setult :0, :1), 1), 1, 0) |
 (select (setoge :0, :1), 1, 0) ;

(setogt reg:0, reg:1):
 (select (xor (setule :0, :1), 1), 1, 0) |
 (select (setogt :0, :1), 1, 0) ;

(setueq reg:0, reg:1):
 (select (setueq :0, :1), 1, 0) ;

(setune reg:0, reg:1):
 (select (xor (setoeq :0, :1), 1), 1, 0) |
 (select (setune :0, :1), 1, 0) ;
