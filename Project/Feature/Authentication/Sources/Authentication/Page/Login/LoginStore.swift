import ComposableArchitecture
import Foundation

struct LoginStore: ReducerProtocol {
  struct State: Equatable {
    @BindableState var id: String
    @BindableState var password: String
  }

  enum Action: Equatable, BindableAction {
    case binding(BindingAction<State>)
    case onTapLogin
  }

  public init(sideEffect: LoginSideEffect) {
    self.sideEffect = sideEffect
  }

  let sideEffect: LoginSideEffect

  public var body: some ReducerProtocol<State, Action> {
    BindingReducer()
    Reduce { state, action in
      switch action {
      case .binding:
        return .none
      case .onTapLogin:
        return .none
      }
    }
  }
}
