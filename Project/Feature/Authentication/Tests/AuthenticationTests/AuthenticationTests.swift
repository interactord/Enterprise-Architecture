import XCTest
@testable import Authentication

final class AuthenticationTests: XCTestCase {
  func testExample() throws {
    XCTAssertEqual(welcome(), "Hello, World!")
  }

  func welcome() -> String {
    "Hello, World!"
  }
}
