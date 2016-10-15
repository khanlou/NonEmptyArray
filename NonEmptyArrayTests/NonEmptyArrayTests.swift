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

    let array = NonEmptyArray(array: [1, 2, 3])

    func testEmptyArrayInitializer() {
        XCTAssertNil(nilArray)
    }
    
    func testArray() {
        XCTAssertEqual(array?.count, 3)
    }
}
