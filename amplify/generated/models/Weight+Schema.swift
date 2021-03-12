// swiftlint:disable all
import Amplify
import Foundation

extension Weight {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case weight
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let weight = Weight.keys
    
    model.pluralName = "Weights"
    
    model.fields(
      .id(),
      .field(weight.weight, is: .required, ofType: .int)
    )
    }
}