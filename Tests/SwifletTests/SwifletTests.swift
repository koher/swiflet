import XCTest
@testable import Swiflet

class SwifletTests: XCTestCase {
    func testExample() {
        func x() -> Double { return 3 }
        func y() -> Double { return 4 }

        // Similar to `sqrt(x() * x() + y() * y())`
        // but calls `x()` and `y()` just once respectively
        let l = sqrt((x() => { $0 * $0 }) + (y() => { $0 * $0 }))
        
        do {
            try x() => { try throwable($0) }
        } catch {
            XCTFail()
        }
        
        XCTAssertEqual(l, 5.0, accuracy: 1e-10)
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
