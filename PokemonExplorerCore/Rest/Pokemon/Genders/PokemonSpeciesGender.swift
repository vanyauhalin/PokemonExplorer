/// `PokemonSpeciesGender`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspeciesgender).
public struct PokemonSpeciesGender: Codable {
  /// The chance of this Pokémon being female, in eighths; or -1 for genderless.
  public let rate: Int

  /// A Pokémon species that can be the referenced gender.
  public let pokemonSpecies: NamedAPIResource<PokemonSpecies>
}
