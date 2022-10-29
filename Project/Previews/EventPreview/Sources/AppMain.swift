import Event
import SwiftUI

@main
struct AppMain: App {

  let event = Event()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        VStack {
          Spacer()
          Text("Event Preview")
          Spacer()
        }
      }
    }
  }
}
