import Combine
import Domain
import Foundation

// MARK: - UserUseCaseMock

final class UserUseCaseMock {

  var response = Response()
}

extension UserUseCaseMock {
  public struct Response: Equatable {
    var getUserInfo: Domain.UserEntity.Response.UserInfo? = .init(userID: 123, userName: "test", isValidatedEmail: "N")
  }
}

// MARK: UserUseCase

extension UserUseCaseMock: UserUseCase {
  var getUserInfo: () -> AnyPublisher<Domain.UserEntity.Response.UserInfo, Domain.CompositeError> {
    { [weak self] in
      guard let self = self else {
        return Fail(error: CompositeError.weakCaptureOrTypeCastingFail).eraseToAnyPublisher()
      }

      guard let mock = self.response.getUserInfo else {
        return Fail(error: CompositeError.responseError(.init(code: 999, message: "fail")))
          .eraseToAnyPublisher()
      }

      return Just(mock)
        .setFailureType(to: CompositeError.self)
        .eraseToAnyPublisher()
    }
  }
}
