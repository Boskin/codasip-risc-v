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
 * \brief	Header file of cross-platform thread
 * \author	Hons Petr
 * \date	9.7.2014
 */

#ifndef THREADSL_THREAD_H_
#define THREADSL_THREAD_H_

#include <cstddef>
#include <memory>  // unique_ptr

namespace codasip {
/**
 * \addtogroup OS
 * \{
 * \defgroup Threadsl     Thread and synchronization library
 * \{
 * Uniform access to operation system specific threads
 * and synchronization primitives (mutex, semaphore).
 */

/// Namespace for creating and managing threads.
namespace threads {
/// Internal templates for storing thread function and its arguments
namespace detail {
/**
 * \brief Base template for calling specialized functions. Used for
 *        for calling thread function independently on number of parameters
 *        stored in thread info class.
 */
class ThreadInfoBase
{
public:
	/// Executes thread function
	virtual void Run() = 0;
	/// Virtual destructor
	virtual ~ThreadInfoBase() {};
};
/**
 * \brief Template for storing function pointer to thread main function
 *        and enabling its execution.
 */
template<typename F>
class ThreadInfo0 : public ThreadInfoBase
{
private:
    /// Function pointer to thread main function.
    F m_f;
public:
    /// Constructor.
    ThreadInfo0(F f): m_f(f) {}
    /// Calls internally stored function pointer.
    void Run() { m_f(); }
};
/**
 * \brief Template for storing function pointer to thread main function
 *        with 1 argument and enabling its execution.
 */
template<typename F, typename A1>
class ThreadInfo1 : public ThreadInfoBase
{
private:
    /// Function pointer to thread main function.
    F m_f;
    /// 1st argument of thread main function.
    A1 m_a1;
public:
    /// Constructor.
    ThreadInfo1(F f, A1 a1): m_f(f), m_a1(a1) {}
    /// Calls internally stored function pointer with previously stored argument.
    void Run() { m_f(m_a1); }
};
/**
 * \brief Template for storing function pointer to thread main function
 *        with 2 arguments and enabling its execution.
 */
template<typename F, typename A1, typename A2>
class ThreadInfo2 : public ThreadInfoBase
{
private:
    /// Function pointer to thread main function.
	F m_f;
    /// 1st argument of thread main function.
	A1 m_a1;
    /// 2nd argument of thread main function.
	A2 m_a2;
public:
    /// Constructor.
	ThreadInfo2(F f, A1 a1, A2 a2) : m_f(f), m_a1(a1), m_a2(a2) {}
    /// Calls internally stored function pointer with previously stored argument.
	void Run() { m_f(m_a1, m_a2); }
};

/**
* \brief Template for storing function pointer to thread main function
*        with 3 arguments and enabling its execution.
*/
template<typename F, typename A1, typename A2, typename A3>
class ThreadInfo3 : public ThreadInfoBase
{
private:
    /// Function pointer to thread main function.
    F m_f;
    /// 1st argument of thread main function.
    A1 m_a1;
    /// 2nd argument of thread main function.
    A2 m_a2;
    /// 2nd argument of thread main function.
    A3 m_a3;
public:
    /// Constructor.
    ThreadInfo3(F f, A1 a1, A2 a2, A3 a3) : m_f(f), m_a1(a1), m_a2(a2), m_a3(a3) {}
    /// Calls internally stored function pointer with previously stored argument.
    void Run() { m_f(m_a1, m_a2, m_a3); }
};

/**
* \brief Template for storing function pointer to thread main function
*        with 3 arguments and enabling its execution.
*/
template<typename F, typename A1, typename A2, typename A3, typename A4>
class ThreadInfo4 : public ThreadInfoBase
{
private:
    /// Function pointer to thread main function.
    F m_f;
    /// 1st argument of thread main function.
    A1 m_a1;
    /// 2nd argument of thread main function.
    A2 m_a2;
    /// 2nd argument of thread main function.
    A3 m_a3;
    /// 2nd argument of thread main function.
    A4 m_a4;
public:
    /// Constructor.
    ThreadInfo4(F f, A1 a1, A2 a2, A3 a3, A4 a4) : m_f(f), m_a1(a1), m_a2(a2), m_a3(a3), m_a4(a4) {}
    /// Calls internally stored function pointer with previously stored argument.
    void Run() { m_f(m_a1, m_a2, m_a3, m_a4); }
};

} //namespace detail

/**
 * \class Thread
 * \brief Cross-platform implementation of thread. Similar interface to C++11
 *        std::thread. Thread is created in constructor of this class and starts
 *        execution of given function and arguments.
 *        Usage:
 *        \code
 *           void thread_main(std::string a, int b)
 *           {
 *             cout << a << " is " << a << std::endl;
 *           }
 *
 *           Thread thread(thread_main, "codasip", 1);
 *           thread.Join();
 *         \endcode
 *         Will print <tt>string codasip is 1</tt>.
 */
class Thread
{
public:
	/// Type for platform specific thread ID
	#ifdef _WIN32
		typedef void* ID;
	#else
		typedef unsigned long int ID;
	#endif
    /**
     * \brief Creates and executes thread function without arguments.
     * \param f Function to be executed in new thread.
     */
    template<typename F>
    Thread(F f) : m_id(0)
    {
        Start(new typename detail::ThreadInfo0<F>(f));
    }
    /**
     * \brief Creates and executes thread function with single argument.
     * \param f Function to be executed in new thread.
     * \param a1 Argument to be passed to function f.
     */
    template<typename F, typename A1>
    Thread(F f, A1 a1) : m_id(0)
    {
        Start(new typename detail::ThreadInfo1<F, A1>(f, a1));
    }
    /**
    * \brief Creates and executes thread function with 2 arguments.
    * \param f Function to be executed in new thread.
    * \param a1 1st argument to be passed to function f.
    * \param a2 2nd argument to be passed to function f.
    */
    template<typename F, typename A1, typename A2>
    Thread(F f, A1 a1, A2 a2) : m_id(0)
    {
        Start(new typename detail::ThreadInfo2<F, A1, A2>(f, a1, a2));
    }
    /**
    * \brief Creates and executes thread function with 3 arguments.
    * \param f Function to be executed in new thread.
    * \param a1 1st argument to be passed to function f.
    * \param a2 2nd argument to be passed to function f.
    * \param a3 3rd argument to be passed to function f.
    */
    template<typename F, typename A1, typename A2, typename A3>
    Thread(F f, A1 a1, A2 a2, A3 a3) : m_id(0)
    {
        Start(new typename detail::ThreadInfo3<F, A1, A2, A3>(f, a1, a2, a3));
    }
    /**
    * \brief Creates and executes thread function with 4 arguments.
    * \param f Function to be executed in new thread.
    * \param a1 1st argument to be passed to function f.
    * \param a2 2nd argument to be passed to function f.
    * \param a3 3rd argument to be passed to function f.
    */
    template<typename F, typename A1, typename A2, typename A3, typename A4>
    Thread(F f, A1 a1, A2 a2, A3 a3, A4 a4) : m_id(0)
    {
        Start(new typename detail::ThreadInfo4<F, A1, A2, A3, A4>(f, a1, a2, a3, a4));
    }
	/**
	 * \brief Destructor. If this object describes running thread,
	 *        the thread keeps running and is not terminated. If this thread
	 *        is joinable thread is also detached.
	 */
	~Thread();
	/**
	 * \brief Wait until joinable threads ends its execution.
	 */
	void Join();
	/**
	 *
	 * \brief Detach thread, all associated resources for thread joining will be freed.
	 */
	void Detach();
	/**
	 * \brief Returns if the thread can be joined.
	 */
	bool IsJoinable() const { return m_joinable; }
	/**
	 * \brief Terminate execution of thread.
	 */
	void Terminate();
    /**
     * \brief  Get platform specific thread ID
     * \return Platform specific thread identification.
     */
    ID GetID() const { return m_id; };

protected:
    /// disable copy constructor and assign operator
    Thread(const Thread&);
    Thread& operator=(const Thread&);

