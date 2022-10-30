import Combine
import Foundation

public protocol SignUpUseCase {
  var register: (SignUpEntity.Request.RegisterForm) -> AnyPublisher<SignUpEntity.Response.UserInfo, CompositeError> { get }
}
