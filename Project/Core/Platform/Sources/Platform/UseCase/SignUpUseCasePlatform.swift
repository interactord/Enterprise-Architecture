import Combine
import Domain
import Foundation

// MARK: - SignUpUseCasePlatform

public struct SignUpUseCasePlatform {
  let core: NetworkService

  init(core: NetworkService) {
    self.core = core
  }
}

// MARK: SignUpUseCase

extension SignUpUseCasePlatform: SignUpUseCase {
  public var register: (Domain.SignUpEntity.Request.RegisterForm)
    -> AnyPublisher<Domain.SignUpEntity.Response.UserInfo, Domain.CompositeError> {
    { requestModel in
      core
        .fetch(requestModel.mapToEndpoint())
        .decode(type: Domain.SignUpEntity.Response.UserInfo.self, decoder: JSONDecoder())
        .catch { error -> AnyPublisher<Domain.SignUpEntity.Response.UserInfo, Domain.CompositeError> in
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

extension Domain.SignUpEntity.Request.RegisterForm {
  func mapToEndpoint() -> NetworkService.Endpoint {
    .init(path: "/sign-up/email", method: "POST", parameter: [:], httpBody: mapToJSONBody())
  }
}
