import Foundation

// MARK: - CompositeError

public enum CompositeError: Error, LocalizedError {
  case responseError(ResponseError)
  case networkOffline
  case clientError(Error)
  case weakCaptureOrTypeCastingFail

  public var errorDescription: String? {
    switch self {
    case .responseError(let error): return error.message
    case .networkOffline: return "Network Offline"
    case .clientError(let error): return error.localizedDescription
    case .weakCaptureOrTypeCastingFail: return "weakCaptureOrTypeCastingFail"
    }
  }
}

extension CompositeError: Equatable {
  public static func == (lhs: Self, rhs: Self) -> Bool {
    return lhs.errorDescription == rhs.errorDescription
  }
}

extension CompositeError {
  public struct ResponseError: Codable, Equatable {
    public let code: Int
    public let message: String

    public init(code: Int, message: String) {
      self.code = code
      self.message = message
    }
  }
}
