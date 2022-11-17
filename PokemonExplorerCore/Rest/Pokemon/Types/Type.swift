/// Types are properties for Pokémon and their moves. Each type has three
/// properties: which types of Pokémon it is super effective against, which
/// types of Pokémon it is not very effective against, and which types of
/// Pokémon it is comppublic letely ineffective against.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#type).
public struct PType: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A detail of how effective this type is toward others and vice versa.
  public let damageRelations: TypeRelations

  /// A list of details of how effective this type was toward others and vice
  /// versa in previous generations
  public let pastDamageRelations: [TypeRelationsPast<PType>]

  /// A list of game indices relevent to this item by generation.
  public let gameIndices: [GenerationGameIndex]

  /// The generation this type was introduced in.
  public let generation: NamedAPIResource<Generation>

  /// The class of damage inflicted by this type.
  public let moveDamageClass: NamedAPIResource<MoveDamageClass>

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of details of Pokémon that have this type.
  public let pokemon: [TypePokemon]

  /// A list of moves that have this type.
  public let moves: [NamedAPIResource<Move>]
}
