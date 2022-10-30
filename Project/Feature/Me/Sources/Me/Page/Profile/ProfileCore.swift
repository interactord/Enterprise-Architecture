import ComposableArchitecture
import Domain

public struct ProfileCore: ReducerProtocol {
  public struct State: Equatable {
    var userInfo: UserEntity.Response.UserInfo? = .none

    public init() {
    }
  }

  public enum Action: Equatable {
    case getUserInfo
    case fetchUserInfo(Result<UserEntity.Response.UserInfo, CompositeError>)
  }

  public init(sideEffect: ProfileSideEffect) {
    self.sideEffect = sideEffect
  }

  let sideEffect: ProfileSideEffect

  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .getUserInfo:
        enum GetUserInfoRequestID {}
        return sideEffect.getUserInfo()
          .map(Action.fetchUserInfo)
          .cancellable(id: GetUserInfoRequestID.self, cancelInFlight: true)

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
