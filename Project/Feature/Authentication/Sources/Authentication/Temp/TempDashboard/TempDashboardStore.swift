import ComposableArchitecture
import Domain
import Foundation

struct TempDashboardStore: ReducerProtocol {
  struct State: Equatable {
    var userInfo: UserEntity.Response.UserInfo? = .none
  }

  enum Action: Equatable {
    case onTapLogin
    case getUserInfo
    case fetchUserInfo(Result<UserEntity.Response.UserInfo, CompositeError>)
  }

  public init(sideEffect: TempDashboardSideEffect) {
    self.sideEffect = sideEffect
  }

  let sideEffect: TempDashboardSideEffect

  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .getUserInfo:
        return .none

      case .onTapLogin:
        return .none

      case .fetchUserInfo(let result):
        switch result {
        case .success(let info):
          state.userInfo = info
          return .none

        case .failure(let error):
          print(error)
          return .none
        }
      }
    }
  }
}
