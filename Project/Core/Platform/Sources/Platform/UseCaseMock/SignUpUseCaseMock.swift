import Combine
import Domain
import Foundation

// MARK: - SignUpUseCaseMock

final class SignUpUseCaseMock {

  var response = Response()
}

extension SignUpUseCaseMock {
  public struct Response: Equatable {
    var register: Domain.SignUpEntity.Response.UserInfo? = .init(userID: 123)
  }
}

// MARK: SignUpUseCase

extension SignUpUseCaseMock: SignUpUseCase {
  public var register: (Domain.SignUpEntity.Request.RegisterForm)
    -> AnyPublisher<Domain.SignUpEntity.Response.UserInfo, Domain.CompositeError> {
    { [weak self] _ in
      guard let self = self else {
        return Fail(error: CompositeError.weakCaptureOrTypeCastingFail).eraseToAnyPublisher()
      }

      guard let mock = self.response.register else {
        return Fail(error: CompositeError.responseError(.init(code: 999, message: "fail")))
          .eraseToAnyPublisher()
      }

      return Just(mock)
        .setFailureType(to: CompositeError.self)
        .eraseToAnyPublisher()
    }
  }

}
