import Me
import SwiftUI

@main
struct AppMain: App {
  @UIApplicationDelegateAdaptor var delegate: AppDelegate

  var sideEffect: ProfileSideEffect {
    .init(userUseCase: delegate.sideEffect.userUseCase)
  }

  var body: some Scene {
    WindowGroup {
      ProfilePage(store: .init(initialState: .init(), reducer: ProfileCore(sideEffect: sideEffect)))
    }
  }
}
