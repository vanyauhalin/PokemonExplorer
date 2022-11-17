/// The various effects of the move "Fling" when used with different items.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemflingeffect).
public struct ItemFlingEffect: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The result of this fling effect listed in different languages.
  public let effectEntries: [Effect]

  /// A list of items that have this fling effect.
  public let items: [NamedAPIResource<Item>]
}
