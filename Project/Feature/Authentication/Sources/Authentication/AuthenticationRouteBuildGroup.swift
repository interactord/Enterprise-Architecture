import Foundation
import LinkNavigator

public struct AuthenticationRouterBuildGroup {
  public init() {}
}

extension AuthenticationRouterBuildGroup {
  public static var release: [RouteBuilder] {
    [
      LoginRouteBuilder(),
    ]
  }

  public static var preview: [RouteBuilder] {
   [
    TempDashboardRouteBuilder(),
   ]
  }
}
