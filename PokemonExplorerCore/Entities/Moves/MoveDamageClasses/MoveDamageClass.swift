/// Damage classes moves can have, e.g. physical, special, or non-damaging.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movedamageclass).
struct MoveDamageClass: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The description of this resource listed in different languages.
  let descriptions: [Description]

  /// A list of moves that fall into this damage class.
  let moves: [NamedAPIResource<Move>]

  /// The name of this resource listed in different languages.
  let names: [Name]
}
