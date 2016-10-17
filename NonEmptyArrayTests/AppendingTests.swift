//
//  AppendingTests.swift
//  NonEmptyArray
//
//  Created by Soroush Khanlou on 10/16/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class AppendingTests: XCTestCase {
    
    let array = NonEmptyArray(elements: 1, 2, 3)

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
    
    func testInsertion() {
        var copy = array
        copy.insert(2, at: 1)
        XCTAssertEqual(Array(copy), [1, 2, 2, 3])
    }
    
    func testCollectionInsertion() {
        var copy = array
        copy.insert(contentsOf: AnyCollection([1, 2, 3]), at: 2)
        XCTAssertEqual(Array(copy), [1, 2, 1, 2, 3, 3])
    }
    
}
