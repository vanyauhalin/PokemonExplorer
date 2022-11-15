/// Characteristics indicate which stat contains a Pokémon's highest IV. A
/// Pokémon's Characteristic is determined by the remainder of its highest IV
/// divided by 5 (gene\_modulo). Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Characteristic)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#characteristic).
struct Characteristic: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case geneModulo = "gene_modulo"
    case possibleValues = "possible_values"
  }

  /// The identifier for this resource.
  let id: Int

  /// The remainder of the highest stat/IV divided by 5.
  let geneModulo: Int

  /// The possible values of the highest stat that would result in a Pokémon
  /// recieving this characteristic when divided by 5.
  let possibleValues: [Int]
}
