import Foundation

public struct ContestsServices {
  public let session: URLSession

  public lazy private(set) var contestType
    = ContestTypeService(session: session)
  public lazy private(set) var contestEffect
    = ContestEffectService(session: session)
  public lazy private(set) var superContestEffect
    = SuperContestEffectService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
