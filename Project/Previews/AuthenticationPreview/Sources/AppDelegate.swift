import UIKit
import LinkNavigator
import Authentication

class AppDelegate: UIResponder, UIApplicationDelegate {

  let linkNavigator: LinkNavigator = LinkNavigator(
    dependency: DependencySet(type: .mock),
    builders:
      AuthenticationRouterBuildGroup.release + AuthenticationRouterBuildGroup.preview)

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
      return true
  }
}
