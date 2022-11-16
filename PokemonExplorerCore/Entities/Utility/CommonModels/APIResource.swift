/// `APIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#apiresource).
struct APIResource<T>: Codable {
  /// The URL of the referenced resource.
  let url: String
}
