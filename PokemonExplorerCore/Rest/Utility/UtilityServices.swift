import Foundation

public struct UtilityServices {
  public let session: URLSession

  public lazy private(set) var language
    = LanguageService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
