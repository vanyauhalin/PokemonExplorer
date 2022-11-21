import RealmSwift

/// `NamedAPIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresource).
public class NamedAPIResource<T>: Object, ObjectKeyIdentifiable, Codable
where T: Codable {
  /// The name of the referenced resource.
  @Persisted public var name: String

  /// The URL of the referenced resource.
  @Persisted public var url: String
}
