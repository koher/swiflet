import XCTest
@testable import Swiflet

class SwifletTests: XCTestCase {
    func testExample() {
        let foo = Foo(bar: 2, baz: 3.0, qux: "xyz")
        let (bar, qux) = foo ->> { ($0.bar, $0.qux) }
        
        XCTAssertEqual(bar, 2)
        XCTAssertEqual(qux, "xyz")
    }


    static var allTests : [(String, (SwifletTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}

struct Foo {
    var bar: Int
    var baz: Float
    var qux: String
}
