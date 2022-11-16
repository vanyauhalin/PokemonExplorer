/// Growth rates are the speed with which Pokémon gain levels through
/// experience. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Experience) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#growthrate).
struct GrowthRate: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The formula used to calculate the rate at which the Pokémon species gains
  /// level.
  let formula: String

  /// The descriptions of this characteristic listed in different languages.
  let descriptions: [Description]

  /// A list of levels and the amount of experienced needed to atain them based
  /// on this growth rate.
  let levels: [GrowthRateExperienceLevel]

  /// A list of Pokémon species that gain levels at this growth rate.
  let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
