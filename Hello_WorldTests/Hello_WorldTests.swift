//
//  Hello_WorldTests.swift
//  Hello WorldTests
//
//  Created by Alex Zurek on 7/23/19.
//  Copyright © 2019 Alex Zurek. All rights reserved.
//

import XCTest
@testable import Hello_World

class Hello_WorldTests: XCTestCase {

    func testExample1() {
        XCTAssert(2 + 2 == 4)
    }

    func testExample2() {
        XCTAssert("foo" != "bar")
    }

    func testExample3() {
        XCTAssert(2 / 2 == 1)
    }

    func testExample4() {
        XCTAssert("foo" == "foo")
    }

    func testExample5() {
        let theAnswerToLifeTheUniverseAndEverything = 15 + 27
        XCTAssert(theAnswerToLifeTheUniverseAndEverything == 42)
    }

}
