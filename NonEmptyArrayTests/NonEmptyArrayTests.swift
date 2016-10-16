//
//  NonEmptyArrayTests.swift
//  NonEmptyArrayTests
//
//  Created by Soroush Khanlou on 10/15/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class NonEmptyArrayTests: XCTestCase {
    
    let nilArray = NonEmptyArray(array: [])

    let notNilArray = NonEmptyArray(array: [1, 2, 3])
    
    let array = NonEmptyArray(elements: 1, 2, 3)

    func testEmptyArrayInitializer() {
        XCTAssertNil(nilArray)
        XCTAssertNotNil(notNilArray)
        
        XCTAssertNil(NonEmptyArray<Int>())
    }
    
    func testArray() {
        XCTAssertEqual(array.count, 3)
    }

    func testNonOptionalMethods() {
        XCTAssert(type(of: array.min()) == Int.self)
        XCTAssert(type(of: array.min()) != Optional<Int>.self)

        XCTAssert(type(of: array.max()) == Int.self)
        XCTAssert(type(of: array.max()) != Optional<Int>.self)

        XCTAssert(type(of: array.first) == Int.self)
        XCTAssert(type(of: array.first) != Optional<Int>.self)

        XCTAssert(type(of: array.last) == Int.self)
        XCTAssert(type(of: array.last) != Optional<Int>.self)
    }
    
    func testDescriptions() {
        XCTAssertEqual(array.description, "[1, 2, 3]")
        XCTAssertEqual(array.debugDescription, "[1, 2, 3]")
    }
    
    func testSubscripting() {
        XCTAssertEqual(array[0], 1)
        XCTAssertEqual(array[1], 2)
        XCTAssertEqual(array[2], 3)
        XCTAssertEqual(array[1..<2].first, 2)
    }
    
    func testAppend() {
        var copy = array
        copy.append(2)
        XCTAssertEqual(copy.count, 4)
        XCTAssertEqual(copy.last, 2)
    }
    
    func testAppending() {
        let appended = array.appending(7)
        XCTAssertEqual(appended.count, 4)
        XCTAssertEqual(appended.last, 7)
    }
    
    func testSequence() {
        let anySequence = AnySequence(array)
        let count = anySequence.reduce(0, { $0.0 + 1 })
        XCTAssertEqual(count, array.count)
    }
    
    func testCollection() {
        let anyCollection = AnyCollection(array)
        let count = anyCollection.reduce(0, { $0.0 + 1 })
        XCTAssertEqual(count, array.count)
    }
}
