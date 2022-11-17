/// Move Ailments are status conditions caused by moves used during battle. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/http://bulbapedia.bulbagarden.net/wiki/Status_condition)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#moveailment).
public struct MoveAilment: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of moves that cause this ailment.
  public let moves: [NamedAPIResource<Move>]

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
