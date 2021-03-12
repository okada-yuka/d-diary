// swiftlint:disable all
import Amplify
import Foundation

public struct Post: Model {
  public let id: String
  public var title: String
  public var blog: Blog?
  
  public init(id: String = UUID().uuidString,
      title: String,
      blog: Blog? = nil) {
      self.id = id
      self.title = title
      self.blog = blog
  }
}