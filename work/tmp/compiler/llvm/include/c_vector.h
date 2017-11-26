/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
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
 *  \date   10. 1. 2017
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef UTILITY_C_VECTOR_H_
#define UTILITY_C_VECTOR_H_

#include <cstring>

#include "check_condition.h"
#include "compiler.h"


//#define DEBUG_CVECTOR


namespace codasip {


///////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
class CVectorConstIterator
{
public:
    CVectorConstIterator(T** reference)
      : m_Reference(reference)
    {}
    CVectorConstIterator(const CVectorConstIterator<T>& copy)
      : m_Reference(copy.m_Reference)
    {}

    void operator++()
    {
        m_Reference++;
    }
    CVectorConstIterator& operator+(const size_t value)
    {
        m_Reference += value;
        return *this;
    }
    const T* operator->() const
    {
        return &GetReference();
    }
    const T& operator*() const
    {
        return GetReference();
    }
    bool operator==(const CVectorConstIterator& other) const
    {
        return m_Reference == other.m_Reference;
    }
    bool operator!=(const CVectorConstIterator& other) const
    {
#ifdef DEBUG_CVECTOR
        std::cout << "CVectorConstIterator operator!=: " << m_Reference << " vs " << other.m_Reference << std::endl;
#endif

        return m_Reference != other.m_Reference;
    }

    T** GetRawReference() const
    {
        return m_Reference;
    }

protected:
    template<class Q = T>
    typename std::enable_if<!std::is_pointer<Q>::value, T&>::type
    GetReference() const
    {
        CHECK_NOT_NULL(m_Reference);
        CHECK_NOT_NULL(*m_Reference);
        return **m_Reference;
    }
    template<class Q = T>
    typename std::enable_if<std::is_pointer<Q>::value, T&>::type
    GetReference() const
    {
        CHECK_NOT_NULL(m_Reference);
        return *m_Reference;
    }

    T** m_Reference;
};

///////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
class CVectorIterator : public CVectorConstIterator<T>
{
public:
    CVectorIterator(T** reference)
      : CVectorConstIterator<T>(reference)
    {}

    T* operator->()
    {
        return &this->GetReference();
    }
    T& operator*()
    {
        return this->GetReference();
    }
};

///////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
class CVectorConstReverseIterator
{
public:
    CVectorConstReverseIterator(T** reference)
      : m_Reference(reference)
    {}
    CVectorConstReverseIterator(const CVectorConstReverseIterator& copy)
      : m_Reference(copy.m_Reference)
    {}

    void operator++()
    {
        m_Reference--;
    }
    CVectorConstReverseIterator& operator+(const size_t value)
    {
        m_Reference -= value;
        return *this;
    }
    const T* operator->() const
    {
        return &GetReference();
    }
    const T& operator*() const
    {
        return GetReference();
    }
    bool operator==(const CVectorConstReverseIterator& other) const
    {
        return m_Reference == other.m_Reference;
    }
    bool operator!=(const CVectorConstReverseIterator& other) const
    {
        return m_Reference != other.m_Reference;
    }

    T** GetRawReference() const
    {
        return m_Reference;
    }

protected:
    template<class Q = T>
    typename std::enable_if<!std::is_pointer<Q>::value, T&>::type
    GetReference() const
    {
        CHECK_NOT_NULL(m_Reference);
        CHECK_NOT_NULL(*m_Reference);
        return **m_Reference;
    }
    template<class Q = T>
    typename std::enable_if<std::is_pointer<Q>::value, T&>::type
    GetReference() const
    {
        CHECK_NOT_NULL(m_Reference);
        return *m_Reference;
    }

    T** m_Reference;
};

///////////////////////////////////////////////////////////////////////////////////////////////////
template<class T>
class CVectorReverseIterator : public CVectorConstReverseIterator<T>
{
public:
    CVectorReverseIterator(T** reference)
      : CVectorConstReverseIterator<T>(reference)
    {}

    T* operator->()
    {
        return &this->GetReference();
    }
    T& operator*()
    {
        return this->GetReference();
    }
};

///////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * \brief C vector implementation in C++, allocation and deallocation should be written in C.
 *        No usage of std objects is allowed.
 *        Design internally it is array of pointers to T, T** is the field and T* is the element.
 *        If T is pointer then element T* is T,
 *        otherwise T* = new T() and allocation/deallocation is handled by CVector automatically.
 * \warning CVector of pointer type is severely broken and should not be used.
 */
template<class T>
class CVector
{
public:
    typedef CVectorConstIterator<T> const_iterator;
    typedef CVectorIterator<T> iterator;
    typedef CVectorConstReverseIterator<T> const_reverse_iterator;
    typedef CVectorReverseIterator<T> reverse_iterator;

