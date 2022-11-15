/// `PokemonTypePast`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemontypepast).
struct PokemonTypePast: Codable {
  /// The last generation in which the referenced pokémon had the listed types.
  let generation: NamedAPIResource<Generation>

  /// The types the referenced pokémon had up to and including the listed
  /// generation.
  let types: [PokemonType]
}
