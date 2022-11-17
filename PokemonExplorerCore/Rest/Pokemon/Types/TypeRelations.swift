/// `TypeRelations`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#typerelations).
public struct TypeRelations: Codable {
  /// A list of types this type has no effect on.
  public let noDamageTo: [NamedAPIResource<PType>]

  /// A list of types this type is not very effect against.
  public let halfDamageTo: [NamedAPIResource<PType>]

  /// A list of types this type is very effect against.
  public let doubleDamageTo: [NamedAPIResource<PType>]

  /// A list of types that have no effect on this type.
  public let noDamageFrom: [NamedAPIResource<PType>]

  /// A list of types that are not very effective against this type.
  public let halfDamageFrom: [NamedAPIResource<PType>]

  /// A list of types that are very effective against this type.
  public let doubleDamageFrom: [NamedAPIResource<PType>]
}
