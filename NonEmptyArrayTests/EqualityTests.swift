//
//  EqualityTests.swift
//  NonEmptyArray
//
//  Created by Soroush Khanlou on 10/16/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class EqualityTests: XCTestCase {
    
    let first = NonEmptyArray(elements: 1, 2, 3)
    let second = NonEmptyArray(elements: 1, 2, 3)
    let third = NonEmptyArray(elements: 1, 2)
    
    func testEquality() {
        XCTAssertTrue(first == second)
        XCTAssertFalse(first == third)
    }
    
    func testNonEqualArrays() {
        XCTAssertFalse(first != second)
        XCTAssertTrue(first != third)
    }
    
}
