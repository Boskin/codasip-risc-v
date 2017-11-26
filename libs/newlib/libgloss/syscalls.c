/**
* Copyright (c) 2017 Keith Graham
*
* Permission is granted to anyone to use this software for any purpose,
* including commercial applications, and to alter it and redistribute it
* freely, subject to the following restrictions:
*
* 1. The origin of this software must not be misrepresented; you must not
*    claim that you wrote the original software.
* 2. Altered source versions must be plainly marked as such, and must not be
*    misrepresented as being the original software.
* 3. This notice may not be removed or altered from any source distribution.
*/

#include <_ansi.h>
#include <limits.h>
#include <_syslist.h>
#include <errno.h>
#include <stdint.h>
#include <sys/times.h>
#include <sys/types.h>
#include <string.h>
#include <sys/time.h>
#undef errno
extern int errno;
#include "syscalls.h"

void
abort(void);

#define DO_SYSCALL(addr) \
          __asm__( "mv x6, %0 " : :"r"(addr) :"x6"); \
          __asm__( "syscall" )

#define SET_ERRNO() \
  do { if (par->errno_set) errno = par->errno_value; } while (0)

int write(int file, char *ptr, int len) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int file_desc;
        int ptr;
        int len;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_WRITE;
    par->file_desc = file;
    par->len = len;
    par->ptr = (int) ptr;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

int read(int file, char *ptr, int len) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int file_desc;
        int ptr;
        int len;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_READ;
    par->file_desc = file;
    par->len = len;
    par->ptr = (int) ptr;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

int close(int file) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int file_desc;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_CLOSE;
    par->file_desc = file;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

int mystrlen(const char* s) {
    int count = 0;
    while (s[count] != '\0')
        count++;
    return count;
}

int open(const char *pathname, int flags, ...) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int pathname;
        int length;
        int flags;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_OPEN;
    par->pathname = (int) pathname;
    par->length = (int) strlen(pathname);
    par->flags = flags;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;

}

int lseek(int fildes, int offset, int whence) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int fildes;
        int offset;
        int whence;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_LSEEK;
    par->fildes = fildes;
    par->offset = offset;
    par->whence = whence;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

int fstat(int fildes, struct stat *st) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int file;
        int st;

    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_FSTAT;
    par->file = fildes;
    par->st = (int) st;
    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

int stat(const char *path, struct stat *st) {
    struct params {
        int op;
        int ret;
        int errno_set;
        int errno_value;
        int path;
        int len;
        int st;
    } my_params;

    struct params *par = &my_params;
    par->op = CODASIP_SYSCALL_STAT;
    par->path = (int) path;
    par->len = strlen(path);
    par->st = (int) st;

    int addr = (int) &my_params;

    DO_SYSCALL(addr);
    SET_ERRNO();

    return par->ret;
}

/*
 * from here just stubs
 *
 */
int
_DEFUN (chown, (path, owner, group),
        const char *path  _AND
        uid_t owner _AND
        gid_t group)
{
  struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_CHOWN_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
  return -1;
}

int
_DEFUN (execve, (name, argv, env),
        char  *name  _AND
        char **argv  _AND
        char **env)
{
 struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_EXECVE_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
return -1;
}

int _DEFUN( fork, (), _NOARGS) {
struct params {
    int op;
} my_params;

struct params *par = &my_params;
par->op = CODASIP_SYSCALL_FORK_UNSUPPORTED;

int addr = (int) &my_params;

DO_SYSCALL(addr);

errno = ENOSYS;
return -1;
}

int _DEFUN( getpid, (), _NOARGS) {
    // minimal implementation, for a system without processes
    return 1;
}

int
_DEFUN (gettimeofday, (ptimeval, ptimezone),
        struct timeval  *ptimeval  _AND
        void *ptimezone)
{
    // timezone is ignored, because simulator interface to host system is done through
    // standard C calls and in time.c, the ptimezone argument is always NULL
    if (ptimezone != NULL)
        abort();

    // timeval definition:
    //struct timeval {
    //  time_t      tv_sec; // long -> always used as int
    //  suseconds_t tv_usec; // long -> always used as int
    //};

    if (sizeof(long) != 4) // maybe too strong, but just to be sure
        abort();


    struct params
    {
       int op;
       int ret;
       int errno_set;
       int errno_value;
       int tv_sec;
       int tv_usec;
    }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_GETTIMEOFDAY;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);SET_ERRNO();

  ptimeval->tv_sec = par->tv_sec;
  ptimeval->tv_usec = par->tv_usec;

return par->ret;
}

int _DEFUN( isatty, (file), int file) {
struct params {
int op;
int ret;
int errno_set;
int errno_value;
int file;

} my_params;

struct params *par = &my_params;
par->op = CODASIP_SYSCALL_ISATTY_UNSUPPORTED;
par->file = file;
int addr = (int) &my_params;

DO_SYSCALL(addr);
SET_ERRNO();

return par->ret;

}

int
_DEFUN (kill, (pid, sig),
        int pid  _AND
        int sig)
{
  struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_KILL_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
  return -1;
}

int
_DEFUN (link, (existing, new),
        char *existing _AND
        char *new)
{
  struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_LINK_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
  return -1;
}


int
_DEFUN (readlink, (path, buf, bufsize),
        const char *path _AND
        char *buf _AND
        size_t bufsize)
{
 struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_READLINK_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
  return -1;
}



int
_DEFUN (symlink, (path1, path2),
        const char *path1 _AND
        const char *path2)
{
 struct params
  {
      int op;
  }my_params;

  struct params *par=&my_params;
  par->op = CODASIP_SYSCALL_SYMLINK_UNSUPPORTED;

  int addr = (int)&my_params;

  DO_SYSCALL(addr);

errno = ENOSYS;
return -1;
}

clock_t _DEFUN( times, (buf), struct tms *buf) {
 // clock_t is defined as unsigned long, may overflow
 // simulator may divide the clock counter by some value in order to
 // avoid overflows
 // CLOCKS_PER_SEC is an arbitrary value
struct params {
int op;
int ret;
int errno_set;
int errno_value;
} my_params;

struct params *par = &my_params;
par->op = CODASIP_SYSCALL_TIMES;

int addr = (int) &my_params;

DO_SYSCALL(addr);
SET_ERRNO();

 // currently just one clock value that specifies number of ticks
 // is returned, there is no OS and just one thread is running
buf->tms_cstime = par->ret;
buf->tms_cutime = par->ret;
buf->tms_stime = par->ret;
buf->tms_utime = par->ret;

return par->ret;
}

int _DEFUN( unlink, (name), char *name) {
struct params {
int op;
} my_params;

struct params *par = &my_params;
par->op = CODASIP_SYSCALL_UNLINK_UNSUPPORTED;

int addr = (int) &my_params;

DO_SYSCALL(addr);

errno = ENOSYS;
return -1;
}

int _DEFUN( wait, (status), int *status) {
struct params {
int op;
} my_params;

struct params *par = &my_params;
par->op = CODASIP_SYSCALL_WAIT_UNSUPPORTED;

int addr = (int) &my_params;

DO_SYSCALL(addr);

errno = ENOSYS;
return -1;
}

int fcntl(int fd, int flag, ...) {
errno = ENOSYS;
return -1;
}
