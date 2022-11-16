/// `PalParkEncounterSpecies`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#palparkencounterspecies).
struct PalParkEncounterSpecies: Codable {
  /// The base score given to the player when this Pokémon is caught during a
  /// pal park run.
  let baseScore: Int

  /// The base rate for encountering this Pokémon in this pal park area.
  let rate: Int

  /// The Pokémon species being encountered.
  let pokemonSpecies: NamedAPIResource<PokemonSpecies>
}
