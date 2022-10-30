import Combine
import Foundation

public protocol SignInUseCase {
  var signIn: (SignInEntity.Request.Email) -> AnyPublisher<SignInEntity.Response.UserInfo, CompositeError> { get }
}
