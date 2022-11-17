/// `PalParkEncounterSpecies`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#palparkencounterspecies).
public struct PalParkEncounterSpecies: Codable {
  /// The base score given to the player when this Pokémon is caught during a
  /// pal park run.
  public let baseScore: Int

  /// The base rate for encountering this Pokémon in this pal park area.
  public let rate: Int

  /// The Pokémon species being encountered.
  public let pokemonSpecies: NamedAPIResource<PokemonSpecies>
}
