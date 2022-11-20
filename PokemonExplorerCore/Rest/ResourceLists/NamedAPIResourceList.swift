/// `NamedAPIResourceList`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresourcelist).
public struct NamedAPIResourceList<T>: Codable where T: Codable {
  /// The total number of resources available from this API.
  public let count: Int

  /// The URL for the next page in the list.
  public let next: String?

  /// The URL for the previous page in the list.
  public let previous: String?

  /// A list of named API resources.
  public let results: [NamedAPIResource<T>]
}
