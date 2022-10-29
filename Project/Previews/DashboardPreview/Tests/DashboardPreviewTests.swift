import XCTest
@testable import DashboardPreview

final class DashboardPreviewTests: XCTestCase {
  func testExamle() throws {
    XCTAssertEqual(echo(), "Hello, World!!")
  }

  func echo() -> String {
    "Hello, World!!"
  }
}
