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
 *  \author Zdenek Prikryl
 *  \date   Feb 18, 2013
 *  \brief
 */

#ifndef _SYSCALLS_H_
#define _SYSCALLS_H_

#include <map>

#include "qemu_syscalls_iface.h"


#define SET_ERRNO() \
    do {\
        *errno_set = true; \
        *errno_value = errno; \
    } while (0)


namespace codasip {
namespace simulator {


// These 2 typedefs are the same, but should be used
// as named sim_fd for simulation side descriptors and
// host_fd for host side descriptors for better
// clarity.
typedef int sim_fd;
typedef int host_fd;

/**
 * \brief Class handling Codasip SysCalls
 *
 * Currently only for 32-bit little endian architectures and for running on little endian host.
 */
class Syscalls
{
    public:
        /**
         * \brief Constructor, it initialize internal structures
         * \param bpw Bytes per word (needed for syscall parameter indexing)
         */
        Syscalls(const int bpw);

        /**
         * \brief Entry point of the syscall, at the given address information
         *        about the syscall is stored
         * \param firstParamAddress
         */
        void SysCall(const codasip_address_t first_param_address);

        int GetBytesPerWord();
    private:
        enum {
            CODASIP_SYSCALL_READ = 1,
            CODASIP_SYSCALL_WRITE = 2,
            CODASIP_SYSCALL_OPEN = 3,
            CODASIP_SYSCALL_CLOSE = 4,
            CODASIP_SYSCALL_LSEEK = 5,
            CODASIP_SYSCALL_FSTAT = 6,

            CODASIP_SYSCALL_CHOWN_UNSUPPORTED = 7,
            CODASIP_SYSCALL_EXECVE_UNSUPPORTED = 8,
            CODASIP_SYSCALL_FORK_UNSUPPORTED = 9,
            CODASIP_SYSCALL_GETPID_UNSUPPORTED = 10,

            CODASIP_SYSCALL_GETTIMEOFDAY = 11,
            CODASIP_SYSCALL_ISATTY = 12,

            CODASIP_SYSCALL_KILL_UNSUPPORTED = 13,
            CODASIP_SYSCALL_LINK_UNSUPPORTED = 14,
            CODASIP_SYSCALL_READLINK_UNSUPPORTED = 15,

            CODASIP_SYSCALL_STAT = 16,

            CODASIP_SYSCALL_SYMLINK_UNSUPPORTED = 17,

            CODASIP_SYSCALL_TIMES = 18,

            CODASIP_SYSCALL_UNLINK_UNSUPPORTED = 19,
            CODASIP_SYSCALL_WAIT_UNSUPPORTED = 20,

            CODASIP_SYSCALL_PRINTF = 100, // codasip extension

            CODASIP_SYSCALL_UNSUPPORTED = 123
        };


        /// mapping from the simulation descriptors to the host descriptors
        typedef std::map<sim_fd, host_fd > descriptors_t;

        void InitStdFDs();
        host_fd GetHostFD(const sim_fd );
        int TranslateFileOpenFlags(int sim_flags);

        // syscalls
        void syscall_write(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_read(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_close(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_open(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_lseek(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_fstat(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_gettimeofday(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_isatty(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_times(const codasip_address_t ,
                int * ,
                bool * ,
                int * );
        void syscall_stat(const codasip_address_t ,
                int * ,
                bool * ,
                int * );


        void do_fstat(
            host_fd, codasip_address_t, 
            int * ,
            bool * ,
            int * );

        /// mapping from internal simulator descriptors to opened files
        /// TODO: add info about read/write permissions
        descriptors_t m_Descriptors;
        /// bytes per word
        int m_BytesPerWord;

        sim_fd next_sim_fd;
};


}   // namespace simulator
}	// namespace codasip

#endif // _SYSCALLS_H_
