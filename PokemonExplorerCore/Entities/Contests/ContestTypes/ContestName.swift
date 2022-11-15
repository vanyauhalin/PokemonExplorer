/// `ContestName`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contestname).
struct ContestName: Codable {
  /// The name for this contest.
  let name: String

  /// The color associated with this contest's name.
  let color: String

  /// The language that this name is in.
  let language: NamedAPIResource<Language>
}
