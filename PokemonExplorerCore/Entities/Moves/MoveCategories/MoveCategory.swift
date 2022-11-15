/// Very general categories that loosely group move effects.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movecategory).
struct MoveCategory: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of moves that fall into this category.
  let moves: [NamedAPIResource<Move>]

  /// The description of this resource listed in different languages.
  let descriptions: [Description]
}
