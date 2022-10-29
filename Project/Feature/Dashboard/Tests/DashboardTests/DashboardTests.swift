import XCTest
@testable import Dashboard

final class DashboardTests: XCTestCase {
  func testExample() throws {
    XCTAssertEqual(welcome(), "Hello, World!")
  }

  func welcome() -> String {
    "Hello, World!"
  }
}
