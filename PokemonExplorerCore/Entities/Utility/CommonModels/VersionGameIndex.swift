/// `VersionGameIndex`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongameindex).
struct VersionGameIndex: Codable {
  /// The internal id of an API resource within game data.
  let gameIndex: Int

  /// The version relevent to this game index.
  let version: NamedAPIResource<Version>
}
