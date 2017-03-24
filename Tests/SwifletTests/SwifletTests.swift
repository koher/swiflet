import XCTest
@testable import Swiflet

class SwifletTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Swiflet().text, "Hello, World!")
    }


    static var allTests : [(String, (SwifletTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
