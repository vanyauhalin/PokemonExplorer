/// Very general categories that loosely group move effects.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movecategory).
public struct MoveCategory: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of moves that fall into this category.
  public let moves: [NamedAPIResource<Move>]

  /// The description of this resource listed in different languages.
  public let descriptions: [Description]
}
