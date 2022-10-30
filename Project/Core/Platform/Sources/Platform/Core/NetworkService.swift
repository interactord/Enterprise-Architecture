import Combine
import Domain
import Foundation

// MARK: - NetworkService

final class NetworkService {

  // MARK: Lifecycle

  init(baseURL: String) {
    self.baseURL = baseURL
  }

  // MARK: Internal

  let baseURL: String

}

extension NetworkService {
  var fetch: (Endpoint) -> AnyPublisher<Data, CompositeError> {
    { _ in
      Just(Data())
        .setFailureType(to: CompositeError.self)
        .eraseToAnyPublisher()
    }
  }
}

extension NetworkService {
  struct Endpoint: Equatable {
    let path: String
    let method: String
    let parameter: [String: String]
    let httpBody: Data?
  }
}
