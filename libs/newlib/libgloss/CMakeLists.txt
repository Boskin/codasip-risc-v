#*******************************************************************************
#*      "Copyright (C) 2014, Codasip s.r.o., All Rights Reserved"              *
#*******************************************************************************

include_directories(
    "."
)

add_library(startup
    crt0.s
)

add_library(sim
    sbrk.c
    syscalls.c
)

install(TARGETS sim ARCHIVE DESTINATION ${INSTALL_DIR_LIB})