    /// Platform specific thread ID
	ID m_id;
	/// Determines if thread can be joined
	bool m_joinable;
	/**
	 * \brief Spawn new thread.
	 * \param info Thread info pointer containing main thread function with its argument. Its
	 *        base class \ref detail::ThreadInfoBase enables polymorphistic execution of the function
	 *        with its associated arguments.
	 */
	void Start(detail::ThreadInfoBase* info);
};

/**
 * \class ThreadSpecificPtr
 * \brief Class that is used for storing pointers that are in each thread different (thread-local).
 *        Object of this class have to be static (single object for executable), unique thread key
 *        for accessing value is created in constructor.
 * \note  No destructor called when thread of given thread-local variable ends
 * TODO: Add support for thread-local storage destructor
 */
class ThreadSpecificPtr
{
public:
    /**
     * \brief Constructor. Internally creates platform specific key for storing thread specific pointers.
     */
	ThreadSpecificPtr();
	/**
	 * \brief Destructor. Frees platform specific key allocated in constructor.
	 */
    ~ThreadSpecificPtr();
    /**
     * \brief Sets value of TLS variable.
     * \param value Value to be stored.
     */
    void Set(void* value = NULL);
    /**
    * \brief  Returns pointer to thread specific object.
    * \return Pointer to object stored in current thread.
    */
    void* Get() const;

private:
    /// disable copy constructor and assign operator
	ThreadSpecificPtr(const ThreadSpecificPtr&);
	ThreadSpecificPtr& operator=(const ThreadSpecificPtr&);

    // forward declaration of implementation
    struct Impl;
    /// Implementation class
    const std::unique_ptr<Impl> m_Impl;
};

/**
 * \brief  Function for checking if thread specific pointer was set.
 * \param  ptr Object of class \ref ThreadSpecificPtr for managing
 *         tread specific storage.
 * \return True, if TLS value was not set or is set to NULL.
 */
inline bool operator! (const ThreadSpecificPtr& ptr)
{
	return ptr.Get() == NULL;
}

/// Namespace for accessing and managing current thread.
namespace this_thread {
/**
 * \brief Suspend execution of current thread so another thread can be scheduled
 *        to be run by operation system.
 */
void Yield();
/**
 * \brief Suspend current thread for given time in milliseconds.
 * \param millisec Number of milliseconds current thread should be suspended for.
 */
void Sleep(unsigned int millisec);
/**
 * \brief Exit current thread.
 * \param exitcode Return value used as thread main function return value.
 */
void Exit(void* exitcode = NULL);
/**
 * \brief Get platform specific ID of current thread.
 */
Thread::ID GetID();

}   // namespace codasip::threads::this_thread
}   // namespace codasip::threads
}   // namespace codasip

#endif /* THREADSL_THREAD_H_ */
