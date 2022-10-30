import Foundation

extension SignInEntity {
  public struct Request: Equatable {}
}

extension SignInEntity.Request {
  public struct Email: Codable, Equatable, SendableJSONBodyType {
    public let email: String
    public let password: String

    public init(email: String, password: String) {
      self.email = email
      self.password = password
    }

    public func mapToJSONBody() -> Data {
      do {
        let data = try JSONSerialization.data(withJSONObject: self)
        return data
      } catch {
        print(error)
        return Data()
      }
    }
  }
}
