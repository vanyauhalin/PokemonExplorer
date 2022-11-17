/// `ContestName`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contestname).
public struct ContestName: Codable {
  /// The name for this contest.
  public let name: String

  /// The color associated with this contest's name.
  public let color: String

  /// The language that this name is in.
  public let language: NamedAPIResource<Language>
}
