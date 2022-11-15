/// `PokemonEncounter`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonencounter).
struct PokemonEncounter: Codable {
  enum CodingKeys: String, CodingKey {
    case pokemon
    case versionDetails = "version_details"
  }

  /// The Pokémon being encountered.
  let pokemon: NamedAPIResource<Pokemon>

  /// A list of versions and encounters with Pokémon that might happen in the
  /// referenced location area.
  let versionDetails: [VersionEncounterDetail]
}
