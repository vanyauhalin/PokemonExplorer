/// `NatureStatAffectSets`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturestataffectsets).
struct NatureStatAffectSets: Codable {
  /// A list of natures and how they change the referenced stat.
  let increase: [NamedAPIResource<Nature>]

  /// A list of nature sand how they change the referenced stat.
  let decrease: [NamedAPIResource<Nature>]
}
