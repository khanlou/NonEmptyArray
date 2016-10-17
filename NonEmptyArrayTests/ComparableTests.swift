//
//  ComparableTests.swift
//  NonEmptyArray
//
//  Created by Soroush Khanlou on 10/16/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class ComparableTests: XCTestCase {
    
    let array = NonEmptyArray(elements: 2, 1, 3)
    
    func testMinAndMax() {
        XCTAssertEqual(array.min(), 1)
        XCTAssertEqual(array.max(), 3)
    }
    
    func testSort() {
        var copy = array
        copy.sort()
        XCTAssertTrue(copy == NonEmptyArray(elements: 1, 2, 3))
    }
}
