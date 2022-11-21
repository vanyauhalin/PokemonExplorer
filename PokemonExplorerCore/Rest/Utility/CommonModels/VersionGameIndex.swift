/// `VersionGameIndex`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongameindex).
public class VersionGameIndex: Codable {
  /// The internal id of an API resource within game data.
  public var gameIndex: Int

  /// The version relevent to this game index.
  public var version: NamedAPIResource<Version>?
}
