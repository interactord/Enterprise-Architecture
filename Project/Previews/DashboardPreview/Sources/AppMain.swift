import Dashboard
import SwiftUI

@main
struct AppMain: App {

  let dashboard = Dashboard()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        VStack {
          Spacer()
          Text("Dashboard Preview")
          Spacer()
        }
      }
    }
  }
}
