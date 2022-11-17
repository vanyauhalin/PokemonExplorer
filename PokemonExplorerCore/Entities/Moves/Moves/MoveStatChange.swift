/// `MoveStatChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movestatchange).
public struct MoveStatChange: Codable {
  /// The amount of change.
  public let change: Int

  /// The stat being affected.
  public let stat: NamedAPIResource<Stat>
}
