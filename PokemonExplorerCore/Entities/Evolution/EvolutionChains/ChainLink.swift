/// `ChainLink`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#chainlink).
struct ChainLink: Codable {
  enum CodingKeys: String, CodingKey {
    case isBaby = "is_baby"
    case species
    case evolutionDetails = "evolution_details"
    case evolvesTo = "evolves_to"
  }

  /// Whether or not this link is for a baby Pokémon. This would only ever be
  /// true on the base link.
  let isBaby: Bool

  /// The Pokémon species at this point in the evolution chain.
  let species: NamedAPIResource<PokemonSpecies>

  /// All details regarding the specific details of the referenced Pokémon
  /// species evolution.
  let evolutionDetails: [EvolutionDetail]

  /// A List of chain objects.
  let evolvesTo: [ChainLink]
}
