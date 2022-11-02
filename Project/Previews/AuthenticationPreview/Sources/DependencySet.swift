import Foundation
import Authentication
import Platform
import LinkNavigator
import Domain

public struct DependencySet: DependencyType {

  init(type: UseCaseBuilder.BuildType) {
    containerSet = Platform.UseCaseBuilder(type: type).build()
  }

  let containerSet: UseCaseSet
}

extension DependencySet: AuthenticationSideEffectSet {
  public var signInUseCase: SignInUseCase {
    containerSet.signIn
  }

  public var userUseCase: UserUseCase {
    containerSet.user
  }
}
