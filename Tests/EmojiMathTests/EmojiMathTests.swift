import XCTest
@testable import EmojiMath

final class EmojiMathTests: XCTestCase {

    private func add(_ a: Character, and b: Character, expect expectedResult: Character) {
        let result = a + b
        XCTAssertEqual(result,
                       expectedResult,
                       "Something went wrong while adding \(a) and \(b). Obtained \(result) instead of \(expectedResult)")
    }

    func testAddition() {
        add("😬", and: "❄️", expect: "🥶")
        add("x", and: "e", expect: "❓")
    }

    static var allTests = [
        ("testAddition", testAddition),
    ]
}
