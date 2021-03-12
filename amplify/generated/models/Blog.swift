// swiftlint:disable all
import Amplify
import Foundation

public struct Blog: Model {
  public let id: String
  public var name: String
  public var posts: List<Post>?
  
  public init(id: String = UUID().uuidString,
      name: String,
      posts: List<Post>? = []) {
      self.id = id
      self.name = name
      self.posts = posts
  }
}