import Domain
import Foundation

public struct UseCaseSet {
  let signUp: SignUpUseCase
  let signIn: SignInUseCase
  let user: UserUseCase
}
