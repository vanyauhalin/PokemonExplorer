import Foundation

public struct MachinesServices {
  public let session: URLSession

  public lazy private(set) var machine
    = MachineService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
