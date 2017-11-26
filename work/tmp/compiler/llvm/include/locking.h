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
 * \brief	Header file of threads tools for locking and mutual exclusion
 * \author	Hons Petr
 * \date	8.7.2014
 */

#ifndef THREADSL_LOCKING_H_
#define THREADSL_LOCKING_H_

#include <memory>       // unique_ptr
#include "compiler.h"   // HANDLE

namespace codasip {
/**
 * \addtogroup OS
 * \{
 * \addtogroup Threadsl
 * \{
 */
/// Namespace for synchronization of threads and processes using locking primitives.
namespace synchronization {
// forward
class ConditionVariable;

/**
 * \class Mutex
 * \brief Cross-platform not-reentrant mutex. When thread holding mutex tries to lock it
 *        again, will be blocked.
 */
class Mutex {
public:
    /**
     * \brief Constructor. Creates not locked mutex object.
     */
	Mutex();
	/**
	 * \brief Destructor.
	 */
	~Mutex();
	/**
	 * \brief Lock mutex, only one thread can lock mutex at any time.
	 */
	void Lock();
	/**
	 * \brief Unlock mutex allowing other thread to lock it.
	 */
	void Unlock();
	/**
	 * \brief  Tries to lock a mutex.
	 * \return True, if lock was acquired, false if mutex is already locked.
	 */
	bool TryLock();

private:
	// disable copy constructor and assign operator
	Mutex(const Mutex&);
	Mutex& operator=(const Mutex&);

	// forward declaration of implementation
	struct Impl;
	/// Implementation class
	const std::unique_ptr<Impl> m_Impl;
};

/**
 * \class ReentrantMutex
 * \brief Cross-platform reentrant mutex. Thread holding a mutex can lock it again.
 *        For unlocking a mutex must thread unlock it same times thread locked it before.
 */
class ReentrantMutex {
public:
    /**
     * \brief Constructor. Creates not locked mutex object.
     */
	ReentrantMutex();
    /**
     * \brief Destructor.
     */
	~ReentrantMutex();
	/**
	 * \brief Lock mutex, only one thread can lock mutex at any time.
	 *        Can be locked multiple times by thread holding a mutex.
	 */
	void Lock();
	/**
	 * \brief Unlock mutex allowing other thread to lock it.
	 * \note  If thread holding mutex called \ref Lock multiple times,
	 *        for unlocking mutex must be \ref Unlock called multiple times too.
	 */
	void Unlock();
	/**
	 * \brief  Tries to lock a mutex.
	 * \return True, if lock was acquired, false if mutex is already locked
	 *         by other thread.
	 */
	bool TryLock();

private:
	// disable copy constructor
	ReentrantMutex(const ReentrantMutex&);
	ReentrantMutex& operator=(const ReentrantMutex&);

    // forward declaration of implementation
    struct Impl;
    /// Implementation class
    const std::unique_ptr<Impl> m_Impl;

    friend class ConditionVariable;    // accessing internal mutex
};

/**
 * \class Semaphore
 * \brief Cross-platform semaphore implementation.
 */
class Semaphore {
public:
    /**
     * \brief Constructor. Creates system specific semaphore implementation.
     * \param value Initial value of semaphore.
     */
	Semaphore(unsigned int value = 0);
	~Semaphore();
	/**
	 * \brief Increase number of semaphore by 1, so it will be unlocked.
	 */
	void Post();
	/**
	 * \brief Wait until number of semaphore is greater than 0, than
	 *        decrements it to zero and block it for other threads.
	 * \param seconds Wait timeout on semaphore. For inifinity use negative value.
	 * \return True if semaphore wait was successful, false if timeout run off
	 */
	bool Wait(float seconds = -1);

private:
	// disable copy constructor
	Semaphore(const Semaphore&);
	Semaphore& operator=(const Semaphore&);

    // forward declaration of implementation
    struct Impl;
    /// Implementation class
    const std::unique_ptr<Impl> m_Impl;
};

/**
 * \class Locking
 * \brief Template class that defines operations Lock and Unlock on arbitrary
 *        class type that uses Mutex for thread threads.
 */
template<typename T>
class Locking : public T
{
public:
	/**
	 * \brief Lock object, only one thread can lock this object.
	 */
	void Lock() {
		m_mutex.Lock();
	}
	/**
	 * \brief Unlocks object, another thread can lock it.
	 */
	void Unlock() {
		m_mutex.Unlock();
	}

protected:
	/// Mutex used for locking a inherited class.
	ReentrantMutex m_mutex;
};

/**
 * \class ScopedLock
 * \brief Template class that automatically locks synchronization primitive
 *        in constructor and unlock in destructor
 */
template<typename T>
class ScopedLock
{
public:
    /// Accessor to locable type
    typedef T Lockable;
    /**
     * \brief Automatically lock given synchronization primitive.
     * \param lock Synchronization primitive to be locked.
     * \note  Will call Lock() on \p lock
     */
    ScopedLock(T& lockable)
        : m_Lockable(&lockable)
    {
        Lock();
    }

    ScopedLock(ScopedLock&& other)
      : m_Lockable(other.m_Lockable), m_Owns(other.m_Owns)
    {
        other.m_Lockable = nullptr;
        other.m_Owns = false;
    }

