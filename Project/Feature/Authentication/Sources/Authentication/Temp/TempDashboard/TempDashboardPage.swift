import ComposableArchitecture
import SwiftUI

struct TempDashboardPage {
  private let store: StoreOf<TempDashboardStore>
  let viewStore: ViewStoreOf<TempDashboardStore>

  init(store: StoreOf<TempDashboardStore>) {
    self.store = store
    viewStore = ViewStore(store)
  }
}

extension TempDashboardPage: View {
  public var body: some View {
    VStack {
      Spacer()
      Text("Dashboard Page")
      Spacer()
    }.navigationTitle("Temp Dashboard")
  }
}


