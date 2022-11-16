/// Evolution triggers are the events and conditions that cause a Pokémon to
/// evolve. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Methods_of_evolution)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#evolutiontrigger).
struct EvolutionTrigger: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of pokemon species that result from this evolution trigger.
  let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
