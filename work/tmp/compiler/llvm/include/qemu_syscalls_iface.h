/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2014 Codasip Ltd
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
 *  \date   Sep 5, 2013
 *  \brief  Interface between syscalls_extern library and QEMU
 */

#ifndef SYSCALLS_IFACE_H_
#define SYSCALLS_IFACE_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef int32_t codasip_int;
typedef uint32_t codasip_address_t;


// public interface of syscall library for QEMU and OVP
void syscalls_init(const int bpw);
void codasip_syscall(void* env, const codasip_address_t first_param_address);


// passed here from syscall_wrapper side
// auxiliary methods
codasip_int ReadWord(const codasip_address_t address);
void WriteWord(const codasip_address_t address, const codasip_int value);
char ReadByte(const codasip_address_t address);
void WriteByte(const codasip_address_t address, const char value);
codasip_int GetParam(const codasip_address_t address, const int index);
void SetParam(const codasip_address_t address, const int index, const codasip_int value);
char* GetData(const codasip_address_t ptr, const int len);
void SetData(const codasip_address_t ptr, const int len, const char* data);
uint32_t GetCycleCount(void);

// passed here from QEMU side
extern int32_t QemuReadWord(void* env, const codasip_address_t address);
extern void QemuWriteWord(void* env, const codasip_address_t address, const int32_t value);

extern char QemuReadByte(void* env, const codasip_address_t address);
extern void QemuWriteByte(void* env, const codasip_address_t address, const char value);

extern uint32_t QemuGetCycleCount(void* env);

#ifdef __cplusplus
}
#endif


#endif  // SYSCALLS_IFACE_H_
