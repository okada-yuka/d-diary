// swiftlint:disable all
import Amplify
import Foundation

extension Blog {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case posts
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let blog = Blog.keys
    
    model.pluralName = "Blogs"
    
    model.fields(
      .id(),
      .field(blog.name, is: .required, ofType: .string),
      .hasMany(blog.posts, is: .optional, ofType: Post.self, associatedWith: Post.keys.blog)
    )
    }
}