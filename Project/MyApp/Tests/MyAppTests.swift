import XCTest
@testable import MyApp

final class MyAppTests: XCTestCase {
  func testExamle() throws {
    XCTAssertEqual(echo(), "Hello, World!!")
  }

  func echo() -> String {
    "Hello, World!!"
  }
}
