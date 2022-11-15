/// `TypeRelations`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#typerelations).
struct TypeRelations: Codable {
  enum CodingKeys: String, CodingKey {
    case noDamageTo = "no_damage_to"
    case halfDamageTo = "half_damage_to"
    case doubleDamageTo = "double_damage_to"
    case noDamageFrom = "no_damage_from"
    case halfDamageFrom = "half_damage_from"
    case doubleDamageFrom = "double_damage_from"
  }

  /// A list of types this type has no effect on.
  let noDamageTo: [NamedAPIResource<PType>]

  /// A list of types this type is not very effect against.
  let halfDamageTo: [NamedAPIResource<PType>]

  /// A list of types this type is very effect against.
  let doubleDamageTo: [NamedAPIResource<PType>]

  /// A list of types that have no effect on this type.
  let noDamageFrom: [NamedAPIResource<PType>]

  /// A list of types that are not very effective against this type.
  let halfDamageFrom: [NamedAPIResource<PType>]

  /// A list of types that are very effective against this type.
  let doubleDamageFrom: [NamedAPIResource<PType>]
}
