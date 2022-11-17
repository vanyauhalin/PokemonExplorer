/// `BerryFlavorMap`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berryflavormap).
public struct BerryFlavorMap: Codable {
  /// How powerful the referenced flavor is for this berry.
  public let potency: Int

  /// The referenced berry flavor.
  public let flavor: NamedAPIResource<BerryFlavor>
}
