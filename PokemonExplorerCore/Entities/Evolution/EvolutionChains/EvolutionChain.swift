/// Evolution chains are essentially family trees. They start with the lowest
/// stage within a family and detail evolution conditions for each as well as
/// Pokémon they can evolve into up through the hierarchy.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#evolutionchain).
struct EvolutionChain: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The item that a Pokémon would be holding when mating that would trigger
  /// the egg hatching a baby Pokémon rather than a basic Pokémon.
  let babyTriggerItem: NamedAPIResource<Item>

  /// The base chain link object. Each link contains evolution details for a
  /// Pokémon in the chain. Each link references the next Pokémon in the natural
  /// evolution order.
  let chain: ChainLink
}
