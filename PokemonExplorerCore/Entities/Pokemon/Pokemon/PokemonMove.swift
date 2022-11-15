/// `PokemonMove`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonmove).
struct PokemonMove: Codable {
  enum CodingKeys: String, CodingKey {
    case move
    case versionGroupDetails = "version_group_details"
  }

  /// The move the Pokémon can learn.
  let move: NamedAPIResource<Move>

  /// The details of the version in which the Pokémon can learn the move.
  let versionGroupDetails: [PokemonMoveVersion]
}

