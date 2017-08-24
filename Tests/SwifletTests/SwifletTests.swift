import XCTest
@testable import Swiflet

class SwifletTests: XCTestCase {
    func testExample() {
        func x() -> Int { return 3 }

        // Similar to `x() * x()` but calls `x()` just once
        let square = x() => { $0 * $0 }
        
        do {
            try x() => { try throwable($0) }
        } catch {
            // Error handling
            XCTFail()
        }
        
        XCTAssertEqual(square, 9)
    }

    func testChains() {
        func a() -> Int { return 3 }

        var r: Int = a() => { $0 * $0 } => { $0 + $0 }

        XCTAssertEqual(r, 18)
        
        r = a() => { $0 + $0 } => { $0 * $0 }

        XCTAssertEqual(r, 36)
    }

    static var allTests : [(String, (SwifletTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}

func throwable<T>(_ x: T) throws {
}
