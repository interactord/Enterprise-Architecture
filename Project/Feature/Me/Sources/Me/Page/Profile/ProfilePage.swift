import ComposableArchitecture
import SwiftUI

public struct ProfilePage {
  private let store: StoreOf<ProfileCore>
  @ObservedObject var viewStore: ViewStoreOf<ProfileCore>

  public init(store: StoreOf<ProfileCore>) {
    self.store = store
    viewStore = ViewStore(store)
  }
}

extension ProfilePage: View {
  public var body: some View {
    NavigationView {
      VStack {
        Text(viewStore.userInfo?.userName ?? "")
      }
      .navigationTitle("Profile")
      .onAppear {
        viewStore.send(.getUserInfo)
      }
    }
  }
}
