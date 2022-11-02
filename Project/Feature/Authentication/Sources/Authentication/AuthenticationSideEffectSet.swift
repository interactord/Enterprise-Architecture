import LinkNavigator
import Domain
import Foundation

public protocol AuthenticationSideEffectSet {
  var signInUseCase: SignInUseCase { get }
  var userUseCase: UserUseCase { get }
}
