/// `GenerationGameIndex`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#generationgameindex).
public struct GenerationGameIndex: Codable {
  /// The internal id of an API resource within game data.
  public let gameIndex: Int

  /// The generation relevent to this game index.
  public let generation: NamedAPIResource<Generation>
}
