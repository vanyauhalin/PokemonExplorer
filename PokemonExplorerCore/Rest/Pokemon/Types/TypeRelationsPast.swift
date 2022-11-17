/// `TypeRelationsPast`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#typerelationspast).
public struct TypeRelationsPast<T>: Codable {
  /// The last generation in which the referenced type had the listed damage
  /// relations
  public let generation: NamedAPIResource<Generation>

  /// The damage relations the referenced type had up to and including the
  /// listed generation
  public let damageRelations: TypeRelations
}
