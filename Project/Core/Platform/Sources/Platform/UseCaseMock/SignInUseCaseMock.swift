import Combine
import Domain
import Foundation

// MARK: - SignInUseCaseMock

final class SignInUseCaseMock {
  var response = Response()
}

extension SignInUseCaseMock {
  public struct Response: Equatable {
    var signIn: SignInEntity.Response.UserInfo? = .init(userID: 123)
  }
}

// MARK: SignInUseCase

extension SignInUseCaseMock: SignInUseCase {
  var signIn: (SignInEntity.Request.Email) -> AnyPublisher<SignInEntity.Response.UserInfo, CompositeError> {
    { [weak self] _ in
      guard let self = self else {
        return Fail(error: CompositeError.weakCaptureOrTypeCastingFail).eraseToAnyPublisher()
      }

      guard let mock = self.response.signIn else {
        return Fail(error: CompositeError.responseError(.init(code: 999, message: "fail")))
          .eraseToAnyPublisher()
      }

      return Just(mock)
        .setFailureType(to: CompositeError.self)
        .eraseToAnyPublisher()
    }
  }
}
