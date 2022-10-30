import Combine
import Domain
import Foundation

// MARK: - UserUseCasePlatform

public struct UserUseCasePlatform {
  let core: NetworkService

  init(core: NetworkService) {
    self.core = core
  }
}

// MARK: UserUseCase

extension UserUseCasePlatform: UserUseCase {
  public var getUserInfo: () -> AnyPublisher<Domain.UserEntity.Response.UserInfo, Domain.CompositeError> {
    {
      core
        .fetch(.init(path: "/user/me", method: "GET", parameter: [:], httpBody: .none))
        .decode(type: Domain.UserEntity.Response.UserInfo.self, decoder: JSONDecoder())
        .catch { error -> AnyPublisher<Domain.UserEntity.Response.UserInfo, Domain.CompositeError> in
          var err: CompositeError {
            guard let compositeError = error as? CompositeError
            else { return CompositeError.clientError(error) }
            return compositeError
          }
          return Fail(error: err).eraseToAnyPublisher()
        }
        .eraseToAnyPublisher()
    }
  }
}
