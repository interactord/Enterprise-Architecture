import XCTest
@testable import EventPreview

final class EventPreviewTests: XCTestCase {
  func testExamle() throws {
    XCTAssertEqual(echo(), "Hello, World!!")
  }

  func echo() -> String {
    "Hello, World!!"
  }
}
