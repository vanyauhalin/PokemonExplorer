/// `PokemonEncounter`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonencounter).
public struct PokemonEncounter: Codable {
  /// The Pokémon being encountered.
  public let pokemon: NamedAPIResource<Pokemon>

  /// A list of versions and encounters with Pokémon that might happen in the
  /// referenced location area.
  public let versionDetails: [VersionEncounterDetail]
}
