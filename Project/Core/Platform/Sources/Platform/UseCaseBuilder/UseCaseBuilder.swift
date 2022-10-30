import Foundation

public struct UseCaseBuilder {
  let type: BuildType

  public init(type: BuildType) {
    self.type = type
  }
}

extension UseCaseBuilder {
  public enum BuildType {
    case live
    case dev(Int)
    case mock
  }
}

extension UseCaseBuilder {
  public func build() -> UseCaseSet {
    switch type {
    case .live: return live()
    case .dev(let port): return dev(port: port)
    case .mock: return mock()
    }
  }

  private func live() -> UseCaseSet {
    let networkCore = NetworkService(baseURL: "https://myApp.test.com")
    return .init(
      signUp: SignUpUseCasePlatform(core: networkCore),
      signIn: SignInUseCasePlatform(core: networkCore),
      user: UserUseCasePlatform(core: networkCore))
  }

  private func dev(port: Int) -> UseCaseSet {
    let networkCore = NetworkService(baseURL: "https://dev.test.com:\(port)")
    return .init(
      signUp: SignUpUseCasePlatform(core: networkCore),
      signIn: SignInUseCasePlatform(core: networkCore),
      user: UserUseCasePlatform(core: networkCore))
  }

  private func mock() -> UseCaseSet {
    .init(
      signUp: SignUpUseCaseMock(),
      signIn: SignInUseCaseMock(),
      user: UserUseCaseMock())
  }
}
