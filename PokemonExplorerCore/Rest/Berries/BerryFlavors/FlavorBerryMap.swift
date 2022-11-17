/// `FlavorBerryMap`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#flavorberrymap).
public struct FlavorBerryMap: Codable {
  /// How powerful the referenced flavor is for this berry.
  public let potency: Int

  /// The berry with the referenced flavor.
  public let berry: NamedAPIResource<Berry>
}
