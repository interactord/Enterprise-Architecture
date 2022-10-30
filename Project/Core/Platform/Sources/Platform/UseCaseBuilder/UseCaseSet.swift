import Domain
import Foundation

public struct UseCaseSet {
  public let signUp: SignUpUseCase
  public let signIn: SignInUseCase
  public let user: UserUseCase
}
