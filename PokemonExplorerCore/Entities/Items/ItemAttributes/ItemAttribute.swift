/// Item attributes define particular aspects of items, e.g. "usable in battle"
/// or "consumable".
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemattribute).
struct ItemAttribute: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of items that have this attribute.
  let items: [NamedAPIResource<Item>]

  /// The name of this item attribute listed in different languages.
  let names: [Name]

  /// The description of this item attribute listed in different languages.
  let descriptions: [Description]
}
