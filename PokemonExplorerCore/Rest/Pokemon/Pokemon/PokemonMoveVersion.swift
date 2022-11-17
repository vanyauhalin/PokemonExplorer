/// `PokemonMoveVersion`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonmoveversion).
public struct PokemonMoveVersion: Codable {
  /// The method by which the move is learned.
  public let moveLearnMethod: NamedAPIResource<MoveLearnMethod>

  /// The version group in which the move is learned.
  public let versionGroup: NamedAPIResource<VersionGroup>

  /// The minimum level to learn the move.
  public let levelLearnedAt: Int
}
