/// Growth rates are the speed with which Pokémon gain levels through
/// experience. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Experience) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#growthrate).
public struct GrowthRate: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The formula used to calculate the rate at which the Pokémon species gains
  /// level.
  public let formula: String

  /// The descriptions of this characteristic listed in different languages.
  public let descriptions: [Description]

  /// A list of levels and the amount of experienced needed to atain them based
  /// on this growth rate.
  public let levels: [GrowthRateExperienceLevel]

  /// A list of Pokémon species that gain levels at this growth rate.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
