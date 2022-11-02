import ComposableArchitecture
import SwiftUI

struct LoginPage {
  private let store: StoreOf<LoginStore>
  let viewStore: ViewStoreOf<LoginStore>

  init(store: StoreOf<LoginStore>) {
    self.store = store
    viewStore = ViewStore(store)
  }
}

extension LoginPage: View {
  public var body: some View {
    Text("Login Page")
  }
}


