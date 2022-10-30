import Foundation
import Domain
import ComposableArchitecture
import ArchitectureSupport

public struct ProfileSideEffect {
  let userUseCase: UserUseCase

  public init(userUseCase: UserUseCase) {
    self.userUseCase = userUseCase
  }
}

extension ProfileSideEffect {
  var getUserInfo: () -> EffectTask<Result<UserEntity.Response.UserInfo, CompositeError>> {
    {
      userUseCase
        .getUserInfo()
        .mapToResult()
        .eraseToEffect()
    }
  }
}
