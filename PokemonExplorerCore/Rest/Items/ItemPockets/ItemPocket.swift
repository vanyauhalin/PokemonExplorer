/// Pockets within the players bag used for storing items by category.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itempocket).
public struct ItemPocket: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of item categories that are relevant to this item pocket.
  public let categories: [NamedAPIResource<ItemCategory>]

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
