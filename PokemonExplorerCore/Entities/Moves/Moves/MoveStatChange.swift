/// `MoveStatChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movestatchange).
struct MoveStatChange: Codable {
  /// The amount of change.
  let change: Int

  /// The stat being affected.
  let stat: NamedAPIResource<Stat>
}
