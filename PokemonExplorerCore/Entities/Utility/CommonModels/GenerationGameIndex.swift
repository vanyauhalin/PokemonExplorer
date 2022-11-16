/// `GenerationGameIndex`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#generationgameindex).
struct GenerationGameIndex: Codable {
  /// The internal id of an API resource within game data.
  let gameIndex: Int

  /// The generation relevent to this game index.
  let generation: NamedAPIResource<Generation>
}
