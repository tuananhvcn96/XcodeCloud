//
//  XcodeCloudTestTests.swift
//  XcodeCloudTestTests
//
//  Created by SB15803 on 7/8/25.
//

import Testing
import XCTest
@testable import XcodeCloudTest

final class ContentViewTests: XCTestCase {
    
    func testEmptyStringAllowed() {
        XCTAssertEqual(ContentView.filterInteger(""), "")
    }
    
    func testOnlyDigitsRemain() {
        XCTAssertEqual(ContentView.filterInteger("123"), "123")
        XCTAssertEqual(ContentView.filterInteger("00123"), "00123")
    }
    
    func testLettersAreRemoved() {
        XCTAssertEqual(ContentView.filterInteger("1a2b3"), "123")
        XCTAssertEqual(ContentView.filterInteger("abc"), "")
    }
    
    func testSpecialCharactersRemoved() {
        XCTAssertEqual(ContentView.filterInteger("1!2@3#"), "123")
        XCTAssertEqual(ContentView.filterInteger("1 2 3"), "123") // bỏ khoảng trắng
    }
    
    func testMixedInput() {
        XCTAssertEqual(ContentView.filterInteger("a1b2c3"), "123")
        XCTAssertEqual(ContentView.filterInteger("12x"), "12x")
    }
}
