import XCTest
@testable import AuthenticationPreview

final class AuthenticationPreviewTests: XCTestCase {
  func testExamle() throws {
    XCTAssertEqual(echo(), "Hello, World!!")
  }

  func echo() -> String {
    "Hello, World!!"
  }
}
