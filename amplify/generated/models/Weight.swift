// swiftlint:disable all
import Amplify
import Foundation

public struct Weight: Model {
  public let id: String
  public var weight: Int
  
  public init(id: String = UUID().uuidString,
      weight: Int) {
      self.id = id
      self.weight = weight
  }
}