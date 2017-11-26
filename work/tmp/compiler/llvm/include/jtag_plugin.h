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
 *  \author Petr Hons
 *  \date   25. 11. 2016
 *  \brief  Header file for implementation of custom JTAG plugin
 */

#ifndef CODASIP_JTAG_PLUGIN_H_
#define CODASIP_JTAG_PLUGIN_H_

#include <limits.h>   // CHAR_BIT

/// Marks given function to be exported from shared library.
#if !defined(CODASIP_EXPORT) && defined(_MSC_VER)
#    define CODASIP_EXPORT __declspec(dllexport)
#endif
#ifndef CODASIP_EXPORT
#    define CODASIP_EXPORT
#endif

#ifndef BYTE
typedef unsigned char BYTE;
#endif

/// Version of JTAG plugin
#define CODASIP_PLUGIN_VERSION  3

/// Version of RTL plugin
#define CODASIP_RTL_PLUGIN_VERSION  4

/**
 * \brief  Helper function for getting bit at given position from bit buffer
 * \param  data Pointer to buffer holding bit values
 * \param  position Position of bit that should be returned
 * \return Value of bit in \p data at given \p position
 */
inline bool CodasipPluginGetBit(const BYTE* data, const unsigned position)
{
    return (data[position/CHAR_BIT] & (1 << (position%CHAR_BIT)));
}

/// Calculation that converts number of bits into number of bytes needed to store them
#define CODASIP_PLUGIN_BYTES(bits) (bits == 0 ? 0 : ((bits-1) / CHAR_BIT + 1))

/**
 * \brief  Helper function for setting bit at given position in bit buffer
 * \param  data Pointer to buffer holding bit values
 * \param  position Position of bit that should be changed
 * \param  bit New bit value
 */
