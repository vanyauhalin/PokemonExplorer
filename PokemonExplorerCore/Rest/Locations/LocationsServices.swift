import Foundation

public struct LocationsServices {
  public let session: URLSession

  public lazy private(set) var location
    = LocationService(session: session)
  public lazy private(set) var locationArea
    = LocationAreaService(session: session)
  public lazy private(set) var palParkArea
    = PalParkAreaService(session: session)
  public lazy private(set) var region
    = RegionService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
