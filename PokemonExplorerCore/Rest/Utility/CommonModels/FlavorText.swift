/// `FlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#flavortext).
public struct FlavorText: Codable {
  /// The localized flavor text for an API resource in a specific language. Note
  /// that this text is left unprocessed as it is found in game files. This
  /// means that it contains special characters that one might want to replace
  /// with their visible decodable version. Please check out this issue to find
  /// out more.
  public let flavorText: String

  /// The language this name is in.
  public let language: NamedAPIResource<Language>

  /// The game version this flavor text is extracted from.
  public let version: NamedAPIResource<Version>
}