    static const size_t START_CAPACITY = 64;

    CVector()
      : m_Elements(nullptr),
        m_Size(0),
        m_Capacity(START_CAPACITY)
    {
        Reallocate(0, START_CAPACITY);
    }

    /// Disable copy
    CVector(const CVector& copy)
      : m_Elements(nullptr),
        m_Size(0),
        m_Capacity(START_CAPACITY)
    {
        Reallocate(0, START_CAPACITY);
        insert(begin(), copy.begin(), copy.end());
    }

    ~CVector()
    {
        clear();
        free(m_Elements);
    }

    T& at(const size_t index)
    {
        return GetElement(index);
    }
    const T& at(const size_t index) const
    {
        return GetElement(index);
    }
    T& back()
    {
        return Back();
    }
    const T& back() const
    {
        return Back();
    }
    iterator begin() CODASIP_NOEXCEPT
    {
        return Begin();
    }
    const_iterator begin() const CODASIP_NOEXCEPT
    {
        return Begin();
    }
    size_t capacity() const CODASIP_NOEXCEPT
    {
        return m_Capacity;
    }
    void clear() CODASIP_NOEXCEPT
    {
        if (!std::is_pointer<T>())
        {
            for (size_t i = 0; i < size(); i++)
            {
                delete m_Elements[i];
            }
        }
        m_Size = 0;
    }
    bool empty() const CODASIP_NOEXCEPT
    {
        return !size();
    }
    iterator end() CODASIP_NOEXCEPT
    {
        return End();
    }
    const_iterator end() const CODASIP_NOEXCEPT
    {
        return End();
    }
    iterator insert(const_iterator position, const T& element)
    {
        reserve(size() + 1);

        T** start = position.GetRawReference();
        const size_t elementSize = sizeof(T*);
        memmove(start + 1, start, elementSize);
        memset(start, 0, elementSize);

        SetElement(start, element);
        m_Size++;

        return position.GetRawReference();
    }
    // TODO should be: iterator insert(const const_iterator position, InputIterator first, InputIterator last)
    /**
     * \brief Insert values between first and last iterators to given position.
     * \warning Inserting values from given vector to the same vector produce undefined behavior.
     */
    iterator insert(const_iterator position, const const_iterator first, const const_iterator last)
    {
        size_t elementCount = 0;
        for (auto it = first; it != last; ++it)
        {
            elementCount++;
        }
#ifdef DEBUG_CVECTOR
        std::cout << "insert: element count: " << elementCount << std::endl;
#endif

        // determine position index from position iterator
        size_t positionIndex = 0;
        while (&m_Elements[positionIndex] != position.GetRawReference())
        {
            CHECK_CONDITION(&m_Elements[positionIndex] < position.GetRawReference());
            positionIndex++;
        }

        // position will be invalidated, TODO first and last too if they are used against warning
        reserve(size() + elementCount);

        T** start = m_Elements + positionIndex;
        const size_t elementsSize = elementCount * sizeof(T*);
        const size_t vectorSize = size() * sizeof(T*);
#ifdef DEBUG_CVECTOR
        std::cout << "insert: start: " << start << std::endl
                  << "        elements size: " << elementsSize << std::endl
                  << "        next: " << start + elementCount << std::endl
                  << "        old vector size: " << vectorSize << std::endl;
#endif

        memmove(start + elementCount, start, vectorSize);
        memset(start, 0, elementsSize);

        iterator it = start;
        for (auto iit = first; iit != last; ++iit, ++it)
        {
            SetElement(it.GetRawReference(), *iit);
        }
        m_Size += elementCount;

        return start;
    }
    CVector& operator=(const CVector& other)
    {
        clear();
        insert(begin(), other.begin(), other.end());
        return *this;
    }
    T& operator[](const size_t index)
    {
        return GetElement(index);
    }
    const T& operator[](const size_t index) const
    {
        return GetElement(index);
    }
    void push_back(T& element)
    {
        PushBack(element);
    }
    void push_back(const T& element)
    {
        PushBack(element);
    }
    reverse_iterator rbegin() CODASIP_NOEXCEPT
    {
        return RBegin();
    }
    const_reverse_iterator rbegin() const CODASIP_NOEXCEPT
    {
        return RBegin();
    }
    reverse_iterator rend() CODASIP_NOEXCEPT
    {
        return REnd();
    }
    const_reverse_iterator rend() const CODASIP_NOEXCEPT
    {
        return REnd();
    }
    /**
     * \brief Reserves memory for n elements in the C vector
     * \param[in] n
     */
    void reserve(const size_t n)
    {
#ifdef DEBUG_CVECTOR
        std::cout << "reserve: " << n << std::endl;
#endif

        const size_t oldCapacity = capacity();
        if (n <= oldCapacity)
        {
            return;
        }

        while (capacity() < n)
        {
            m_Capacity *= 2;
        }

#ifdef DEBUG_CVECTOR
        std::cout << "reserve: new capacity " << capacity() << std::endl;
#endif

        Reallocate(oldCapacity, capacity());
    }
    /**
     * \brief Get size of the C vector
     */
    size_t size() const CODASIP_NOEXCEPT
    {
        return m_Size;
    }

private:
    /**
     * \brief Reallocate CVector, use empty constructors to initialize default T
     */
    void Reallocate(const size_t oldCapacity, const size_t newCapacity)
    {
#ifdef DEBUG_CVECTOR
        std::cout << "Reallocate: " << oldCapacity << " to " << newCapacity << std::endl;
#endif

        m_Elements = (T**)realloc(m_Elements, newCapacity * sizeof(T*));
        CHECK_NOT_NULL(m_Elements);
        for (size_t i = oldCapacity; i < newCapacity; i++)
        {
            m_Elements[i] = nullptr;
        }
    }

