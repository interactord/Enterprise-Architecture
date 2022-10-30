import UIKit
import Me
import Platform


class AppDelegate: UIResponder, UIApplicationDelegate {

  let sideEffect: MeUseCaseSet = {
    let builder = Platform.UseCaseBuilder(type: .mock).build()
    return .init(userUseCase: builder.user)
  }()

  func application(
    _: UIApplication,
    didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil)
    -> Bool
  {
    return true
  }
}
