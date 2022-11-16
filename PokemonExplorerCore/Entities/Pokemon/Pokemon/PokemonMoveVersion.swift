/// `PokemonMoveVersion`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonmoveversion).
struct PokemonMoveVersion: Codable {
  /// The method by which the move is learned.
  let moveLearnMethod: NamedAPIResource<MoveLearnMethod>

  /// The version group in which the move is learned.
  let versionGroup: NamedAPIResource<VersionGroup>

  /// The minimum level to learn the move.
  let levelLearnedAt: Int
}
