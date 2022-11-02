import Foundation
import Domain
import LinkNavigator

struct LoginSideEffect {

  let signInUseCase: SignInUseCase
  let navigator: LinkNavigatorType
}