    template<class Q = T>
    typename std::enable_if<!std::is_pointer<Q>::value, Q&>::type
    GetElement(const size_t index) const
    {
#ifdef DEBUG_CVECTOR
        std::cout << "GetElement on place: " << &m_Elements[index] << " index: " << index << std::endl;
#endif
        CHECK_CONDITION(index < size())
            << "CVector could not access " << index << ". element. Size is " << size() << std::endl;
        CHECK_NOT_NULL(m_Elements[index]);
        return *m_Elements[index];
    }
    template<class Q = T>
    typename std::enable_if<std::is_pointer<Q>::value, Q&>::type
    GetElement(const size_t index) const
    {
        CHECK_CONDITION(index < size())
            << "CVector could not access " << index << ". element. Size is " << size() << std::endl;
        return *m_Elements[index];
    }
    void SetElement(const size_t index, const T& element)
    {
        SetElement(&m_Elements[index], element);
    }
    template<class Q = T>
    typename std::enable_if<!std::is_pointer<Q>::value, void>::type
    SetElement(Q** place, const Q& element)
    {
#ifdef DEBUG_CVECTOR
        std::cout << "SetElement on place: " << place << std::endl;
#endif
        *place = new Q(element);
        CHECK_NOT_NULL(*place);
    }
    template<class Q = T>
    typename std::enable_if<std::is_pointer<Q>::value, void>::type
    SetElement(Q** place, const Q& element)
    {
        **place = element;
    }

    T& Back()
    {
        CHECK_CONDITION(!empty());
        return GetElement(size() - 1);
    }
    iterator Begin() const CODASIP_NOEXCEPT
    {
        return m_Elements;
    }
    iterator End() const CODASIP_NOEXCEPT
    {
        return m_Elements + size();
    }
    void PushBack(const T& element)
    {
        reserve(size() + 1);

#ifdef DEBUG_CVECTOR
        std::cout << "push_back: " << m_Size << std::endl;
#endif

        SetElement(m_Size, element);
        m_Size++;
    }
    reverse_iterator RBegin() const CODASIP_NOEXCEPT
    {
        return m_Elements + size() - 1;
    }
    reverse_iterator REnd() const CODASIP_NOEXCEPT
    {
        return m_Elements - 1;
    }

    /// stored elements
    T** m_Elements;
    /// count of stored elements
    size_t m_Size;
    /// maximum of elements that could be stored without reallocation
    size_t m_Capacity;
};


}   // namespace codasip

#undef DEBUG_CVECTOR

#endif  // UTILITY_C_VECTOR_H_
