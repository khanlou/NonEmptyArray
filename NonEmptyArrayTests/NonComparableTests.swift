//
//  NonComparableTests.swift
//  NonEmptyArray
//
//  Created by Soroush Khanlou on 10/16/16.
//  Copyright © 2016 Soroush Khanlou. All rights reserved.
//

import XCTest

import NonEmptyArray

class NonComparableTests: XCTestCase {
    
    struct Wrapper {
        let value: Int
    }
    
    let array = NonEmptyArray(elements: Wrapper(value: 1), Wrapper(value: 2), Wrapper(value: 3))
    
    func testNonOptionalMethods() {
        XCTAssert(type(of: array.min(by: { $0.value < $1.value })) == Wrapper.self)
        XCTAssert(type(of: array.min(by: { $0.value < $1.value })) != Optional<Wrapper>.self)
        
        XCTAssert(type(of: array.max(by: { $0.value < $1.value })) == Wrapper.self)
        XCTAssert(type(of: array.max(by: { $0.value < $1.value })) != Optional<Wrapper>.self)
    }
}
