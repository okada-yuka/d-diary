// swiftlint:disable all
import Amplify
import Foundation

extension Meal {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case user
    case timing
    case place
    case price
    case cal
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let meal = Meal.keys
    
    model.pluralName = "Meals"
    
    model.fields(
      .id(),
      .belongsTo(meal.user, is: .optional, ofType: User.self, targetName: "userID"),
      .field(meal.timing, is: .required, ofType: .string),
      .field(meal.place, is: .required, ofType: .string),
      .field(meal.price, is: .optional, ofType: .int),
      .field(meal.cal, is: .optional, ofType: .int)
    )
    }
}