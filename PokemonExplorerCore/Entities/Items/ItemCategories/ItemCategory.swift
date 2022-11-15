/// Item categories determine where items will be placed in the players bag.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemcategory).
struct ItemCategory: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of items that are a part of this category.
  let items: [NamedAPIResource<Item>]

  /// The name of this item category listed in different languages.
  let names: [Name]

  /// The pocket items in this category would be put in.
  let pocket: NamedAPIResource<ItemPocket>
}
