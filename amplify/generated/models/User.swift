// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String
  public var weights: List<Weight>?
  public var meals: List<Meal>?
  
  public init(id: String = UUID().uuidString,
      name: String,
      weights: List<Weight>? = [],
      meals: List<Meal>? = []) {
      self.id = id
      self.name = name
      self.weights = weights
      self.meals = meals
  }
}