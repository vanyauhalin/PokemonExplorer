/// The various effects of the move "Fling" when used with different items.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemflingeffect).
struct ItemFlingEffect: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The result of this fling effect listed in different languages.
  let effectEntries: [Effect]

  /// A list of items that have this fling effect.
  let items: [NamedAPIResource<Item>]
}

