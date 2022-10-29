import Authencation
import Dashboard
import Event
import Me
import SwiftUI

@main
struct AppMain: App {

  let auth = Authencation()
  let dashboard = Dashboard()
  let event = Event()
  let me = Me()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        VStack {
          Spacer()
          Text("My App")
          Spacer()
        }
      }
    }
  }
}
