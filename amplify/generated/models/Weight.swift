// swiftlint:disable all
import Amplify
import Foundation

public struct Weight: Model {
  public let id: String
  public var weight: Int?
  public var user: User?
  
  public init(id: String = UUID().uuidString,
      weight: Int? = nil,
      user: User? = nil) {
      self.id = id
      self.weight = weight
      self.user = user
  }
}