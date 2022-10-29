import XCTest
@testable import Me

final class MeTests: XCTestCase {
  func testExample() throws {
    XCTAssertEqual(welcome(), "Hello, World!")
  }

  func welcome() -> String {
    "Hello, World!"
  }
}
