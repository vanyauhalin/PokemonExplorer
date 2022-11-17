import Foundation

public struct MovesServices {
  public let session: URLSession

  public lazy private(set) var move
    = MoveService(session: session)
  public lazy private(set) var moveAilment
    = MoveAilmentService(session: session)
  public lazy private(set) var moveBattleStyle
    = MoveBattleStyleService(session: session)
  public lazy private(set) var moveCategory
    = MoveCategoryService(session: session)
  public lazy private(set) var moveDamageClass
    = MoveDamageClassService(session: session)
  public lazy private(set) var moveLearnMethod
    = MoveLearnMethodService(session: session)
  public lazy private(set) var moveTarget
    = MoveTargetService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
