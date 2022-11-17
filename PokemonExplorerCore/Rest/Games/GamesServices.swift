import Foundation

public struct GamesServices {
  public let session: URLSession

  public lazy private(set) var generation
    = GenerationService(session: session)
  public lazy private(set) var pokedex
    = PokedexService(session: session)
  public lazy private(set) var version
    = VersionService(session: session)
  public lazy private(set) var versionGroup
    = VersionGroupService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
