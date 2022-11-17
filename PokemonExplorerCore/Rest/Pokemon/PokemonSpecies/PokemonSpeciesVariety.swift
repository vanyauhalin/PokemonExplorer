/// `PokemonSpeciesVariety`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspeciesvariety).
public struct PokemonSpeciesVariety: Codable {
  /// Whether this variety is the default variety.
  public let isDefault: Bool

  /// The Pokémon variety.
  public let pokemon: NamedAPIResource<Pokemon>
}
