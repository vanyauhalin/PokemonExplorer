/// `VersionGameIndex`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongameindex).
public struct VersionGameIndex: Codable {
  /// The internal id of an API resource within game data.
  public let gameIndex: Int

  /// The version relevent to this game index.
  public let version: NamedAPIResource<Version>
}