    /**
     * \brief Destructor. Unlocks lock calling Unlock().
     */
    ~ScopedLock()
    {
        if (m_Owns)
        {
            Unlock();
        }
    }

    ScopedLock(const ScopedLock&) = delete;
    ScopedLock& operator=(const ScopedLock&) = delete;

    /**
     * \brief Lock associated synchronization primitive
     */
    void Lock()
    {
        if (m_Lockable)
        {
            m_Lockable->Lock();
            m_Owns = true;
        }
    }
    /**
    * \brief Unlock associated synchronization primitive
    */
    void Unlock()
    {
        if (m_Lockable)
        {
            m_Lockable->Unlock();
            m_Owns = false;
        }
    }
    /**
     * \brief Returns internally controlled synchronization primitive
     */
    T* GetLockable() const
    {
        return m_Lockable;
    }
    
    T* Release()
    {
        T* lockable = m_Lockable;
        m_Owns = false;
        m_Lockable = nullptr;
        return lockable;
    }

private:
    /// Locking primitive scoped lock is controlling
    T* m_Lockable;
    bool m_Owns;


};

/**
 * \class ReverseScopedLock
 * \brief Template class that automatically unlocks synchronization primitive
 *        in constructor and locks in again destructor
 */
template<typename T>
class ReverseScopedLock
{
public:
    /**
     * \brief Automatically unlock given synchronization primitive.
     * \param lockable Synchronization primitive to be locked.
     * \note  Will call Unlock() on \p lock
     */
    ReverseScopedLock(T& lockable)
        : m_Lockable(lockable)
    {
        Unlock();
    }
    /**
     * \brief Destructor. Locks the lock calling Lock().
     */
    ~ReverseScopedLock()
    {
        Lock();
    }
    /**
     * \brief Copy constructor from scoped lock
     */
    ReverseScopedLock(const ScopedLock<T>& lock)
        : m_Lockable(lock.GetLockable())
    {
        Unlock();
    }
    /**
     * \brief Lock associated synchronization primitive
     */
    void Lock()
    {
        m_Lockable.Lock();
    }
    /**
    * \brief Unlock associated synchronization primitive
    */
    void Unlock()
    {
        m_Lockable.Unlock();
    }

private:
    /// Locking primitive scoped lock is controlling
    T& m_Lockable;

    /// Disallow copy
    ReverseScopedLock(const ReverseScopedLock&);
    /// Disallow assign
    ReverseScopedLock& operator=(const ReverseScopedLock&);
};

/**
 * \class ConditionVariable
 * \brief Condition variable implementation. Only scoped lock of reentrant mutex is supported,
 *        because for correct implementation of condition variable on Windows XP we need
 *        critical section (RW locks are from Vista on) or std::mutex
 */
class ConditionVariable
{
public:
    /**
     * \brief Constructor.
     */
    ConditionVariable();
    /**
     * \brief Destructor.
     */
    ~ConditionVariable();
    /**
     * \brief Execution of current thread is blocked until notified. Scoped lock is automatically
     *        unlocked with blocking of thread and locked again before method returns
     */
    void Wait(ScopedLock<ReentrantMutex>& lock);
    void Wait(ReentrantMutex& lock);
    /**
     * \brief Notify single thread waiting on this condition.
     */
    void NotifyOne();
    /**
     * \brief Notify all threads waiting on this condition.
     */
    void NotifyAll();

private:
    // disable copy constructor and assign operator
    ConditionVariable(const ConditionVariable&);
    ConditionVariable& operator=(const ConditionVariable&);

    // forward declaration of implementation
    struct Impl;
    /// Implementation class
    const std::unique_ptr<Impl> m_Impl;
};

/// Return types for \ref WaitOnHandle().
typedef enum
{
    /// Successful wait on given handle.
    WAIT_SUCCESS,
    /// Handle was not signaled in given timeout or is not signaled when timeout is 0
    WAIT_NOT_SIGNALLED,
    /// Error while waiting
    ERR_WAIT_ERROR
} wait_return_t;

/**
 * \brief  Cross-platform wait on system specific handle. Uses select on Linux
 *         and WaitForSingleObject on Windows.
 * \param  handle Handle to be waited on.
 * \param  read If we should wait for read (true) or write (false). Not used on Windows.
 * \param  millisTimeout Optional timeout in milliseconds. If negative function will wait infinitely,
 *         if zero, function will end immediately (used for polling), otherwise
 *         wait for given milliseconds.
 * \return WAIT_SUCCESS when waiting was successful, WAIT_NOT_SIGNALLED when timeout elapsed or when
 *         timeout is 0 and handle is not signaled, ERR_WAIT_ERROR on error.
 */
wait_return_t WaitOnHandle(const HANDLE handle, const bool read, const int millisTimeout = -1);

/**
 * \brief  Modifies handle so it will or won't be inherited into child process
 * \param  handle Handle whose inheritance should be changed.
 * \param  inheritable True, if handle should be inherited into child process, false otherwise
 * \return true if change was successful, false otherwise
 */
bool SetHandleInheritable(const HANDLE handle, const bool inheritable);

}   // namespace codasip::synchronization
}   // namespace codasip

#endif /* THREADSL_LOCKING_H_ */
