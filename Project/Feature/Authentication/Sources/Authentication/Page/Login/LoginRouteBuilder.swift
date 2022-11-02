import Foundation
import LinkNavigator
import SwiftUI

struct LoginRouteBuilder: RouteBuilder {

  var matchPath: String { "login" }

  var build: (LinkNavigatorType, [String : String], DependencyType) -> UIViewController? {
    { navigator, _, diContainer in
      guard let sideEffectSet: AuthenticationSideEffectSet = diContainer.resolve() else { return .none }

      return WrappingController(matchingKey: matchPath) {
        AnyView(
          LoginPage(store: .init(
            initialState: .init(id: "", password: ""),
            reducer: LoginStore(
              sideEffect: .init(
                signInUseCase: sideEffectSet.signInUseCase,
                navigator: navigator))))
        )
      }
    }
  }
}
