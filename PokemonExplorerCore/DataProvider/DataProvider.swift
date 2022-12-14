import Realm
import RealmSwift

public enum DataProvider {
  public enum DataProviderError: Error {
    case write(Error)
    case add(Error)
    case delete(Error)
  }

  public static var configuration = Realm.Configuration()

  public static func realm() throws -> Realm {
    try Realm(configuration: configuration)
  }

  public static func write(action: (Realm) -> Void)
  throws {
    do {
      let realm = try realm()
      try realm.write {
        action(realm)
      }
    } catch let error {
      throw DataProviderError.write(error)
    }
  }

  public static func add<Object>(_ object: Object)
  throws where Object: RealmSwift.Object {
    do {
      try write { realm in
        realm.add(object)
      }
    } catch let error {
      throw DataProviderError.add(error)
    }
  }

  public static func delete<Object>(_ object: Object)
  throws where Object: ObjectBase {
    do {
      try write { realm in
        realm.delete(object)
      }
    } catch let error {
      throw DataProviderError.delete(error)
    }
  }
}
