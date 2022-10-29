import Me
import SwiftUI

@main
struct AppMain: App {

  let me = Me()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        VStack {
          Spacer()
          Text("Me Preview")
          Spacer()
        }
      }
    }
  }
}