inline void CodasipPluginStoreBit(BYTE* data, const unsigned position, const bool bit)
{
    const BYTE mask = 1 << (position%CHAR_BIT);
    if(bit)
    {
        data[position/CHAR_BIT] |= mask;
    }
    else
    {
        data[position/CHAR_BIT] &= ~mask;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             JTAG                                               //
////////////////////////////////////////////////////////////////////////////////////////////////////
typedef struct
{
    // Name of flag. Excluding -- or - prefix, e.g. --device=jtag will result in "device" and value
    // "jtag".
    const char* m_Flag;
    // Optional value for the flag. Value is argument after the flag that doesn't start with colon.
    const char* m_Value;
} CodasipPluginArgument;

typedef struct
{
    /// Count of arguments
    int m_Argc;
    /// Array of arguments, every item contains flag and optional value
    CodasipPluginArgument* m_Argv;
} CodasipPluginConfig;
/**
 * \brief  Initializes plugin and creates user data pointer
 * \return NULL when error occurs. When initialization is successful, return plugin specific
 *         pointer, that will be passed to all following calls (userData parameter)
 */
typedef void* (*CodasipJtagPluginCreateFunc)();
/**
 * \brief Function for destroying successfully initialized plugin
 * \param userData User pointer returned by plugin initialization function
 */
typedef void (*CodasipJtagPluginDestroyFunc)(void* userData);
/**
 * \brief  Initializes plugin using configuration file
 * \param  [in] userData Pointer returned from initialization function (\sa CodasipJtagPluginCreateFunc)
 * \param  [in] config Structure containing configuration for the plugin
 * \return Success of initialization. Error message can be retrieved by \ref CodasipJtagPluginErrFunc
 */
typedef bool (*CodasipJtagPluginInitFunc)(void* userData, const CodasipPluginConfig* config);
/**
 * \brief  Sends bits through JTAG interface and return response bits
 * \param  [in]  userData Pointer returned from initialization function
 *               (\sa CodasipJtagPluginCreateFunc)
 * \param  [out] response Buffer for output TDO bits. Has to be big enough to store \p bitsize
 *               bits
 * \param  [in]  data Binary data buffer containing TDI (lsb) and TMS (msb) bits to be sent to
 *               of given \p bitsize that contains bits to be sent
 *               through JTAG interface. Response of the same bitsize will be stored to the same
 *               data buffer.
 * \param  [in]  bitsize Bit-size of \p data for JTAG input bit stream
 * \return True when command execution was successful, false on error, error message
 *         can be retrieved by \ref CodasipJtagPluginErrFunc function
 */
typedef bool (*CodasipJtagPluginDataFunc)(void* userData, BYTE* response, const BYTE* data, const unsigned bitsize);
/**
 * \brief  Function for plugin error message retrieval
 * \param  userData User pointer returned by plugin initialization function (\sa PluginInitFunc).
 *         If initialization fails, NULL will be used to call this this function.
 * \return Error message string
 */
typedef const char* (*CodasipJtagPluginErrFunc)(void* userData);
/**
 * \brief  Function for plugin help message retrieval
 * \return Plugin help function
 */
typedef const char* (*CodasipJtagPluginHelpFunc)(void* userData);

/**
 * \brief Structure describing all mandatory access function and properties of Codasip JTAG plugin
 */
typedef struct
{
    /// Version of compiled plugin interface, use CODASIP_PLUGIN_VERSION define
    unsigned m_Version;
    /// Unique name of plugin
    const char* m_Name;
    /// Create plugin user pointer
    CodasipJtagPluginCreateFunc m_CreateFnc;
    /// Function for plugin destruction
    CodasipJtagPluginDestroyFunc m_DestroyFnc;
    /// Initialization of plugin
    CodasipJtagPluginInitFunc m_InitFnc;
    /// Function for sending JTAG binary data
    CodasipJtagPluginDataFunc m_SendRecvFnc;
    /// Function for error message retrieval
    CodasipJtagPluginErrFunc m_ErrorFnc;
    /// Function for help retrieval
    CodasipJtagPluginHelpFunc m_HelpFnc;
} CodasipJtagPluginInfo;

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus
/**
 * \brief Return pointer to structure describing JTAG plugin
  */
CODASIP_EXPORT const CodasipJtagPluginInfo* RegisterCodasipJTAGPlugin();

#ifdef __cplusplus
}
#endif  // __cplusplus

////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             RTL                                                //
////////////////////////////////////////////////////////////////////////////////////////////////////

/**
 * \brief  Creates plugin
 * \param  [out]    result Must be 0 on success or -1 on error
 * \return Pointer to new plugin instance used as parameter userData to other functions
 */
typedef void* (*CodasipRtlPluginCreateFunc)(int* result);

/**
 * \brief  Destroys plugin and frees it's resources
 * \param  [in]     userData Data returned by plugin create function
 */
typedef void (*CodasipRtlPluginDestroyFunc)(void* userData);

/**
 * \brief  Sets value of specified signal
 * \param  [in]      userData Data returned by plugin create function
 * \param  [in]      name Name of the signal
 * \param  [in]      val New value of the signal
 * \return 0 if operation was successfull or -1 on error
 */
typedef int (*CodasipRtlPluginSetValueFunc)(void* userData, const char* name, const int val);

/**
 * \brief  Gets value of specified signal
 * \param  [in]      userData Data returned by plugin create function
 * \param  [in]      name Name of the signal
 * \return Current value of signal (1 or 0) or -1 on error
 */
typedef int (*CodasipRtlPluginGetValueFunc)(void* userData, const char* name);

/**
 * \brief  Prints message to simulation output/log
 * \param  [in]      userData Data returned by plugin create function
 * \param  [in]      message Message to be printed
 */
typedef void (*CodasipRtlPluginPrintFunc)(void* userData, const char* message);

/**
 * \brief  Processes the change in CLK signal using RTL plugin
 * \return 0 if callback was performed successfully, otherwise 2 if parameter --sim-exit was used
 *         or 1 otherwise
 */
typedef int (*CodasipRtlPluginCallbackFunc)();

/**
 * \brief  Sets error message in RTL plugin
 * \param  [in]     message Error message
 * \return 2 if parameter --sim-exit was used, 1 otherwise
 */
typedef int (*CodasipRtlPluginSetErrorFunc) (const char* message);

/**
 * \brief  Structure describing all mandatory access function and properties of Codasip RTL plugin
 */
typedef struct
{
    /// Functions for plugin to implement

    /// Version of plugin interface
    unsigned m_Version;
    /// Create function pointer
    CodasipRtlPluginCreateFunc m_CreateFnc;
    /// Destroy function pointer
    CodasipRtlPluginDestroyFunc m_DestroyFnc;
    /// SetValue function pointer
    CodasipRtlPluginSetValueFunc m_SetValueFnc;
    /// GetValue function pointer
    CodasipRtlPluginGetValueFunc m_GetValueFnc;
    /// Print function pointer
    CodasipRtlPluginPrintFunc m_PrintFnc;

    /// Functions from JTAG adapter the plugin can use. Will be filled by Start function.

    /// Callback function pointer
    CodasipRtlPluginCallbackFunc m_CallbackFnc;
    /// SetError function pointer
    CodasipRtlPluginSetErrorFunc m_SetErrorFnc;

    /// Parameters for rtl plugins required before callback

    /// Path to all used signals (CLK, TCK, TRST, TMS, TDI, TDO) in the model
    char* m_PathToJtag;

} CodasipRtlPluginInfo;

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

#if defined(_MSVC)
__declspec(dllimport) bool Start (CodasipRtlPluginInfo* plugin);
#else
bool Start (CodasipRtlPluginInfo* plugin);
#endif

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // CODASIP_JTAG_PLUGIN_H_
