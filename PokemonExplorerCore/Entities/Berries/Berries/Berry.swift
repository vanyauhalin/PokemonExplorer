/// Berries are small fruits that can provide HP and status condition
/// restoration, stat enhancement, and even damage negation when eaten by
/// Pokémon. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Berry) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berry).
public struct Berry: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// Time it takes the tree to grow one stage, in hours. Berry trees go through
  /// four of these growth stages before they can be picked.
  public let growthTime: Int

  /// The maximum number of these berries that can grow on one tree in
  /// Generation IV.
  public let maxHarvest: Int

  /// The power of the move "Natural Gift" when used with this Berry.
  public let naturalGiftPower: Int

  /// The size of this Berry, in millimeters.
  public let size: Int

  /// The smoothness of this Berry, used in making Pokéblocks or Poffins.
  public let smoothness: Int

  /// The speed at which this Berry dries out the soil as it grows. A higher
  /// rate means the soil dries more quickly.
  public let soilDryness: Int

  /// The firmness of this berry, used in making Pokéblocks or Poffins.
  public let firmness: NamedAPIResource<BerryFirmness>

  /// A list of references to each flavor a berry can have and the potency of
  /// each of those flavors in regard to this berry.
  public let flavors: [BerryFlavorMap]

  /// Berries are actually items. This is a reference to the item specific data
  /// for this berry.
  public let item: NamedAPIResource<Item>

  /// The type inherited by "Natural Gift" when used with this Berry.
  public let naturalGiftType: NamedAPIResource<PType>
}
