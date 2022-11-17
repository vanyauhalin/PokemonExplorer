/// Characteristics indicate which stat contains a Pokémon's highest IV. A
/// Pokémon's Characteristic is determined by the remainder of its highest IV
/// divided by 5 (gene\_modulo). Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Characteristic)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#characteristic).
public struct Characteristic: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The remainder of the highest stat/IV divided by 5.
  public let geneModulo: Int

  /// The possible values of the highest stat that would result in a Pokémon
  /// recieving this characteristic when divided by 5.
  public let possibleValues: [Int]
}
