//
//  RemovalTests.swift
//  NonEmptyArray
//
//  Created by Soroush Khanlou on 10/16/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class RemovalTests: XCTestCase {
    
    let array = NonEmptyArray(elements: 1, 2, 3)
    
    func testRemoveAt() {
        var copy = array
        try? copy.remove(at: 1)
        XCTAssertEqual(Array(copy), [1, 3])
        try? copy.remove(at: 0)
        XCTAssertEqual(Array(copy), [3])
        try? copy.remove(at: 0)
        XCTAssertEqual(Array(copy), [3])
        do {
            try copy.remove(at: 0)
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }
    }
    
    func testRemoveFirst() {
        var copy = array
        try? copy.removeFirst()
        XCTAssertEqual(Array(copy), [2, 3])
        try? copy.removeFirst()
        XCTAssertEqual(Array(copy), [3])
        try? copy.removeFirst()
        XCTAssertEqual(Array(copy), [3])
        do {
            try copy.removeFirst()
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }
    }
    
    func testRemoveLast() {
        var copy = array
        try? copy.removeLast()
        XCTAssertEqual(Array(copy), [1, 2])
        try? copy.removeLast()
        XCTAssertEqual(Array(copy), [1])
        try? copy.removeLast()
        XCTAssertEqual(Array(copy), [1])
        do {
            try copy.removeLast()
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }
    }
    
    func testRemoveFirstN() {
        var copy = array
        try? copy.removeFirst(2)
        XCTAssertEqual(Array(copy), [3])
        try? copy.removeFirst(2)
        XCTAssertEqual(Array(copy), [3])
        copy.append(8)
        try? copy.removeFirst(2)
        XCTAssertEqual(Array(copy), [3, 8])
        do {
            try copy.removeFirst(2)
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }
    }
    
    func testRemoveLastN() {
        var copy = array
        try? copy.removeLast(2)
        XCTAssertEqual(Array(copy), [1])
        try? copy.removeLast(2)
        XCTAssertEqual(Array(copy), [1])
        copy.append(6)
        try? copy.removeLast(2)
        XCTAssertEqual(Array(copy), [1, 6])
        do {
            try copy.removeLast(2)
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }
    }
    
    func testPopLast() {
        var copy = array
        var last = try? copy.popLast()
        XCTAssertEqual(Array(copy), [1, 2])
        XCTAssertEqual(last, 3)
        last = try? copy.popLast()
        XCTAssertEqual(Array(copy), [1])
        XCTAssertEqual(last, 2)
        last = try? copy.popLast()
        XCTAssertEqual(Array(copy), [1])
        XCTAssertNil(last)
        do {
            let _ = try copy.popLast()
            XCTFail()
        } catch let error {
            XCTAssert(error is InvalidArrayError)
        }

    }
    
}
