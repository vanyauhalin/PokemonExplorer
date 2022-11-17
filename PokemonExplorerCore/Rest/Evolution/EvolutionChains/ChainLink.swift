/// `ChainLink`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#chainlink).
public struct ChainLink: Codable {
  /// Whether or not this link is for a baby Pokémon. This would only ever be
  /// true on the base link.
  public let isBaby: Bool

  /// The Pokémon species at this point in the evolution chain.
  public let species: NamedAPIResource<PokemonSpecies>

  /// All details regarding the specific details of the referenced Pokémon
  /// species evolution.
  public let evolutionDetails: [EvolutionDetail]

  /// A List of chain objects.
  public let evolvesTo: [ChainLink]
}
