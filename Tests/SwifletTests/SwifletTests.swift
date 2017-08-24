import XCTest
@testable import Swiflet

class SwifletTests: XCTestCase {
    func testExample() {
        let foo = Foo(bar: 2, baz: 3.0, qux: "xyz")
        let (bar, qux) = foo => { ($0.bar, $0.qux) }
        
        do {
            try foo => { try throwable($0) }
        } catch {
            XCTFail()
        }
        
        XCTAssertEqual(bar, 2)
        XCTAssertEqual(qux, "xyz")
    }

    func testChains() {
        func a() -> Int { return 3 }

        let aaaa: Int = a() => { $0 * $0 } => { $0 * $0 }

        XCTAssertEqual(aaaa, 81)
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

func throwable(_ foo: Foo) throws {
}
