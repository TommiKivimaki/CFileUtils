import XCTest
@testable import DirectoryExistsLinux

final class DirectoryExistsLinuxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DirectoryExistsLinux().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
