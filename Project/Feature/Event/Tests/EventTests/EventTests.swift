import XCTest
@testable import Event

final class EventTests: XCTestCase {
  func testExample() throws {
    XCTAssertEqual(welcome(), "Hello, World!")
  }

  func welcome() -> String {
    "Hello, World!"
  }
}
