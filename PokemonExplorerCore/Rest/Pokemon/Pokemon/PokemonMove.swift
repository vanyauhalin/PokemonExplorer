/// `PokemonMove`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonmove).
public struct PokemonMove: Codable {
  /// The move the Pokémon can learn.
  public let move: NamedAPIResource<Move>

  /// The details of the version in which the Pokémon can learn the move.
  public let versionGroupDetails: [PokemonMoveVersion]
}