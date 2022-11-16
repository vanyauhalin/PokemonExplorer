/// `PokemonSpeciesVariety`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspeciesvariety).
struct PokemonSpeciesVariety: Codable {
  /// Whether this variety is the default variety.
  let isDefault: Bool

  /// The Pokémon variety.
  let pokemon: NamedAPIResource<Pokemon>
}
