import Foundation

// MARK: - SendableParameterQueryType

public protocol SendableParameterQueryType {
  func mapToParameter() -> [String: String]
}

// MARK: - SendableJSONBodyType

public protocol SendableJSONBodyType {
  func mapToJSONBody() -> Data
}
