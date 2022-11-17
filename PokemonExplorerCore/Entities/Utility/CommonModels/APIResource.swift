/// `APIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#apiresource).
public struct APIResource<T>: Codable {
  /// The URL of the referenced resource.
  public let url: String
}
