/// `NamedAPIResourceList`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresourcelist).
struct NamedAPIResourceList<T>: Codable {
  /// The total number of resources available from this API.
  let count: Int

  /// The URL for the next page in the list.
  let next: String

  /// The URL for the previous page in the list.
  let previous: String

  /// A list of named API resources.
  let results: [NamedAPIResource<T>]
}
