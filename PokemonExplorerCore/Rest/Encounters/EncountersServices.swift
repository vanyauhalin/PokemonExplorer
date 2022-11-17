import Foundation

public struct EncountersServices {
  public let session: URLSession

  public lazy private(set) var encounterMethod
    = EncounterMethodService(session: session)
  public lazy private(set) var encounterCondition
    = EncounterConditionService(session: session)
  public lazy private(set) var encounterConditionValue
    = EncounterConditionValueService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
