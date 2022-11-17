/// Evolution triggers are the events and conditions that cause a Pokémon to
/// evolve. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Methods_of_evolution)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#evolutiontrigger).
public struct EvolutionTrigger: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of pokemon species that result from this evolution trigger.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
