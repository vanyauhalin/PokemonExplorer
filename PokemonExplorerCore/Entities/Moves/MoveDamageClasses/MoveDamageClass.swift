/// Damage classes moves can have, e.g. physical, special, or non-damaging.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movedamageclass).
public struct MoveDamageClass: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The description of this resource listed in different languages.
  public let descriptions: [Description]

  /// A list of moves that fall into this damage class.
  public let moves: [NamedAPIResource<Move>]

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
