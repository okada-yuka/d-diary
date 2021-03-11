// swiftlint:disable all
import Amplify
import Foundation

public struct Todo: Model {
  public let id: String
  public var place: String
  public var price: Int?
  
  public init(id: String = UUID().uuidString,
      place: String,
      price: Int? = nil) {
      self.id = id
      self.place = place
      self.price = price
  }
}