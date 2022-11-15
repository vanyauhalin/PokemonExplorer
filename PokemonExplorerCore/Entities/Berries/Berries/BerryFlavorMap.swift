/// `BerryFlavorMap`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berryflavormap).
struct BerryFlavorMap: Codable {
  /// How powerful the referenced flavor is for this berry.
  let potency: Int

  /// The referenced berry flavor.
  let flavor: NamedAPIResource<BerryFlavor>
}
