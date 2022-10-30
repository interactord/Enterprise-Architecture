import Foundation

extension UserEntity {
  public enum Response: Equatable {
  }
}

extension UserEntity.Response {
  public struct UserInfo: Codable, Equatable {
    public let userID: Int
    public let userName: String
    public let isValidatedEmail: String

    public init(userID: Int, userName: String, isValidatedEmail: String) {
      self.userID = userID
      self.userName = userName
      self.isValidatedEmail = isValidatedEmail
    }
  }
}
