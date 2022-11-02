import SwiftUI
import LinkNavigator

@main
struct AppMain: App {

  @UIApplicationDelegateAdaptor var delegate: AppDelegate

  var navigator: LinkNavigator {
    delegate.linkNavigator
  }

  var body: some Scene {
    WindowGroup {
      navigator
        .launch(paths: ["dashboard"], items: [:])
    }
  }
}
