// swiftlint:disable all
import Amplify
import Foundation

public struct Meal: Model {
  public let id: String
  public var user: User?
  public var timing: String
  public var place: String
  public var price: Int?
  public var cal: Int?
  
  public init(id: String = UUID().uuidString,
      user: User? = nil,
      timing: String,
      place: String,
      price: Int? = nil,
      cal: Int? = nil) {
      self.id = id
      self.user = user
      self.timing = timing
      self.place = place
      self.price = price
      self.cal = cal
  }
}