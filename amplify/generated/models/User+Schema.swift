// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case weights
    case meals
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let user = User.keys
    
    model.pluralName = "Users"
    
    model.fields(
      .id(),
      .field(user.name, is: .required, ofType: .string),
      .hasMany(user.weights, is: .optional, ofType: Weight.self, associatedWith: Weight.keys.user),
      .hasMany(user.meals, is: .optional, ofType: Meal.self, associatedWith: Meal.keys.user)
    )
    }
}