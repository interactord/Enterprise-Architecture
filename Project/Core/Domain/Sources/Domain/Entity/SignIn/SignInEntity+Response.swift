import Foundation

extension SignInEntity {
  public struct Response: Equatable {
  }
}

extension SignInEntity.Response {
  public struct UserInfo: Codable, Equatable {
    public let userID: Int

    public init(userID: Int) {
      self.userID = userID
    }
  }
}
