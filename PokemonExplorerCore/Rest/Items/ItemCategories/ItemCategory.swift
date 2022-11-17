/// Item categories determine where items will be placed in the players bag.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemcategory).
public struct ItemCategory: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of items that are a part of this category.
  public let items: [NamedAPIResource<Item>]

  /// The name of this item category listed in different languages.
  public let names: [Name]

  /// The pocket items in this category would be put in.
  public let pocket: NamedAPIResource<ItemPocket>
}
