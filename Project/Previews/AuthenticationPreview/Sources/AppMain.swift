import Authentication
import SwiftUI

@main
struct AppMain: App {

  let auth = Authentication()

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
