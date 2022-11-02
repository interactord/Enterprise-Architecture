import LinkNavigator
import SwiftUI

struct TempDashboardRouteBuilder: RouteBuilder {
  var matchPath: String { "dashboard" }

  var build: (LinkNavigatorType, [String : String], DependencyType) -> UIViewController? {
    { navigator, _, diContainer in
      guard let sideEffectSet: AuthenticationSideEffectSet = diContainer.resolve() else { return .none }

      return WrappingController(matchingKey: matchPath) {
        AnyView(
          TempDashboardPage(store: .init(
            initialState: TempDashboardStore.State(),
            reducer: TempDashboardStore(sideEffect: .init(
              userUseCase: sideEffectSet.userUseCase,
              linkNavigator: navigator))))
        )
      }
    }
  }
}
