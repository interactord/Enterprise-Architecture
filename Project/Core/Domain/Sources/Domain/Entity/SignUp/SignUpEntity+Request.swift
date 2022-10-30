import Foundation

extension SignUpEntity {
  public enum Request: Equatable {
  }
}

extension SignUpEntity.Request {
  public struct RegisterForm: Codable, Equatable, SendableJSONBodyType {
    public let email: String
    public let password: String
    public let userName: String

    public init(email: String, password: String, userName: String) {
      self.email = email
      self.password = password
      self.userName = userName
    }

    public func mapToJSONBody() -> Data {
      do {
        return try JSONSerialization.data(withJSONObject: self)
      } catch {
        print(error)
        return Data()
      }
    }
  }
}
