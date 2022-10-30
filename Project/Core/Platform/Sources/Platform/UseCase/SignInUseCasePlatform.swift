import Combine
import Domain
import Foundation

// MARK: - SignInUseCasePlatform

public struct SignInUseCasePlatform {
  let core: NetworkService

  init(core: NetworkService) {
    self.core = core
  }
}

// MARK: SignInUseCase

extension SignInUseCasePlatform: SignInUseCase {
  public var signIn: (Domain.SignInEntity.Request.Email)
    -> AnyPublisher<Domain.SignInEntity.Response.UserInfo, Domain.CompositeError> {
    { requestModel in
      core
        .fetch(requestModel.mapToEndpoint())
        .decode(type: Domain.SignInEntity.Response.UserInfo.self, decoder: JSONDecoder())
        .catch { error -> AnyPublisher<Domain.SignInEntity.Response.UserInfo, Domain.CompositeError> in
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

extension Domain.SignInEntity.Request.Email {
  func mapToEndpoint() -> NetworkService.Endpoint {
    .init(path: "/sign-in/email", method: "POST", parameter: [:], httpBody: mapToJSONBody())
  }
}
