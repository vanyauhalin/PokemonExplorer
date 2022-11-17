import Foundation

public struct Rest {
  public let session: URLSession

  public lazy private(set) var berries
    = BerriesServices(session: session)
  public lazy private(set) var contests
    = ContestsServices(session: session)
  public lazy private(set) var encounters
    = EncountersServices(session: session)
  public lazy private(set) var evolution
    = EvolutionServices(session: session)
  public lazy private(set) var games
    = GamesServices(session: session)
  public lazy private(set) var items
    = ItemsServices(session: session)
  public lazy private(set) var locations
    = LocationsServices(session: session)
  public lazy private(set) var machines
    = MachinesServices(session: session)
  public lazy private(set) var moves
    = MovesServices(session: session)
  public lazy private(set) var pokemon
    = PokemonServices(session: session)
  public lazy private(set) var utility
    = UtilityServices(session: session)

  public init(session: URLSession = URLSession.shared) {
    self.session = session
  }
}
