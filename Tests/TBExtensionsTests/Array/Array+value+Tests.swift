import XCTest
@testable import TBExtensions

final class TBArrayValueTests: XCTestCase {
    
    func testArrayValue() {
        let array = ["a","b","c"]
        let a = array.value(index: 0, default: "z")
        XCTAssert(a == "a")
        let c = array.value(index: 2, default: "z")
        XCTAssert(c == "c")
        let z = array.value(index: 3, default: "z")
        XCTAssert(z == "z")
    }
    
}
