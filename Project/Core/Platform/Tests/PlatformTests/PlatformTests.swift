import XCTest
@testable import Platform

final class PlatformTests: XCTestCase {
  func testExample() throws {
    XCTAssertEqual(welcome(), "Hello, World!")
  }

  func welcome() -> String {
    "Hello, World!"
  }
}
