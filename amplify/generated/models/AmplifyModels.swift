// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "213cd608190db6bc6ee8d4a889c02aae"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Todo.self)
    ModelRegistry.register(modelType: Weight.self)
  }
}