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
    
    func testEmptyArrayInitializer() {
        let array = NonEmptyArray(array: [])
        XCTAssertNil(array)
    }
    
    func testArray() {
        let array = NonEmptyArray(array: [1, 2, 3])
        XCTAssertEqual(array?.count, 3)
    }
    
}
