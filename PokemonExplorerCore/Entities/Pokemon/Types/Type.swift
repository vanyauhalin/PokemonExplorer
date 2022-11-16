/// Types are properties for Pokémon and their moves. Each type has three
/// properties: which types of Pokémon it is super effective against, which
/// types of Pokémon it is not very effective against, and which types of
/// Pokémon it is completely ineffective against.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#type).
struct PType: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A detail of how effective this type is toward others and vice versa.
  let damageRelations: TypeRelations

  /// A list of details of how effective this type was toward others and vice
  /// versa in previous generations
  let pastDamageRelations: [TypeRelationsPast<PType>]

  /// A list of game indices relevent to this item by generation.
  let gameIndices: [GenerationGameIndex]

  /// The generation this type was introduced in.
  let generation: NamedAPIResource<Generation>

  /// The class of damage inflicted by this type.
  let moveDamageClass: NamedAPIResource<MoveDamageClass>

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of details of Pokémon that have this type.
  let pokemon: [TypePokemon]

  /// A list of moves that have this type.
  let moves: [NamedAPIResource<Move>]
}
