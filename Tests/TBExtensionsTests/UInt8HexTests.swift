//
//  File.swift
//  
//
//  Created by Todd Bowden on 11/25/21.
//

import XCTest
@testable import TBExtensions

final class UInt8HexTests: XCTestCase {
    
    func testUInt8HexTests() {
        print(UInt8(0).hex)
        XCTAssertEqual(UInt8(0).hex, "00")
        XCTAssertEqual(UInt8(1).hex, "01")
        XCTAssertEqual(UInt8(15).hex, "0f")
        XCTAssertEqual(UInt8(16).hex, "10")
        XCTAssertEqual(UInt8(255).hex, "ff")
    }
    
}
