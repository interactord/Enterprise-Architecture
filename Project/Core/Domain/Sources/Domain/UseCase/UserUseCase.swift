import Combine
import Foundation

public protocol UserUseCase {
  var getUserInfo: () -> AnyPublisher<UserEntity.Response.UserInfo, CompositeError> { get }
}
