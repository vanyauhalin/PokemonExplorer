/// `FlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#flavortext).
struct FlavorText: Codable {
  enum CodingKeys: String, CodingKey {
    case flavorText = "flavor_text"
    case language
    case version
  }

  /// The localized flavor text for an API resource in a specific language. Note
  /// that this text is left unprocessed as it is found in game files. This
  /// means that it contains special characters that one might want to replace
  /// with their visible decodable version. Please check out this issue to find
  /// out more.
  let flavorText: String

  /// The language this name is in.
  let language: NamedAPIResource<Language>

  /// The game version this flavor text is extracted from.
  let version: NamedAPIResource<Version>
}
