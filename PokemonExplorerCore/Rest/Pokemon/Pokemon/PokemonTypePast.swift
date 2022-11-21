/// `PokemonTypePast`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemontypepast).
public class PokemonTypePast: Codable {
  /// The last generation in which the referenced pokémon had the listed types.
  public var generation: NamedAPIResource<Generation>?

  /// The types the referenced pokémon had up to and including the listed
  /// generation.
  public var types: [PokemonType]
}
