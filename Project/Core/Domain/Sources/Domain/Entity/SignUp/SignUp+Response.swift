import Foundation

extension SignUpEntity {
  public enum Response: Equatable {
  }
}

extension SignUpEntity.Response {
  public struct UserInfo: Codable, Equatable {
    public let userID: Int

    public init(userID: Int) {
      self.userID = userID
    }
  }
}
