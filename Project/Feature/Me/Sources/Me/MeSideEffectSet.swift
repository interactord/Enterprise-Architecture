import Foundation
import Domain

public struct MeUseCaseSet {
  public let userUseCase: UserUseCase

  public init(userUseCase: UserUseCase) {
    self.userUseCase = userUseCase
  }
}
