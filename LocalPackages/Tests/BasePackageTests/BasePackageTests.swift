import XCTest
@testable import BasePackage

final class BasePackageTests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual(BasePackage().text, "Hello, World!")
    }
}
