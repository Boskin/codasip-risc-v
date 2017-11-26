/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2017-11-25
 * \author  Codasip (c) C compiler backend generator
 * \version 6.8.2-1.win.7.EVALUATION
 * \brief   Source for compiler backend
 * \project RISC_V5.ia
 * \note          6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd.
 */


#include "CodasipInstructionSemantics.h"
#include "CodasipGenInstrInfo.h"
#include "CodasipGenISelLowering.h"

// turn of optimization on windows, too long function
#ifdef _WIN32
  #pragma optimize("", off)	// disable global optimization, this will increase compilation times 8x-10x
#endif

llvm::SelectionDAG* llvm::GetCodasipPattern(const TargetMachine &TM, MachineFunction &mf, unsigned icode, std::vector<SDValue>& roots)
{
  // hlp for memop
  MachinePointerInfo mpi;
  // resulting dag
  SelectionDAG* dag = new SelectionDAG(TM,CodeGenOpt::None);
  dag->init(mf);
  // entry node
  SDValue entry = dag->getEntryNode();
  // dummy loc
  SDLoc dl;
  // building of nodes for each instruction
  switch (icode)
  {
    case Codasip::i_call_reg_alias__xpr__:
{
dag->setRoot(entry);
break;
}
case Codasip::i_jr_alias__xpr__:
{
SDValue node0x3a2e070 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a38a40 = dag->getNode(ISD::BRIND, dl, MVT::Other, entry, node0x3a2e070);
roots.reserve(1);
roots.push_back(node0x3a38a40);
dag->setRoot(node0x3a38a40);
break;
}
case Codasip::i_ret_alias__:
{
dag->setRoot(entry);
break;
}
case Codasip::i_call_alias__rel_addr20__:
case Codasip::i_call_alias__rel_addr20__ES:
case Codasip::i_call_alias__rel_addr20__BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_j_alias__rel_addr20__:
{
SDValue node0x3a2dfe0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3a38590 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3a2dfe0);
roots.reserve(1);
roots.push_back(node0x3a38590);
dag->setRoot(node0x3a38590);
break;
}
case Codasip::i_jal__opc_jal__x_0__rel_addr20__:
{
SDValue node0x38ef50 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x39ba30 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38ef50);
roots.reserve(1);
roots.push_back(node0x39ba30);
dag->setRoot(node0x39ba30);
break;
}
case Codasip::i_jal__opc_jal__xpr__rel_addr20__:
{
dag->setRoot(entry);
break;
}
case Codasip::i_beqz_alias__x_0__rel_addr12__:
{
SDValue node0x3b2950 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3a1dec0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3b2950);
roots.reserve(1);
roots.push_back(node0x3a1dec0);
dag->setRoot(node0x3a1dec0);
break;
}
case Codasip::i_beqz_alias__xpr__rel_addr12__:
{
SDValue node0x3b29e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3b2a70 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a15fb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a16030 = dag->getSetCC(dl, MVT::i32, node0x3b2a70, node0x3a15fb0, ISD::SETEQ);
SDValue node0x3a1e5b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16030, node0x3b29e0);
roots.reserve(1);
roots.push_back(node0x3a1e5b0);
dag->setRoot(node0x3a1e5b0);
break;
}
case Codasip::i_bgez_alias__x_0__rel_addr12__:
{
SDValue node0x3b2dd0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3a201a0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3b2dd0);
roots.reserve(1);
roots.push_back(node0x3a201a0);
dag->setRoot(node0x3a201a0);
break;
}
case Codasip::i_bgez_alias__xpr__rel_addr12__:
{
SDValue node0x3b2e60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3b2ef0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a168b0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x3a16930 = dag->getSetCC(dl, MVT::i32, node0x3b2ef0, node0x3a168b0, ISD::SETGT);
SDValue node0x3a20890 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16930, node0x3b2e60);
roots.reserve(1);
roots.push_back(node0x3a20890);
dag->setRoot(node0x3a20890);
break;
}
case Codasip::i_bgt_alias__x_0__xpr__rel_addr12__:
{
SDValue node0x3a2d1d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2d260 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a16eb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a16f30 = dag->getSetCC(dl, MVT::i32, node0x3a2d260, node0x3a16eb0, ISD::SETLT);
SDValue node0x3a22480 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16f30, node0x3a2d1d0);
roots.reserve(1);
roots.push_back(node0x3a22480);
dag->setRoot(node0x3a22480);
break;
}
case Codasip::i_bgt_alias__xpr__x_0__rel_addr12__:
{
SDValue node0x3a2d2f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2d380 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2f130 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a2f1b0 = dag->getSetCC(dl, MVT::i32, node0x3a2d380, node0x3a2f130, ISD::SETGT);
SDValue node0x3a22c60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2f1b0, node0x3a2d2f0);
roots.reserve(1);
roots.push_back(node0x3a22c60);
dag->setRoot(node0x3a22c60);
break;
}
case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__:
{
SDValue node0x3a2d410 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2d4a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2d530 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a2f330 = dag->getSetCC(dl, MVT::i32, node0x3a2d4a0, node0x3a2d530, ISD::SETGT);
SDValue node0x3a23440 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2f330, node0x3a2d410);
roots.reserve(1);
roots.push_back(node0x3a23440);
dag->setRoot(node0x3a23440);
break;
}
case Codasip::i_bgt_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2ec40 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2ecd0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2ed60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a49140 = dag->getSetCC(dl, MVT::i32, node0x3a2ecd0, node0x3a2ed60, ISD::SETLT);
SDValue node0x3a4dba0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a49140, node0x3a2ec40);
roots.reserve(1);
roots.push_back(node0x3a4dba0);
dag->setRoot(node0x3a4dba0);
break;
}
case Codasip::i_bgtu_alias__xpr__x_0__rel_addr12__:
{
SDValue node0x3a2da40 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2dad0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2fbb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a2fc30 = dag->getSetCC(dl, MVT::i32, node0x3a2dad0, node0x3a2fbb0, ISD::SETNE);
SDValue node0x3a36100 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2fc30, node0x3a2da40);
roots.reserve(1);
roots.push_back(node0x3a36100);
dag->setRoot(node0x3a36100);
break;
}
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__:
{
SDValue node0x3a2db60 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2dbf0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2dc80 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a2fdb0 = dag->getSetCC(dl, MVT::i32, node0x3a2dbf0, node0x3a2dc80, ISD::SETUGT);
SDValue node0x3a368e0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2fdb0, node0x3a2db60);
roots.reserve(1);
roots.push_back(node0x3a368e0);
dag->setRoot(node0x3a368e0);
break;
}
case Codasip::i_bgtu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2efa0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a54940 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a549d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a49440 = dag->getSetCC(dl, MVT::i32, node0x3a54940, node0x3a549d0, ISD::SETULT);
SDValue node0x3a4eb60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a49440, node0x3a2efa0);
roots.reserve(1);
roots.push_back(node0x3a4eb60);
dag->setRoot(node0x3a4eb60);
break;
}
case Codasip::i_bgtz_alias__xpr__rel_addr12__:
{
SDValue node0x3a2d0b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2d140 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a16cb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a16d30 = dag->getSetCC(dl, MVT::i32, node0x3a2d140, node0x3a16cb0, ISD::SETGT);
SDValue node0x3a21a90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16d30, node0x3a2d0b0);
roots.reserve(1);
roots.push_back(node0x3a21a90);
dag->setRoot(node0x3a21a90);
break;
}
case Codasip::i_ble_alias__x_0__x_0__rel_addr12__:
{
SDValue node0x3a2d5c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3a23b30 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3a2d5c0);
roots.reserve(1);
roots.push_back(node0x3a23b30);
dag->setRoot(node0x3a23b30);
break;
}
case Codasip::i_ble_alias__x_0__xpr__rel_addr12__:
{
SDValue node0x3a2d650 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2d6e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2f630 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x3a2f6b0 = dag->getSetCC(dl, MVT::i32, node0x3a2d6e0, node0x3a2f630, ISD::SETGT);
SDValue node0x3a24310 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2f6b0, node0x3a2d650);
roots.reserve(1);
roots.push_back(node0x3a24310);
dag->setRoot(node0x3a24310);
break;
}
case Codasip::i_ble_alias__xpr__x_0__rel_addr12__:
{
SDValue node0x3a2d770 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2d800 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2f830 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x3a2f8b0 = dag->getSetCC(dl, MVT::i32, node0x3a2d800, node0x3a2f830, ISD::SETLT);
SDValue node0x3a24af0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2f8b0, node0x3a2d770);
roots.reserve(1);
roots.push_back(node0x3a24af0);
dag->setRoot(node0x3a24af0);
break;
}
case Codasip::i_ble_alias__xpr__xpr__rel_addr12__:
{
SDValue node0x3a2d890 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2d920 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2d9b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a2fa30 = dag->getSetCC(dl, MVT::i32, node0x3a2d920, node0x3a2d9b0, ISD::SETLE);
SDValue node0x3a35320 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2fa30, node0x3a2d890);
roots.reserve(1);
roots.push_back(node0x3a35320);
dag->setRoot(node0x3a35320);
break;
}
case Codasip::i_ble_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2edf0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2ee80 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2ef10 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a492c0 = dag->getSetCC(dl, MVT::i32, node0x3a2ee80, node0x3a2ef10, ISD::SETGE);
SDValue node0x3a4e380 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a492c0, node0x3a2edf0);
roots.reserve(1);
roots.push_back(node0x3a4e380);
dag->setRoot(node0x3a4e380);
break;
}
case Codasip::i_bleu_alias__x_0__xpr__rel_addr12__:
{
SDValue node0x3a2dd10 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3a2dda0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2ff30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a2ffb0 = dag->getSetCC(dl, MVT::i32, node0x3a2dda0, node0x3a2ff30, ISD::SETNE);
SDValue node0x3a373c0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a2ffb0, node0x3a2dd10);
roots.reserve(1);
roots.push_back(node0x3a373c0);
dag->setRoot(node0x3a373c0);
break;
}
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__:
{
SDValue node0x3a2de30 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2dec0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2df50 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a30130 = dag->getSetCC(dl, MVT::i32, node0x3a2dec0, node0x3a2df50, ISD::SETULT);
SDValue node0x3a37ea0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a30130, node0x3a2de30);
roots.reserve(1);
roots.push_back(node0x3a37ea0);
dag->setRoot(node0x3a37ea0);
break;
}
case Codasip::i_bleu_alias__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a54a60 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a54af0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a54b80 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a495c0 = dag->getSetCC(dl, MVT::i32, node0x3a54af0, node0x3a54b80, ISD::SETUGT);
SDValue node0x3a4f340 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a495c0, node0x3a54a60);
roots.reserve(1);
roots.push_back(node0x3a4f340);
dag->setRoot(node0x3a4f340);
break;
}
case Codasip::i_blez_alias__x_0__rel_addr12__:
{
SDValue node0x3b2c20 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3a1f4b0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x3b2c20);
roots.reserve(1);
roots.push_back(node0x3a1f4b0);
dag->setRoot(node0x3a1f4b0);
break;
}
case Codasip::i_blez_alias__xpr__rel_addr12__:
{
SDValue node0x3b2cb0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3b2d40 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a16530 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x3a165b0 = dag->getSetCC(dl, MVT::i32, node0x3b2d40, node0x3a16530, ISD::SETLT);
SDValue node0x3a1fba0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a165b0, node0x3b2cb0);
roots.reserve(1);
roots.push_back(node0x3a1fba0);
dag->setRoot(node0x3a1fba0);
break;
}
case Codasip::i_bltz_alias__xpr__rel_addr12__:
{
SDValue node0x3b2f80 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3b3010 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a16ab0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a16b30 = dag->getSetCC(dl, MVT::i32, node0x3b3010, node0x3a16ab0, ISD::SETLT);
SDValue node0x3a21190 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16b30, node0x3b2f80);
roots.reserve(1);
roots.push_back(node0x3a21190);
dag->setRoot(node0x3a21190);
break;
}
case Codasip::i_bnez_alias__xpr__rel_addr12__:
{
SDValue node0x3b2b00 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3b2b90 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a161b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a16230 = dag->getSetCC(dl, MVT::i32, node0x3b2b90, node0x3a161b0, ISD::SETNE);
SDValue node0x3a1eeb0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a16230, node0x3b2b00);
roots.reserve(1);
roots.push_back(node0x3a1eeb0);
dag->setRoot(node0x3a1eeb0);
break;
}
case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__:
{
SDValue node0x350d70 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x37f1d0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x350d70);
roots.reserve(1);
roots.push_back(node0x37f1d0);
dag->setRoot(node0x37f1d0);
break;
}
case Codasip::i_branch__opc_beq__x_0__xpr__rel_addr12__:
{
SDValue node0x350e00 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x350e90 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x375c20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x375ca0 = dag->getSetCC(dl, MVT::i32, node0x350e90, node0x375c20, ISD::SETEQ);
SDValue node0x37fa40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x375ca0, node0x350e00);
roots.reserve(1);
roots.push_back(node0x37fa40);
dag->setRoot(node0x37fa40);
break;
}
case Codasip::i_branch__opc_beq__xpr__x_0__rel_addr12__:
{
SDValue node0x350f20 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x350fb0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x375e20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x375ea0 = dag->getSetCC(dl, MVT::i32, node0x350fb0, node0x375e20, ISD::SETEQ);
SDValue node0x3802b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x375ea0, node0x350f20);
roots.reserve(1);
roots.push_back(node0x3802b0);
dag->setRoot(node0x3802b0);
break;
}
case Codasip::i_branch__opc_beq__xpr__xpr__rel_addr12__:
{
SDValue node0x351040 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3510d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x351160 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x376020 = dag->getSetCC(dl, MVT::i32, node0x3510d0, node0x351160, ISD::SETEQ);
SDValue node0x380b20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376020, node0x351040);
roots.reserve(1);
roots.push_back(node0x380b20);
dag->setRoot(node0x380b20);
break;
}
case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__:
{
SDValue node0x38e6e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x391510 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38e6e0);
roots.reserve(1);
roots.push_back(node0x391510);
dag->setRoot(node0x391510);
break;
}
case Codasip::i_branch__opc_bge__x_0__xpr__rel_addr12__:
{
SDValue node0x38e770 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38e800 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x395e20 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x395ea0 = dag->getSetCC(dl, MVT::i32, node0x38e800, node0x395e20, ISD::SETLT);
SDValue node0x391d80 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x395ea0, node0x38e770);
roots.reserve(1);
roots.push_back(node0x391d80);
dag->setRoot(node0x391d80);
break;
}
case Codasip::i_branch__opc_bge__xpr__x_0__rel_addr12__:
{
SDValue node0x38e890 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38e920 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x396020 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x3960a0 = dag->getSetCC(dl, MVT::i32, node0x38e920, node0x396020, ISD::SETGT);
SDValue node0x3925f0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3960a0, node0x38e890);
roots.reserve(1);
roots.push_back(node0x3925f0);
dag->setRoot(node0x3925f0);
break;
}
case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__:
{
SDValue node0x38e9b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x38ea40 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x38ead0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x396220 = dag->getSetCC(dl, MVT::i32, node0x38ea40, node0x38ead0, ISD::SETGE);
SDValue node0x392e60 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x396220, node0x38e9b0);
roots.reserve(1);
roots.push_back(node0x392e60);
dag->setRoot(node0x392e60);
break;
}
case Codasip::i_branch__opc_bge__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2e8e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2e970 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2ea00 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a48e40 = dag->getSetCC(dl, MVT::i32, node0x3a2e970, node0x3a2ea00, ISD::SETLE);
SDValue node0x3a4cac0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a48e40, node0x3a2e8e0);
roots.reserve(1);
roots.push_back(node0x3a4cac0);
dag->setRoot(node0x3a4cac0);
break;
}
case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__:
{
SDValue node0x38eb60 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3935e0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38eb60);
roots.reserve(1);
roots.push_back(node0x3935e0);
dag->setRoot(node0x3935e0);
break;
}
case Codasip::i_branch__opc_bgeu__x_0__xpr__rel_addr12__:
{
SDValue node0x38ebf0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38ec80 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x396520 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3965a0 = dag->getSetCC(dl, MVT::i32, node0x38ec80, node0x396520, ISD::SETEQ);
SDValue node0x393e50 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3965a0, node0x38ebf0);
roots.reserve(1);
roots.push_back(node0x393e50);
dag->setRoot(node0x393e50);
break;
}
case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__:
{
SDValue node0x38ed10 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x3945d0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38ed10);
roots.reserve(1);
roots.push_back(node0x3945d0);
dag->setRoot(node0x3945d0);
break;
}
case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__:
{
SDValue node0x38eda0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x38ee30 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x38eec0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3968a0 = dag->getSetCC(dl, MVT::i32, node0x38ee30, node0x38eec0, ISD::SETUGE);
SDValue node0x39b280 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3968a0, node0x38eda0);
roots.reserve(1);
roots.push_back(node0x39b280);
dag->setRoot(node0x39b280);
break;
}
case Codasip::i_branch__opc_bgeu__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2ea90 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2eb20 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2ebb0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a48fc0 = dag->getSetCC(dl, MVT::i32, node0x3a2eb20, node0x3a2ebb0, ISD::SETULE);
SDValue node0x3a4d330 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a48fc0, node0x3a2ea90);
roots.reserve(1);
roots.push_back(node0x3a4d330);
dag->setRoot(node0x3a4d330);
break;
}
case Codasip::i_branch__opc_blt__x_0__xpr__rel_addr12__:
{
SDValue node0x38e020 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38e0b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x376720 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3767a0 = dag->getSetCC(dl, MVT::i32, node0x38e0b0, node0x376720, ISD::SETGT);
SDValue node0x38bc40 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3767a0, node0x38e020);
roots.reserve(1);
roots.push_back(node0x38bc40);
dag->setRoot(node0x38bc40);
break;
}
case Codasip::i_branch__opc_blt__xpr__x_0__rel_addr12__:
{
SDValue node0x38e140 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38e1d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x376920 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3769a0 = dag->getSetCC(dl, MVT::i32, node0x38e1d0, node0x376920, ISD::SETLT);
SDValue node0x38c4b0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3769a0, node0x38e140);
roots.reserve(1);
roots.push_back(node0x38c4b0);
dag->setRoot(node0x38c4b0);
break;
}
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__:
{
SDValue node0x38e260 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x38e2f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x38e380 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x376b20 = dag->getSetCC(dl, MVT::i32, node0x38e2f0, node0x38e380, ISD::SETLT);
SDValue node0x38cd20 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376b20, node0x38e260);
roots.reserve(1);
roots.push_back(node0x38cd20);
dag->setRoot(node0x38cd20);
break;
}
case Codasip::i_branch__opc_blt__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2e580 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2e610 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2e6a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a48b40 = dag->getSetCC(dl, MVT::i32, node0x3a2e610, node0x3a2e6a0, ISD::SETGT);
SDValue node0x3a3c100 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a48b40, node0x3a2e580);
roots.reserve(1);
roots.push_back(node0x3a3c100);
dag->setRoot(node0x3a3c100);
break;
}
case Codasip::i_branch__opc_bltu__x_0__xpr__rel_addr12__:
{
SDValue node0x38e410 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x38e4a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x376ca0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x376d20 = dag->getSetCC(dl, MVT::i32, node0x38e4a0, node0x376ca0, ISD::SETNE);
SDValue node0x38d920 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376d20, node0x38e410);
roots.reserve(1);
roots.push_back(node0x38d920);
dag->setRoot(node0x38d920);
break;
}
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__:
{
SDValue node0x38e530 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x38e5c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x38e650 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x376ea0 = dag->getSetCC(dl, MVT::i32, node0x38e5c0, node0x38e650, ISD::SETULT);
SDValue node0x390d90 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376ea0, node0x38e530);
roots.reserve(1);
roots.push_back(node0x390d90);
dag->setRoot(node0x390d90);
break;
}
case Codasip::i_branch__opc_bltu__xpr__xpr__rel_addr12__swappedCmpClone0__:
{
SDValue node0x3a2e730 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3a2e7c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a2e850 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a48cc0 = dag->getSetCC(dl, MVT::i32, node0x3a2e7c0, node0x3a2e850, ISD::SETUGT);
SDValue node0x3a3c970 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3a48cc0, node0x3a2e730);
roots.reserve(1);
roots.push_back(node0x3a3c970);
dag->setRoot(node0x3a3c970);
break;
}
case Codasip::i_branch__opc_bne__x_0__xpr__rel_addr12__:
{
SDValue node0x3511f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x351280 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3761a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x376220 = dag->getSetCC(dl, MVT::i32, node0x351280, node0x3761a0, ISD::SETNE);
SDValue node0x381720 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376220, node0x3511f0);
roots.reserve(1);
roots.push_back(node0x381720);
dag->setRoot(node0x381720);
break;
}
case Codasip::i_branch__opc_bne__xpr__x_0__rel_addr12__:
{
SDValue node0x351310 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::Other);
SDValue node0x3513a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3763a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x376420 = dag->getSetCC(dl, MVT::i32, node0x3513a0, node0x3763a0, ISD::SETNE);
SDValue node0x38a7d0 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x376420, node0x351310);
roots.reserve(1);
roots.push_back(node0x38a7d0);
dag->setRoot(node0x38a7d0);
break;
}
case Codasip::i_branch__opc_bne__xpr__xpr__rel_addr12__:
{
SDValue node0x351430 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::Other);
SDValue node0x3514c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x351550 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3765a0 = dag->getSetCC(dl, MVT::i32, node0x3514c0, node0x351550, ISD::SETNE);
SDValue node0x38b040 = dag->getNode(ISD::BRCOND, dl, MVT::Other, entry, node0x3765a0, node0x351430);
roots.reserve(1);
roots.push_back(node0x38b040);
dag->setRoot(node0x38b040);
break;
}
case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__:
{
SDValue node0x38f070 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::Other);
SDValue node0x39c4b0 = dag->getNode(ISD::BR, dl, MVT::Other, entry, node0x38f070);
roots.reserve(1);
roots.push_back(node0x39c4b0);
dag->setRoot(node0x39c4b0);
break;
}
case Codasip::i_jalr__opc_jalr__xpr__rel_jalr_addr12__x_0__:
{
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_add__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_add__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_add__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_add__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_add__xpr__x_0__x_0__:
{
SDValue node0x336860 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138af00 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x336860, SDValue());
roots.reserve(1);
roots.push_back(node0x138af00);
dag->setRoot(node0x138af00);
break;
}
case Codasip::i_alu__opc_add__xpr__x_0__xpr__:
{
SDValue node0x337460 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x138afa0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x337460, SDValue());
roots.reserve(1);
roots.push_back(node0x138afa0);
dag->setRoot(node0x138afa0);
break;
}
case Codasip::i_alu__opc_add__xpr__xpr__x_0__:
{
SDValue node0x338070 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x138aff0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x338070, SDValue());
roots.reserve(1);
roots.push_back(node0x138aff0);
dag->setRoot(node0x138aff0);
break;
}
case Codasip::i_alu__opc_add__xpr__xpr__xpr__:
{
SDValue node0x339080 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x339110 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3391a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x339080, node0x339110);
SDValue node0x138b040 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3391a0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b040);
dag->setRoot(node0x138b040);
break;
}
case Codasip::i_alu__opc_and__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_and__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_and__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_and__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_and__xpr__x_0__x_0__:
{
SDValue node0x341cf0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b590 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341cf0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b590);
dag->setRoot(node0x138b590);
break;
}
case Codasip::i_alu__opc_and__xpr__x_0__xpr__:
{
SDValue node0x341df0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b5e0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341df0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b5e0);
dag->setRoot(node0x138b5e0);
break;
}
case Codasip::i_alu__opc_and__xpr__xpr__x_0__:
{
SDValue node0x341ef0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b630 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341ef0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b630);
dag->setRoot(node0x138b630);
break;
}
case Codasip::i_alu__opc_and__xpr__xpr__xpr__:
{
SDValue node0x34c6f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34c780 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x34c810 = dag->getNode(ISD::AND, dl, MVT::i32, node0x34c6f0, node0x34c780);
SDValue node0x34b720 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34c810, SDValue());
roots.reserve(1);
roots.push_back(node0x34b720);
dag->setRoot(node0x34b720);
break;
}
case Codasip::i_alu__opc_or__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_or__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_or__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_or__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_or__xpr__x_0__x_0__:
{
SDValue node0x342070 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34b770 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x342070, SDValue());
roots.reserve(1);
roots.push_back(node0x34b770);
dag->setRoot(node0x34b770);
break;
}
case Codasip::i_alu__opc_or__xpr__x_0__xpr__:
{
SDValue node0x34e880 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34b7c0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34e880, SDValue());
roots.reserve(1);
roots.push_back(node0x34b7c0);
dag->setRoot(node0x34b7c0);
break;
}
case Codasip::i_alu__opc_or__xpr__xpr__x_0__:
{
SDValue node0x34e910 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34b810 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34e910, SDValue());
roots.reserve(1);
roots.push_back(node0x34b810);
dag->setRoot(node0x34b810);
break;
}
case Codasip::i_alu__opc_or__xpr__xpr__xpr__:
{
SDValue node0x34f5a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34f660 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x351630 = dag->getNode(ISD::OR, dl, MVT::i32, node0x34f5a0, node0x34f660);
SDValue node0x34b860 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x351630, SDValue());
roots.reserve(1);
roots.push_back(node0x34b860);
dag->setRoot(node0x34b860);
break;
}
case Codasip::i_alu__opc_sll__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sll__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sll__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sll__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sll__xpr__x_0__x_0__:
{
SDValue node0x342570 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34b9f0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x342570, SDValue());
roots.reserve(1);
roots.push_back(node0x34b9f0);
dag->setRoot(node0x34b9f0);
break;
}
case Codasip::i_alu__opc_sll__xpr__x_0__xpr__:
{
SDValue node0x342670 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34ba40 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x342670, SDValue());
roots.reserve(1);
roots.push_back(node0x34ba40);
dag->setRoot(node0x34ba40);
break;
}
case Codasip::i_alu__opc_sll__xpr__xpr__x_0__:
{
SDValue node0x34f930 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34ba90 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34f930, SDValue());
roots.reserve(1);
roots.push_back(node0x34ba90);
dag->setRoot(node0x34ba90);
break;
}
case Codasip::i_alu__opc_sll__xpr__xpr__xpr__:
{
SDValue node0x34f9c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34fa50 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35bf80 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x34f9c0, node0x34fa50);
SDValue node0x34bae0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35bf80, SDValue());
roots.reserve(1);
roots.push_back(node0x34bae0);
dag->setRoot(node0x34bae0);
break;
}
case Codasip::i_alu__opc_slt__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_slt__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_slt__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_slt__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_slt__xpr__x_0__x_0__:
{
SDValue node0x33b190 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b090 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x33b190, SDValue());
roots.reserve(1);
roots.push_back(node0x138b090);
dag->setRoot(node0x138b090);
break;
}
case Codasip::i_alu__opc_slt__xpr__x_0__xpr__:
{
SDValue node0x33bd90 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x33be20 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x33bea0 = dag->getSetCC(dl, MVT::i32, node0x33bd90, node0x33be20, ISD::SETGT);
SDValue node0x138b0e0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x33bea0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b0e0);
dag->setRoot(node0x138b0e0);
break;
}
case Codasip::i_alu__opc_slt__xpr__xpr__x_0__:
{
SDValue node0x33cb10 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x33cba0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x33cc20 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x33cb10, node0x33cba0);
SDValue node0x138b130 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x33cc20, SDValue());
roots.reserve(1);
roots.push_back(node0x138b130);
dag->setRoot(node0x138b130);
break;
}
case Codasip::i_alu__opc_slt__xpr__xpr__xpr__:
{
SDValue node0x340db0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x340e40 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x340ed0 = dag->getSetCC(dl, MVT::i32, node0x340db0, node0x340e40, ISD::SETLT);
SDValue node0x138b180 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x340ed0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b180);
dag->setRoot(node0x138b180);
break;
}
case Codasip::i_alu__opc_slt__xpr__xpr__xpr__swappedCmpClone0__:
{
SDValue node0x3a2e340 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a2e3d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a30ab0 = dag->getSetCC(dl, MVT::i32, node0x3a2e340, node0x3a2e3d0, ISD::SETGT);
SDValue node0x3b9c70 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a30ab0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9c70);
dag->setRoot(node0x3b9c70);
break;
}
case Codasip::i_alu__opc_sltu__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sltu__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sltu__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sltu__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sltu__xpr__x_0__x_0__:
{
SDValue node0x341870 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b360 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341870, SDValue());
roots.reserve(1);
roots.push_back(node0x138b360);
dag->setRoot(node0x138b360);
break;
}
case Codasip::i_alu__opc_sltu__xpr__x_0__xpr__:
{
SDValue node0x347c60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x341970 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3419f0 = dag->getSetCC(dl, MVT::i32, node0x347c60, node0x341970, ISD::SETNE);
SDValue node0x138b400 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3419f0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b400);
dag->setRoot(node0x138b400);
break;
}
case Codasip::i_alu__opc_sltu__xpr__xpr__x_0__:
{
SDValue node0x341af0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x138b4a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341af0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b4a0);
dag->setRoot(node0x138b4a0);
break;
}
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__:
{
SDValue node0x348560 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3485f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x341bf0 = dag->getSetCC(dl, MVT::i32, node0x348560, node0x3485f0, ISD::SETULT);
SDValue node0x138b540 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x341bf0, SDValue());
roots.reserve(1);
roots.push_back(node0x138b540);
dag->setRoot(node0x138b540);
break;
}
case Codasip::i_alu__opc_sltu__xpr__xpr__xpr__swappedCmpClone0__:
{
SDValue node0x3a2e460 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a2e4f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a30c30 = dag->getSetCC(dl, MVT::i32, node0x3a2e460, node0x3a2e4f0, ISD::SETUGT);
SDValue node0x3a41530 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a30c30, SDValue());
roots.reserve(1);
roots.push_back(node0x3a41530);
dag->setRoot(node0x3a41530);
break;
}
case Codasip::i_alu__opc_sra__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sra__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sra__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sra__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sra__xpr__x_0__x_0__:
{
SDValue node0x342f70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34bdb0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x342f70, SDValue());
roots.reserve(1);
roots.push_back(node0x34bdb0);
dag->setRoot(node0x34bdb0);
break;
}
case Codasip::i_alu__opc_sra__xpr__x_0__xpr__:
{
SDValue node0x343070 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34be00 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x343070, SDValue());
roots.reserve(1);
roots.push_back(node0x34be00);
dag->setRoot(node0x34be00);
break;
}
case Codasip::i_alu__opc_sra__xpr__xpr__x_0__:
{
SDValue node0x34fed0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34be50 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34fed0, SDValue());
roots.reserve(1);
roots.push_back(node0x34be50);
dag->setRoot(node0x34be50);
break;
}
case Codasip::i_alu__opc_sra__xpr__xpr__xpr__:
{
SDValue node0x34ff60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34fff0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fa50 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x34ff60, node0x34fff0);
SDValue node0x34bea0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fa50, SDValue());
roots.reserve(1);
roots.push_back(node0x34bea0);
dag->setRoot(node0x34bea0);
break;
}
case Codasip::i_alu__opc_srl__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_srl__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_srl__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_srl__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_srl__xpr__x_0__x_0__:
{
SDValue node0x3428f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34bb30 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3428f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34bb30);
dag->setRoot(node0x34bb30);
break;
}
case Codasip::i_alu__opc_srl__xpr__x_0__xpr__:
{
SDValue node0x3429f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34bb80 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3429f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34bb80);
dag->setRoot(node0x34bb80);
break;
}
case Codasip::i_alu__opc_srl__xpr__xpr__x_0__:
{
SDValue node0x34fae0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34bbd0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34fae0, SDValue());
roots.reserve(1);
roots.push_back(node0x34bbd0);
dag->setRoot(node0x34bbd0);
break;
}
case Codasip::i_alu__opc_srl__xpr__xpr__xpr__:
{
SDValue node0x34fb70 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34fc00 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35f890 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x34fb70, node0x34fc00);
SDValue node0x34bc20 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35f890, SDValue());
roots.reserve(1);
roots.push_back(node0x34bc20);
dag->setRoot(node0x34bc20);
break;
}
case Codasip::i_alu__opc_sub__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sub__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sub__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sub__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_sub__xpr__x_0__x_0__:
{
SDValue node0x342c70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34bc70 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x342c70, SDValue());
roots.reserve(1);
roots.push_back(node0x34bc70);
dag->setRoot(node0x34bc70);
break;
}
case Codasip::i_alu__opc_sub__xpr__x_0__xpr__:
{
SDValue node0x342d70 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34fc90 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x35f900 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x342d70, node0x34fc90);
SDValue node0x34bcc0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35f900, SDValue());
roots.reserve(1);
roots.push_back(node0x34bcc0);
dag->setRoot(node0x34bcc0);
break;
}
case Codasip::i_alu__opc_sub__xpr__xpr__x_0__:
{
SDValue node0x34fd20 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34bd10 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34fd20, SDValue());
roots.reserve(1);
roots.push_back(node0x34bd10);
dag->setRoot(node0x34bd10);
break;
}
case Codasip::i_alu__opc_sub__xpr__xpr__xpr__:
{
SDValue node0x34fdb0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34fe40 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35f970 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x34fdb0, node0x34fe40);
SDValue node0x34bd60 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35f970, SDValue());
roots.reserve(1);
roots.push_back(node0x34bd60);
dag->setRoot(node0x34bd60);
break;
}
case Codasip::i_alu__opc_xor__x_0__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_xor__x_0__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_xor__x_0__xpr__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_xor__x_0__xpr__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu__opc_xor__xpr__x_0__x_0__:
{
SDValue node0x3422f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34b8b0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3422f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34b8b0);
dag->setRoot(node0x34b8b0);
break;
}
case Codasip::i_alu__opc_xor__xpr__x_0__xpr__:
{
SDValue node0x34f6f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34b900 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34f6f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34b900);
dag->setRoot(node0x34b900);
break;
}
case Codasip::i_alu__opc_xor__xpr__xpr__x_0__:
{
SDValue node0x34f780 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34b950 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x34f780, SDValue());
roots.reserve(1);
roots.push_back(node0x34b950);
dag->setRoot(node0x34b950);
break;
}
case Codasip::i_alu__opc_xor__xpr__xpr__xpr__:
{
SDValue node0x34f810 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34f8a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x358ea0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x34f810, node0x34f8a0);
SDValue node0x34b9a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x358ea0, SDValue());
roots.reserve(1);
roots.push_back(node0x34b9a0);
dag->setRoot(node0x34b9a0);
break;
}
case Codasip::i_alu_i__opc_addi__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_addi__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__x_0__simm12__:
{
SDValue node0x3503e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x34c580 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3503e0, SDValue());
roots.reserve(1);
roots.push_back(node0x34c580);
dag->setRoot(node0x34c580);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__:
{
SDValue node0x350470 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350500 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fc10 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x350470, node0x350500);
SDValue node0x34c620 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fc10, SDValue());
roots.reserve(1);
roots.push_back(node0x34c620);
dag->setRoot(node0x34c620);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__SPEC_CLONE_:
{
SDValue node0x3a691b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a41c60 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a691b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3a41c60);
dag->setRoot(node0x3a41c60);
break;
}
case Codasip::i_alu_i__opc_andi__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_andi__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_andi__xpr__x_0__simm12__:
{
SDValue node0x375620 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x37a480 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x375620, SDValue());
roots.reserve(1);
roots.push_back(node0x37a480);
dag->setRoot(node0x37a480);
break;
}
case Codasip::i_alu_i__opc_andi__xpr__xpr__simm12__:
{
SDValue node0x3508f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350980 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fe40 = dag->getNode(ISD::AND, dl, MVT::i32, node0x3508f0, node0x350980);
SDValue node0x37a520 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fe40, SDValue());
roots.reserve(1);
roots.push_back(node0x37a520);
dag->setRoot(node0x37a520);
break;
}
case Codasip::i_alu_i__opc_ori__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_ori__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_ori__xpr__x_0__simm12__:
{
SDValue node0x350a10 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x37a660 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x350a10, SDValue());
roots.reserve(1);
roots.push_back(node0x37a660);
dag->setRoot(node0x37a660);
break;
}
case Codasip::i_alu_i__opc_ori__xpr__xpr__simm12__:
{
SDValue node0x350aa0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350b30 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35feb0 = dag->getNode(ISD::OR, dl, MVT::i32, node0x350aa0, node0x350b30);
SDValue node0x37a700 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35feb0, SDValue());
roots.reserve(1);
roots.push_back(node0x37a700);
dag->setRoot(node0x37a700);
break;
}
case Codasip::i_alu_i__opc_slti__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_slti__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__:
{
SDValue node0x350590 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x375120 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3751a0 = dag->getSetCC(dl, MVT::i32, node0x350590, node0x375120, ISD::SETGT);
SDValue node0x37a0c0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3751a0, SDValue());
roots.reserve(1);
roots.push_back(node0x37a0c0);
dag->setRoot(node0x37a0c0);
break;
}
case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__0__:
{
SDValue node0x3a30e30 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a415d0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a30e30, SDValue());
roots.reserve(1);
roots.push_back(node0x3a415d0);
dag->setRoot(node0x3a415d0);
break;
}
case Codasip::i_alu_i__opc_slti__xpr__x_0__simm12__immSpecClone__imm_1__1__:
{
SDValue node0x3a30d30 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x3a41580 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a30d30, SDValue());
roots.reserve(1);
roots.push_back(node0x3a41580);
dag->setRoot(node0x3a41580);
break;
}
case Codasip::i_alu_i__opc_slti__xpr__xpr__simm12__:
{
SDValue node0x350620 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3506b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3752a0 = dag->getSetCC(dl, MVT::i32, node0x350620, node0x3506b0, ISD::SETLT);
SDValue node0x37a160 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3752a0, SDValue());
roots.reserve(1);
roots.push_back(node0x37a160);
dag->setRoot(node0x37a160);
break;
}
case Codasip::i_alu_i__opc_sltiu__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_sltiu__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__:
{
SDValue node0x350740 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3753a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x375420 = dag->getSetCC(dl, MVT::i32, node0x350740, node0x3753a0, ISD::SETNE);
SDValue node0x37a2a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x375420, SDValue());
roots.reserve(1);
roots.push_back(node0x37a2a0);
dag->setRoot(node0x37a2a0);
break;
}
case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__0__:
{
SDValue node0x3a48940 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a41670 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a48940, SDValue());
roots.reserve(1);
roots.push_back(node0x3a41670);
dag->setRoot(node0x3a41670);
break;
}
case Codasip::i_alu_i__opc_sltiu__xpr__x_0__simm12__immSpecClone__imm_1__1__:
{
SDValue node0x3a30f30 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x3a41620 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a30f30, SDValue());
roots.reserve(1);
roots.push_back(node0x3a41620);
dag->setRoot(node0x3a41620);
break;
}
case Codasip::i_alu_i__opc_sltiu__xpr__xpr__simm12__:
{
SDValue node0x3507d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350860 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x375520 = dag->getSetCC(dl, MVT::i32, node0x3507d0, node0x350860, ISD::SETULT);
SDValue node0x37a340 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x375520, SDValue());
roots.reserve(1);
roots.push_back(node0x37a340);
dag->setRoot(node0x37a340);
break;
}
case Codasip::i_alu_i__opc_xori__x_0__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_xori__x_0__xpr__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_alu_i__opc_xori__xpr__x_0__simm12__:
{
SDValue node0x350bc0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x37a840 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x350bc0, SDValue());
roots.reserve(1);
roots.push_back(node0x37a840);
dag->setRoot(node0x37a840);
break;
}
case Codasip::i_alu_i__opc_xori__xpr__xpr__simm12__:
{
SDValue node0x350c50 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350ce0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35ff20 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x350c50, node0x350ce0);
SDValue node0x37a8e0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35ff20, SDValue());
roots.reserve(1);
roots.push_back(node0x37a8e0);
dag->setRoot(node0x37a8e0);
break;
}
case Codasip::i_bgt_alias__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bgtu_alias__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bgtu_alias__x_0__xpr__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bgtz_alias__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bleu_alias__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bleu_alias__xpr__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bltz_alias__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_bnez_alias__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_blt__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bltu__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bltu__xpr__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bne__x_0__x_0__rel_addr12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_li_alias__x_0__simm12__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_li_alias__xpr__simm12__:
{
SDValue node0x3b24d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b9040 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3b24d0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9040);
dag->setRoot(node0x3b9040);
break;
}
case Codasip::i_load__opc_lb__x_0__simm12__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lb__x_0__simm12__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__x_0__:
{
SDValue node0x38f6a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3837c0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38f6a0, mpi, MVT::i8, 1);
SDValue node0x399eb0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3837c0, SDValue());
roots.reserve(1);
roots.push_back(node0x399eb0);
dag->setRoot(node0x399eb0);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__x_0__AEXT_CLONE_:
{
SDValue node0x38f340 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383860 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x38f340, mpi, MVT::i8, 1);
SDValue node0x3a606c0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383860, SDValue());
roots.reserve(1);
roots.push_back(node0x3a606c0);
dag->setRoot(node0x3a606c0);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__xpr__:
{
SDValue node0x38f730 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x38f7c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x39fbe0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38f730, node0x38f7c0);
SDValue node0x383720 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x39fbe0, mpi, MVT::i8, 1);
SDValue node0x399f50 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383720, SDValue());
roots.reserve(1);
roots.push_back(node0x399f50);
dag->setRoot(node0x399f50);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__xpr__AEXT_CLONE_:
{
SDValue node0x3a563b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a56440 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a57da0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3a563b0, node0x3a56440);
SDValue node0x3a34690 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3a57da0, mpi, MVT::i8, 1);
SDValue node0x3a60760 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a34690, SDValue());
roots.reserve(1);
roots.push_back(node0x3a60760);
dag->setRoot(node0x3a60760);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a692d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383900 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3a692d0, mpi, MVT::i8, 1);
SDValue node0x3a60710 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383900, SDValue());
roots.reserve(1);
roots.push_back(node0x3a60710);
dag->setRoot(node0x3a60710);
break;
}
case Codasip::i_load__opc_lb__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:
{
SDValue node0x3a693f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a345f0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3a693f0, mpi, MVT::i8, 1);
SDValue node0x3a6bc50 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a345f0, SDValue());
roots.reserve(1);
roots.push_back(node0x3a6bc50);
dag->setRoot(node0x3a6bc50);
break;
}
case Codasip::i_load__opc_lbu__x_0__simm12__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lbu__x_0__simm12__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lbu__xpr__simm12__x_0__:
{
SDValue node0x3b1240 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383f40 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3b1240, mpi, MVT::i8, 1);
SDValue node0x39a450 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383f40, SDValue());
roots.reserve(1);
roots.push_back(node0x39a450);
dag->setRoot(node0x39a450);
break;
}
case Codasip::i_load__opc_lbu__xpr__simm12__xpr__:
{
SDValue node0x3b12d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b1360 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a0040 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b12d0, node0x3b1360);
SDValue node0x383ea0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3a0040, mpi, MVT::i8, 1);
SDValue node0x39a4f0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383ea0, SDValue());
roots.reserve(1);
roots.push_back(node0x39a4f0);
dag->setRoot(node0x39a4f0);
break;
}
case Codasip::i_load__opc_lbu__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a697e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x384080 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3a697e0, mpi, MVT::i8, 1);
SDValue node0x3a60b20 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x384080, SDValue());
roots.reserve(1);
roots.push_back(node0x3a60b20);
dag->setRoot(node0x3a60b20);
break;
}
case Codasip::i_load__opc_lh__x_0__simm12__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lh__x_0__simm12__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__x_0__:
{
SDValue node0x38fa00 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383a40 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x38fa00, mpi, MVT::i16, 1);
SDValue node0x39a090 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383a40, SDValue());
roots.reserve(1);
roots.push_back(node0x39a090);
dag->setRoot(node0x39a090);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__x_0__AEXT_CLONE_:
{
SDValue node0x3a564d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383ae0 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3a564d0, mpi, MVT::i16, 1);
SDValue node0x3a60850 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383ae0, SDValue());
roots.reserve(1);
roots.push_back(node0x3a60850);
dag->setRoot(node0x3a60850);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__xpr__:
{
SDValue node0x38fa90 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x38fb20 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x39fda0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38fa90, node0x38fb20);
SDValue node0x3839a0 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x39fda0, mpi, MVT::i16, 1);
SDValue node0x39a130 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3839a0, SDValue());
roots.reserve(1);
roots.push_back(node0x39a130);
dag->setRoot(node0x39a130);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__xpr__AEXT_CLONE_:
{
SDValue node0x3a56680 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a56710 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a57e80 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3a56680, node0x3a56710);
SDValue node0x3a34730 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3a57e80, mpi, MVT::i16, 1);
SDValue node0x3a608f0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a34730, SDValue());
roots.reserve(1);
roots.push_back(node0x3a608f0);
dag->setRoot(node0x3a608f0);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a69510 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383b80 = dag->getExtLoad(ISD::SEXTLOAD, dl, MVT::i32, entry, node0x3a69510, mpi, MVT::i16, 1);
SDValue node0x3a608a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383b80, SDValue());
roots.reserve(1);
roots.push_back(node0x3a608a0);
dag->setRoot(node0x3a608a0);
break;
}
case Codasip::i_load__opc_lh__xpr__simm12__xpr__SPEC_CLONE_AEXT_CLONE_:
{
SDValue node0x3a69630 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a34870 = dag->getExtLoad(ISD::EXTLOAD, dl, MVT::i32, entry, node0x3a69630, mpi, MVT::i16, 1);
SDValue node0x3a6bd40 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a34870, SDValue());
roots.reserve(1);
roots.push_back(node0x3a6bd40);
dag->setRoot(node0x3a6bd40);
break;
}
case Codasip::i_load__opc_lhu__x_0__simm12__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lhu__x_0__simm12__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lhu__xpr__simm12__x_0__:
{
SDValue node0x3b15a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3841c0 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3b15a0, mpi, MVT::i16, 1);
SDValue node0x39a630 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3841c0, SDValue());
roots.reserve(1);
roots.push_back(node0x39a630);
dag->setRoot(node0x39a630);
break;
}
case Codasip::i_load__opc_lhu__xpr__simm12__xpr__:
{
SDValue node0x3b1630 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b16c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a0200 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b1630, node0x3b16c0);
SDValue node0x384120 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3a0200, mpi, MVT::i16, 1);
SDValue node0x39a6d0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x384120, SDValue());
roots.reserve(1);
roots.push_back(node0x39a6d0);
dag->setRoot(node0x39a6d0);
break;
}
case Codasip::i_load__opc_lhu__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a6caa0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x384300 = dag->getExtLoad(ISD::ZEXTLOAD, dl, MVT::i32, entry, node0x3a6caa0, mpi, MVT::i16, 1);
SDValue node0x3a60cb0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x384300, SDValue());
roots.reserve(1);
roots.push_back(node0x3a60cb0);
dag->setRoot(node0x3a60cb0);
break;
}
case Codasip::i_load__opc_lw__x_0__simm12__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lw__x_0__simm12__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__x_0__:
{
SDValue node0x38fd60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383d60 = dag->getLoad(MVT::i32, dl, entry, node0x38fd60, mpi, 1);
SDValue node0x39a270 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383d60, SDValue());
roots.reserve(1);
roots.push_back(node0x39a270);
dag->setRoot(node0x39a270);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__xpr__:
{
SDValue node0x38fdf0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x38fe80 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x39fef0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x38fdf0, node0x38fe80);
SDValue node0x383e00 = dag->getLoad(MVT::i32, dl, entry, node0x39fef0, mpi, 1);
SDValue node0x39a310 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383e00, SDValue());
roots.reserve(1);
roots.push_back(node0x39a310);
dag->setRoot(node0x39a310);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a69750 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x383cc0 = dag->getLoad(MVT::i32, dl, entry, node0x3a69750, mpi, 1);
SDValue node0x3a609e0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x383cc0, SDValue());
roots.reserve(1);
roots.push_back(node0x3a609e0);
dag->setRoot(node0x3a609e0);
break;
}
case Codasip::i_mv_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_mv_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_mv_alias__xpr__x_0__:
{
SDValue node0x397920 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b9090 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x397920, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9090);
dag->setRoot(node0x3b9090);
break;
}
case Codasip::i_mv_alias__xpr__xpr__:
{
SDValue node0x3b2560 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b90e0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3b2560, SDValue());
roots.reserve(1);
roots.push_back(node0x3b90e0);
dag->setRoot(node0x3b90e0);
break;
}
case Codasip::i_neg_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_neg_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_neg_alias__xpr__x_0__:
{
SDValue node0x3a151b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b91d0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a151b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b91d0);
dag->setRoot(node0x3b91d0);
break;
}
case Codasip::i_neg_alias__xpr__xpr__:
{
SDValue node0x3a152b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b2680 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3bed00 = dag->getNode(ISD::SUB, dl, MVT::i32, node0x3a152b0, node0x3b2680);
SDValue node0x3b9220 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3bed00, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9220);
dag->setRoot(node0x3b9220);
break;
}
case Codasip::i_nop_alias__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_not_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_not_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_not_alias__xpr__x_0__:
{
SDValue node0x397aa0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x3b9130 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x397aa0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9130);
dag->setRoot(node0x3b9130);
break;
}
case Codasip::i_not_alias__xpr__xpr__:
{
SDValue node0x3b25f0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a150b0 = dag->getConstant(-1LL, dl, MVT::i32);
SDValue node0x3bead0 = dag->getNode(ISD::XOR, dl, MVT::i32, node0x3b25f0, node0x3a150b0);
SDValue node0x3b9180 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3bead0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9180);
dag->setRoot(node0x3b9180);
break;
}
case Codasip::i_seqz_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_seqz_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_seqz_alias__xpr__x_0__:
{
SDValue node0x3a153b0 = dag->getConstant(1LL, dl, MVT::i32);
SDValue node0x3b9270 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a153b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9270);
dag->setRoot(node0x3b9270);
break;
}
case Codasip::i_seqz_alias__xpr__xpr__:
{
SDValue node0x3b2710 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a154b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a15530 = dag->getSetCC(dl, MVT::i32, node0x3b2710, node0x3a154b0, ISD::SETEQ);
SDValue node0x3b92c0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a15530, SDValue());
roots.reserve(1);
roots.push_back(node0x3b92c0);
dag->setRoot(node0x3b92c0);
break;
}
case Codasip::i_sgtz_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_sgtz_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_sgtz_alias__xpr__x_0__:
{
SDValue node0x3a15ab0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b9450 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a15ab0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9450);
dag->setRoot(node0x3b9450);
break;
}
case Codasip::i_sgtz_alias__xpr__xpr__:
{
SDValue node0x3b28c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a15bb0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a15c30 = dag->getSetCC(dl, MVT::i32, node0x3b28c0, node0x3a15bb0, ISD::SETGT);
SDValue node0x3b94a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a15c30, SDValue());
roots.reserve(1);
roots.push_back(node0x3b94a0);
dag->setRoot(node0x3b94a0);
break;
}
case Codasip::i_shift__opc_slli__x_0__x_0__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_slli__x_0__xpr__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_slli__xpr__x_0__shamt__:
{
SDValue node0x3432f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34bfe0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3432f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34bfe0);
dag->setRoot(node0x34bfe0);
break;
}
case Codasip::i_shift__opc_slli__xpr__xpr__shamt__:
{
SDValue node0x350080 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350110 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fac0 = dag->getNode(ISD::SHL, dl, MVT::i32, node0x350080, node0x350110);
SDValue node0x34c080 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fac0, SDValue());
roots.reserve(1);
roots.push_back(node0x34c080);
dag->setRoot(node0x34c080);
break;
}
case Codasip::i_shift__opc_srai__x_0__x_0__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_srai__x_0__xpr__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_srai__xpr__x_0__shamt__:
{
SDValue node0x3435f0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34c3a0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3435f0, SDValue());
roots.reserve(1);
roots.push_back(node0x34c3a0);
dag->setRoot(node0x34c3a0);
break;
}
case Codasip::i_shift__opc_srai__xpr__xpr__shamt__:
{
SDValue node0x3502c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350350 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fba0 = dag->getNode(ISD::SRA, dl, MVT::i32, node0x3502c0, node0x350350);
SDValue node0x34c440 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fba0, SDValue());
roots.reserve(1);
roots.push_back(node0x34c440);
dag->setRoot(node0x34c440);
break;
}
case Codasip::i_shift__opc_srli__x_0__x_0__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_srli__x_0__xpr__shamt__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_shift__opc_srli__xpr__x_0__shamt__:
{
SDValue node0x343470 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x34c1c0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x343470, SDValue());
roots.reserve(1);
roots.push_back(node0x34c1c0);
dag->setRoot(node0x34c1c0);
break;
}
case Codasip::i_shift__opc_srli__xpr__xpr__shamt__:
{
SDValue node0x3501a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x350230 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x35fb30 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x3501a0, node0x350230);
SDValue node0x34c260 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x35fb30, SDValue());
roots.reserve(1);
roots.push_back(node0x34c260);
dag->setRoot(node0x34c260);
break;
}
case Codasip::i_sltz_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_sltz_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_sltz_alias__xpr__x_0__:
{
SDValue node0x3a158b0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b93b0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a158b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b93b0);
dag->setRoot(node0x3b93b0);
break;
}
case Codasip::i_sltz_alias__xpr__xpr__:
{
SDValue node0x3b2830 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a159b0 = dag->getConstant(31LL, dl, MVT::i32);
SDValue node0x3bf390 = dag->getNode(ISD::SRL, dl, MVT::i32, node0x3b2830, node0x3a159b0);
SDValue node0x3b9400 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3bf390, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9400);
dag->setRoot(node0x3b9400);
break;
}
case Codasip::i_snez_alias__x_0__x_0__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_snez_alias__x_0__xpr__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_snez_alias__xpr__x_0__:
{
SDValue node0x3a15630 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b9310 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a15630, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9310);
dag->setRoot(node0x3b9310);
break;
}
case Codasip::i_snez_alias__xpr__xpr__:
{
SDValue node0x3b27a0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a15730 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a157b0 = dag->getSetCC(dl, MVT::i32, node0x3b27a0, node0x3a15730, ISD::SETNE);
SDValue node0x3b9360 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a157b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9360);
dag->setRoot(node0x3b9360);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__x_0__:
{
SDValue node0x3975a0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x3b1750 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3324a0 = dag->getStore(entry, dl, node0x3975a0, node0x3b1750, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3324a0);
dag->setRoot(node0x3324a0);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__x_0__legalConstClonei32__:
{
SDValue node0x3a49640 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a54c10 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a5f940 = dag->getTruncStore(entry, dl, node0x3a49640, node0x3a54c10, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3a5f940);
dag->setRoot(node0x3a5f940);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__xpr__:
{
SDValue node0x397620 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x3b17e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1870 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a02e0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b17e0, node0x3b1870);
SDValue node0x332500 = dag->getStore(entry, dl, node0x397620, node0x3a02e0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x332500);
dag->setRoot(node0x332500);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3974a0 = dag->getConstant(0LL, dl, MVT::i8);
SDValue node0x3a6cce0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a5f5e0 = dag->getStore(entry, dl, node0x3974a0, node0x3a6cce0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a5f5e0);
dag->setRoot(node0x3a5f5e0);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__:
{
SDValue node0x3a496c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a54ca0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a54d30 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a41480 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3a54ca0, node0x3a54d30);
SDValue node0x3a46d50 = dag->getTruncStore(entry, dl, node0x3a496c0, node0x3a41480, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3a46d50);
dag->setRoot(node0x3a46d50);
break;
}
case Codasip::i_store__opc_sb__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_:
{
SDValue node0x3a49540 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a6d040 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a46e10 = dag->getTruncStore(entry, dl, node0x3a49540, node0x3a6d040, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3a46e10);
dag->setRoot(node0x3a46e10);
break;
}
case Codasip::i_store__opc_sb__xpr__simm12__x_0__:
{
SDValue node0x3b1900 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1990 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a5f640 = dag->getTruncStore(entry, dl, node0x3b1900, node0x3b1990, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3a5f640);
dag->setRoot(node0x3a5f640);
break;
}
case Codasip::i_store__opc_sb__xpr__simm12__xpr__:
{
SDValue node0x3b1a20 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1ab0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b1b40 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a0430 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b1ab0, node0x3b1b40);
SDValue node0x332560 = dag->getTruncStore(entry, dl, node0x3b1a20, node0x3a0430, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x332560);
dag->setRoot(node0x332560);
break;
}
case Codasip::i_store__opc_sb__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a68040 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a6cd70 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3325c0 = dag->getTruncStore(entry, dl, node0x3a68040, node0x3a6cd70, mpi, MVT::i8, 1);
roots.reserve(1);
roots.push_back(node0x3325c0);
dag->setRoot(node0x3325c0);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__x_0__:
{
SDValue node0x3976a0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x3b1bd0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x332620 = dag->getStore(entry, dl, node0x3976a0, node0x3b1bd0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x332620);
dag->setRoot(node0x332620);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__x_0__legalConstClonei32__:
{
SDValue node0x3a49740 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a54dc0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a5f9a0 = dag->getTruncStore(entry, dl, node0x3a49740, node0x3a54dc0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3a5f9a0);
dag->setRoot(node0x3a5f9a0);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__xpr__:
{
SDValue node0x397720 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x3b1c60 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1cf0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a04a0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b1c60, node0x3b1cf0);
SDValue node0x332680 = dag->getStore(entry, dl, node0x397720, node0x3a04a0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x332680);
dag->setRoot(node0x332680);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3971a0 = dag->getConstant(0LL, dl, MVT::i16);
SDValue node0x3a6ce00 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a5f6a0 = dag->getStore(entry, dl, node0x3971a0, node0x3a6ce00, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a5f6a0);
dag->setRoot(node0x3a5f6a0);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__:
{
SDValue node0x3a497c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a54e50 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a54ee0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a57a20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3a54e50, node0x3a54ee0);
SDValue node0x3a46ed0 = dag->getTruncStore(entry, dl, node0x3a497c0, node0x3a57a20, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3a46ed0);
dag->setRoot(node0x3a46ed0);
break;
}
case Codasip::i_store__opc_sh__x_0__simm12__xpr__legalConstClonei32__SPEC_CLONE_:
{
SDValue node0x3a493c0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a6d0d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a46f90 = dag->getTruncStore(entry, dl, node0x3a493c0, node0x3a6d0d0, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3a46f90);
dag->setRoot(node0x3a46f90);
break;
}
case Codasip::i_store__opc_sh__xpr__simm12__x_0__:
{
SDValue node0x3b1d80 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1e10 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a5f700 = dag->getTruncStore(entry, dl, node0x3b1d80, node0x3b1e10, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3a5f700);
dag->setRoot(node0x3a5f700);
break;
}
case Codasip::i_store__opc_sh__xpr__simm12__xpr__:
{
SDValue node0x3b1ea0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b1f30 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b1fc0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3be590 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b1f30, node0x3b1fc0);
SDValue node0x3326e0 = dag->getTruncStore(entry, dl, node0x3b1ea0, node0x3be590, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x3326e0);
dag->setRoot(node0x3326e0);
break;
}
case Codasip::i_store__opc_sh__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a68280 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a6ce90 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x332740 = dag->getTruncStore(entry, dl, node0x3a68280, node0x3a6ce90, mpi, MVT::i16, 1);
roots.reserve(1);
roots.push_back(node0x332740);
dag->setRoot(node0x332740);
break;
}
case Codasip::i_store__opc_sw__x_0__simm12__x_0__:
{
SDValue node0x3977a0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b2050 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3327a0 = dag->getStore(entry, dl, node0x3977a0, node0x3b2050, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3327a0);
dag->setRoot(node0x3327a0);
break;
}
case Codasip::i_store__opc_sw__x_0__simm12__xpr__:
{
SDValue node0x397820 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3b20e0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b2170 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3be600 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b20e0, node0x3b2170);
SDValue node0x332800 = dag->getStore(entry, dl, node0x397820, node0x3be600, mpi, 1);
roots.reserve(1);
roots.push_back(node0x332800);
dag->setRoot(node0x332800);
break;
}
case Codasip::i_store__opc_sw__x_0__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x396ea0 = dag->getConstant(0LL, dl, MVT::i32);
SDValue node0x3a6cf20 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a5f760 = dag->getStore(entry, dl, node0x396ea0, node0x3a6cf20, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a5f760);
dag->setRoot(node0x3a5f760);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__x_0__:
{
SDValue node0x3b2200 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b2290 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x332860 = dag->getStore(entry, dl, node0x3b2200, node0x3b2290, mpi, 1);
roots.reserve(1);
roots.push_back(node0x332860);
dag->setRoot(node0x332860);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__xpr__:
{
SDValue node0x3b2320 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3b23b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b2440 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3be670 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3b23b0, node0x3b2440);
SDValue node0x3328c0 = dag->getStore(entry, dl, node0x3b2320, node0x3be670, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3328c0);
dag->setRoot(node0x3328c0);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__xpr__SPEC_CLONE_:
{
SDValue node0x3a684c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3a6cfb0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3a5f7c0 = dag->getStore(entry, dl, node0x3a684c0, node0x3a6cfb0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a5f7c0);
dag->setRoot(node0x3a5f7c0);
break;
}
case Codasip::i_upper_imm__opc_auipc__x_0__simm20__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_upper_imm__opc_auipc__xpr__simm20__:
{
dag->setRoot(entry);
break;
}
case Codasip::i_upper_imm__opc_auipc__xpr__simm20__SPEC_CLONE_:
{
dag->setRoot(entry);
break;
}
case Codasip::i_upper_imm__opc_lui__x_0__simm20__:
{
roots.reserve(0);
dag->setRoot(entry);
break;
}
case Codasip::i_upper_imm__opc_lui__xpr__simm20__:
{
SDValue node0x38f3d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x399c80 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x38f3d0, SDValue());
roots.reserve(1);
roots.push_back(node0x399c80);
dag->setRoot(node0x399c80);
break;
}
case Codasip::e_movi32__:
case Codasip::e_movi32__GA:
case Codasip::e_movi32__ES:
case Codasip::e_movi32__BA:
case Codasip::e_movi32__JT:
case Codasip::e_movi32__CP:
{
SDValue node0x3a2e2b0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3b9ae0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3a2e2b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3b9ae0);
dag->setRoot(node0x3b9ae0);
break;
}
case Codasip::i_jr_alias__xpr__TAILCALL_CLONE_:
{
dag->setRoot(entry);
break;
}
case Codasip::i_ret_alias__TAILCALL_CLONE_:
{
dag->setRoot(entry);
break;
}
case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_:
case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_ES:
case Codasip::i_j_alias__rel_addr20__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_:
case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_ES:
case Codasip::i_jal__opc_jal__x_0__rel_addr20__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_beqz_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_bgez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_ble_alias__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_blez_alias__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_branch__opc_beq__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_branch__opc_bge__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_branch__opc_bgeu__x_0__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_:
case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_ES:
case Codasip::i_branch__opc_bgeu__xpr__x_0__rel_addr12__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_:
case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_ES:
case Codasip::i_jalr__opc_jalr__x_0__rel_jalr_addr12__x_0__TAILCALL_CLONE_BA:
{
dag->setRoot(entry);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__xpr__0_SUM2REGS_EMUL_:
{
SDValue node0x3addc00 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3addc90 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3adde40 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3aab4d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3addc90, node0x3adde40);
SDValue node0x3a60300 = dag->getStore(entry, dl, node0x3addc00, node0x3aab4d0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a60300);
dag->setRoot(node0x3a60300);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__xpr__1_BIGIMM_EMUL_:
{
SDValue node0x3added0 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3addf60 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3ade110 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a57fd0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3addf60, node0x3ade110);
SDValue node0x3a60240 = dag->getStore(entry, dl, node0x3added0, node0x3a57fd0, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a60240);
dag->setRoot(node0x3a60240);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__xpr__2_SUM2REGS_EMUL_:
{
SDValue node0x3addb70 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3ade470 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3a32f20 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3addb70, node0x3ade470);
SDValue node0x3aa6ba0 = dag->getLoad(MVT::i32, dl, entry, node0x3a32f20, mpi, 1);
SDValue node0x3aac100 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3aa6ba0, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac100);
dag->setRoot(node0x3aac100);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__xpr__3_BIGIMM_EMUL_:
{
SDValue node0x3addff0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3ade080 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3aaa290 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3addff0, node0x3ade080);
SDValue node0x3aa71e0 = dag->getLoad(MVT::i32, dl, entry, node0x3aaa290, mpi, 1);
SDValue node0x3aac0b0 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3aa71e0, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac0b0);
dag->setRoot(node0x3aac0b0);
break;
}
case Codasip::i_store__opc_sw__xpr__simm12__xpr__4_BIGIMM_EMUL_:
{
SDValue node0x3a67e00 = dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32);
SDValue node0x3ade350 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3ade2c0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3aaa060 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3ade350, node0x3ade2c0);
SDValue node0x3a60420 = dag->getStore(entry, dl, node0x3a67e00, node0x3aaa060, mpi, 1);
roots.reserve(1);
roots.push_back(node0x3a60420);
dag->setRoot(node0x3a60420);
break;
}
case Codasip::i_load__opc_lw__xpr__simm12__xpr__5_BIGIMM_EMUL_:
{
SDValue node0x3addd20 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3ade500 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3aa9220 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3addd20, node0x3ade500);
SDValue node0x3aa6f60 = dag->getLoad(MVT::i32, dl, entry, node0x3aa9220, mpi, 1);
SDValue node0x3aac290 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3aa6f60, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac290);
dag->setRoot(node0x3aac290);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__6_BIGIMM_EMUL_:
{
SDValue node0x3ade7d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3adea10 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3ae00f0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3ade7d0, node0x3adea10);
SDValue node0x3aac150 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3ae00f0, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac150);
dag->setRoot(node0x3aac150);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__7_BIGIMM_EMUL_:
{
SDValue node0x3ade860 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3adece0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3ae01d0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3ade860, node0x3adece0);
SDValue node0x3aac240 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3ae01d0, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac240);
dag->setRoot(node0x3aac240);
break;
}
case Codasip::i_alu_i__opc_addi__xpr__xpr__simm12__8_BIGIMM_EMUL_:
{
SDValue node0x3adf040 = dag->getRegister(Codasip::NUM_TARGET_REGS+1, MVT::i32);
SDValue node0x3adf0d0 = dag->getRegister(Codasip::NUM_TARGET_REGS+2, MVT::i32);
SDValue node0x3ae02b0 = dag->getNode(ISD::ADD, dl, MVT::i32, node0x3adf040, node0x3adf0d0);
SDValue node0x3aac330 = dag->getCopyToReg(entry, dl, dag->getRegister(Codasip::NUM_TARGET_REGS+0, MVT::i32), node0x3ae02b0, SDValue());
roots.reserve(1);
roots.push_back(node0x3aac330);
dag->setRoot(node0x3aac330);
break;
}

    default:
      roots.reserve(1);
      roots.push_back(entry);
      dag->setRoot(entry);
  }
  //dag->viewGraph();
  return dag;
}

// turn on optimizations back
#ifdef _WIN32
  #pragma optimize("", on)
#endif
