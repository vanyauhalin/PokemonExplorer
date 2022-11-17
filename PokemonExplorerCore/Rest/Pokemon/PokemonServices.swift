import Foundation

public struct PokemonServices {
  public let session: URLSession

  public lazy private(set) var ability
    = AbilityService(session: session)
  public lazy private(set) var characteristic
    = CharacteristicService(session: session)
  public lazy private(set) var eggGroup
    = EggGroupService(session: session)
  public lazy private(set) var gender
    = GenderService(session: session)
  public lazy private(set) var growthRate
    = GrowthRateService(session: session)
  public lazy private(set) var nature
    = NatureService(session: session)
  public lazy private(set) var pokeathlonStat
    = PokeathlonStatService(session: session)
  public lazy private(set) var pokemon
    = PokemonService(session: session)
  public lazy private(set) var pokemonColor
    = PokemonColorService(session: session)
  public lazy private(set) var pokemonForm
    = PokemonFormService(session: session)
  public lazy private(set) var pokemonHabitat
    = PokemonHabitatService(session: session)
  public lazy private(set) var pokemonShape
    = PokemonShapeService(session: session)
  public lazy private(set) var pokemonSpecies
    = PokemonSpeciesService(session: session)
  public lazy private(set) var stat
    = StatService(session: session)
  public lazy private(set) var type
    = TypeService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
