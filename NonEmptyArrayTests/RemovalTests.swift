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
    
}
