//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateWeightInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, day: String, weight: Int) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "weight": weight]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: String {
    get {
      return graphQLMap["day"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var weight: Int {
    get {
      return graphQLMap["weight"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct ModelWeightConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(day: ModelStringInput? = nil, weight: ModelIntInput? = nil, and: [ModelWeightConditionInput?]? = nil, or: [ModelWeightConditionInput?]? = nil, not: ModelWeightConditionInput? = nil) {
    graphQLMap = ["day": day, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var day: ModelStringInput? {
    get {
      return graphQLMap["day"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var weight: ModelIntInput? {
    get {
      return graphQLMap["weight"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelWeightConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelWeightConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelWeightConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelWeightConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelWeightConditionInput? {
    get {
      return graphQLMap["not"] as! ModelWeightConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateWeightInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String? = nil, day: String? = nil, weight: Int? = nil) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "weight": weight]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String? {
    get {
      return graphQLMap["userID"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: String? {
    get {
      return graphQLMap["day"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var weight: Int? {
    get {
      return graphQLMap["weight"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct DeleteWeightInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateMealInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "timing": timing, "place": place, "price": price, "cal": cal]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userID"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: String {
    get {
      return graphQLMap["day"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var timing: String {
    get {
      return graphQLMap["timing"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timing")
    }
  }

  public var place: String? {
    get {
      return graphQLMap["place"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "place")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var cal: Int {
    get {
      return graphQLMap["cal"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cal")
    }
  }
}

public struct ModelMealConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(day: ModelStringInput? = nil, timing: ModelStringInput? = nil, place: ModelStringInput? = nil, price: ModelIntInput? = nil, cal: ModelIntInput? = nil, and: [ModelMealConditionInput?]? = nil, or: [ModelMealConditionInput?]? = nil, not: ModelMealConditionInput? = nil) {
    graphQLMap = ["day": day, "timing": timing, "place": place, "price": price, "cal": cal, "and": and, "or": or, "not": not]
  }

  public var day: ModelStringInput? {
    get {
      return graphQLMap["day"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var timing: ModelStringInput? {
    get {
      return graphQLMap["timing"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timing")
    }
  }

  public var place: ModelStringInput? {
    get {
      return graphQLMap["place"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "place")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var cal: ModelIntInput? {
    get {
      return graphQLMap["cal"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cal")
    }
  }

  public var and: [ModelMealConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMealConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMealConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMealConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMealConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMealConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateMealInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String? = nil, day: String? = nil, timing: String? = nil, place: String? = nil, price: Int? = nil, cal: Int? = nil) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "timing": timing, "place": place, "price": price, "cal": cal]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String? {
    get {
      return graphQLMap["userID"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: String? {
    get {
      return graphQLMap["day"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var timing: String? {
    get {
      return graphQLMap["timing"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timing")
    }
  }

  public var place: String? {
    get {
      return graphQLMap["place"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "place")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var cal: Int? {
    get {
      return graphQLMap["cal"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cal")
    }
  }
}

public struct DeleteMealInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, username: String, star: Int, goal: String? = nil) {
    graphQLMap = ["id": id, "username": username, "star": star, "goal": goal]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var star: Int {
    get {
      return graphQLMap["star"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "star")
    }
  }

  public var goal: String? {
    get {
      return graphQLMap["goal"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "goal")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(star: ModelIntInput? = nil, goal: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["star": star, "goal": goal, "and": and, "or": or, "not": not]
  }

  public var star: ModelIntInput? {
    get {
      return graphQLMap["star"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "star")
    }
  }

  public var goal: ModelStringInput? {
    get {
      return graphQLMap["goal"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "goal")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, username: String? = nil, star: Int? = nil, goal: String? = nil) {
    graphQLMap = ["id": id, "username": username, "star": star, "goal": goal]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var star: Int? {
    get {
      return graphQLMap["star"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "star")
    }
  }

  public var goal: String? {
    get {
      return graphQLMap["goal"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "goal")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelStringKeyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "beginsWith": beginsWith]
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelWeightFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, day: ModelStringInput? = nil, weight: ModelIntInput? = nil, and: [ModelWeightFilterInput?]? = nil, or: [ModelWeightFilterInput?]? = nil, not: ModelWeightFilterInput? = nil) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: ModelStringInput? {
    get {
      return graphQLMap["day"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var weight: ModelIntInput? {
    get {
      return graphQLMap["weight"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelWeightFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelWeightFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelWeightFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelWeightFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelWeightFilterInput? {
    get {
      return graphQLMap["not"] as! ModelWeightFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelSortDirection, rhs: ModelSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelMealFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, day: ModelStringInput? = nil, timing: ModelStringInput? = nil, place: ModelStringInput? = nil, price: ModelIntInput? = nil, cal: ModelIntInput? = nil, and: [ModelMealFilterInput?]? = nil, or: [ModelMealFilterInput?]? = nil, not: ModelMealFilterInput? = nil) {
    graphQLMap = ["id": id, "userID": userId, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["userID"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var day: ModelStringInput? {
    get {
      return graphQLMap["day"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }

  public var timing: ModelStringInput? {
    get {
      return graphQLMap["timing"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timing")
    }
  }

  public var place: ModelStringInput? {
    get {
      return graphQLMap["place"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "place")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var cal: ModelIntInput? {
    get {
      return graphQLMap["cal"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cal")
    }
  }

  public var and: [ModelMealFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMealFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMealFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMealFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMealFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMealFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelStringInput? = nil, username: ModelStringInput? = nil, star: ModelIntInput? = nil, goal: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "star": star, "goal": goal, "and": and, "or": or, "not": not]
  }

  public var id: ModelStringInput? {
    get {
      return graphQLMap["id"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var star: ModelIntInput? {
    get {
      return graphQLMap["star"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "star")
    }
  }

  public var goal: ModelStringInput? {
    get {
      return graphQLMap["goal"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "goal")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateWeightMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateWeight($input: CreateWeightInput!, $condition: ModelWeightConditionInput) {\n  createWeight(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateWeightInput
  public var condition: ModelWeightConditionInput?

  public init(input: CreateWeightInput, condition: ModelWeightConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createWeight", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createWeight: CreateWeight? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createWeight": createWeight.flatMap { $0.snapshot }])
    }

    public var createWeight: CreateWeight? {
      get {
        return (snapshot["createWeight"] as? Snapshot).flatMap { CreateWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createWeight")
      }
    }

    public struct CreateWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class UpdateWeightMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateWeight($input: UpdateWeightInput!, $condition: ModelWeightConditionInput) {\n  updateWeight(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateWeightInput
  public var condition: ModelWeightConditionInput?

  public init(input: UpdateWeightInput, condition: ModelWeightConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateWeight", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateWeight: UpdateWeight? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateWeight": updateWeight.flatMap { $0.snapshot }])
    }

    public var updateWeight: UpdateWeight? {
      get {
        return (snapshot["updateWeight"] as? Snapshot).flatMap { UpdateWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateWeight")
      }
    }

    public struct UpdateWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class DeleteWeightMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteWeight($input: DeleteWeightInput!, $condition: ModelWeightConditionInput) {\n  deleteWeight(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteWeightInput
  public var condition: ModelWeightConditionInput?

  public init(input: DeleteWeightInput, condition: ModelWeightConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteWeight", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteWeight: DeleteWeight? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteWeight": deleteWeight.flatMap { $0.snapshot }])
    }

    public var deleteWeight: DeleteWeight? {
      get {
        return (snapshot["deleteWeight"] as? Snapshot).flatMap { DeleteWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteWeight")
      }
    }

    public struct DeleteWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class CreateMealMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMeal($input: CreateMealInput!, $condition: ModelMealConditionInput) {\n  createMeal(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMealInput
  public var condition: ModelMealConditionInput?

  public init(input: CreateMealInput, condition: ModelMealConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMeal", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMeal: CreateMeal? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMeal": createMeal.flatMap { $0.snapshot }])
    }

    public var createMeal: CreateMeal? {
      get {
        return (snapshot["createMeal"] as? Snapshot).flatMap { CreateMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMeal")
      }
    }

    public struct CreateMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class UpdateMealMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMeal($input: UpdateMealInput!, $condition: ModelMealConditionInput) {\n  updateMeal(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMealInput
  public var condition: ModelMealConditionInput?

  public init(input: UpdateMealInput, condition: ModelMealConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMeal", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMeal: UpdateMeal? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMeal": updateMeal.flatMap { $0.snapshot }])
    }

    public var updateMeal: UpdateMeal? {
      get {
        return (snapshot["updateMeal"] as? Snapshot).flatMap { UpdateMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMeal")
      }
    }

    public struct UpdateMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class DeleteMealMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMeal($input: DeleteMealInput!, $condition: ModelMealConditionInput) {\n  deleteMeal(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMealInput
  public var condition: ModelMealConditionInput?

  public init(input: DeleteMealInput, condition: ModelMealConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMeal", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMeal: DeleteMeal? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMeal": deleteMeal.flatMap { $0.snapshot }])
    }

    public var deleteMeal: DeleteMeal? {
      get {
        return (snapshot["deleteMeal"] as? Snapshot).flatMap { DeleteMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMeal")
      }
    }

    public struct DeleteMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetWeightQuery: GraphQLQuery {
  public static let operationString =
    "query GetWeight($id: ID!, $userID: String!) {\n  getWeight(id: $id, userID: $userID) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID
  public var userID: String

  public init(id: GraphQLID, userID: String) {
    self.id = id
    self.userID = userID
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userID": userID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getWeight", arguments: ["id": GraphQLVariable("id"), "userID": GraphQLVariable("userID")], type: .object(GetWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getWeight: GetWeight? = nil) {
      self.init(snapshot: ["__typename": "Query", "getWeight": getWeight.flatMap { $0.snapshot }])
    }

    public var getWeight: GetWeight? {
      get {
        return (snapshot["getWeight"] as? Snapshot).flatMap { GetWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getWeight")
      }
    }

    public struct GetWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class ListWeightsQuery: GraphQLQuery {
  public static let operationString =
    "query ListWeights($id: ID, $userID: ModelStringKeyConditionInput, $filter: ModelWeightFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listWeights(id: $id, userID: $userID, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        username\n        star\n        goal\n        createdAt\n        updatedAt\n      }\n      day\n      weight\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var id: GraphQLID?
  public var userID: ModelStringKeyConditionInput?
  public var filter: ModelWeightFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(id: GraphQLID? = nil, userID: ModelStringKeyConditionInput? = nil, filter: ModelWeightFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.id = id
    self.userID = userID
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userID": userID, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listWeights", arguments: ["id": GraphQLVariable("id"), "userID": GraphQLVariable("userID"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listWeights: ListWeight? = nil) {
      self.init(snapshot: ["__typename": "Query", "listWeights": listWeights.flatMap { $0.snapshot }])
    }

    public var listWeights: ListWeight? {
      get {
        return (snapshot["listWeights"] as? Snapshot).flatMap { ListWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listWeights")
      }
    }

    public struct ListWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelWeightConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelWeightConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Weight"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("day", type: .nonNull(.scalar(String.self))),
          GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var day: String {
          get {
            return snapshot["day"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "day")
          }
        }

        public var weight: Int {
          get {
            return snapshot["weight"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("star", type: .nonNull(.scalar(Int.self))),
            GraphQLField("goal", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var star: Int {
            get {
              return snapshot["star"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "star")
            }
          }

          public var goal: String? {
            get {
              return snapshot["goal"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "goal")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetMealQuery: GraphQLQuery {
  public static let operationString =
    "query GetMeal($id: ID!, $userID: String!) {\n  getMeal(id: $id, userID: $userID) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID
  public var userID: String

  public init(id: GraphQLID, userID: String) {
    self.id = id
    self.userID = userID
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userID": userID]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMeal", arguments: ["id": GraphQLVariable("id"), "userID": GraphQLVariable("userID")], type: .object(GetMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMeal: GetMeal? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMeal": getMeal.flatMap { $0.snapshot }])
    }

    public var getMeal: GetMeal? {
      get {
        return (snapshot["getMeal"] as? Snapshot).flatMap { GetMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMeal")
      }
    }

    public struct GetMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class ListMealsQuery: GraphQLQuery {
  public static let operationString =
    "query ListMeals($id: ID, $userID: ModelStringKeyConditionInput, $filter: ModelMealFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listMeals(id: $id, userID: $userID, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        username\n        star\n        goal\n        createdAt\n        updatedAt\n      }\n      day\n      timing\n      place\n      price\n      cal\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var id: GraphQLID?
  public var userID: ModelStringKeyConditionInput?
  public var filter: ModelMealFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(id: GraphQLID? = nil, userID: ModelStringKeyConditionInput? = nil, filter: ModelMealFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.id = id
    self.userID = userID
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userID": userID, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMeals", arguments: ["id": GraphQLVariable("id"), "userID": GraphQLVariable("userID"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMeals: ListMeal? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMeals": listMeals.flatMap { $0.snapshot }])
    }

    public var listMeals: ListMeal? {
      get {
        return (snapshot["listMeals"] as? Snapshot).flatMap { ListMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMeals")
      }
    }

    public struct ListMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMealConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelMealConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Meal"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("day", type: .nonNull(.scalar(String.self))),
          GraphQLField("timing", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("price", type: .scalar(Int.self)),
          GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userID"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var day: String {
          get {
            return snapshot["day"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "day")
          }
        }

        public var timing: String {
          get {
            return snapshot["timing"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "timing")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var price: Int? {
          get {
            return snapshot["price"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var cal: Int {
          get {
            return snapshot["cal"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "cal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("star", type: .nonNull(.scalar(Int.self))),
            GraphQLField("goal", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var star: Int {
            get {
              return snapshot["star"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "star")
            }
          }

          public var goal: String? {
            get {
              return snapshot["goal"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "goal")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: String!, $username: String!) {\n  getUser(id: $id, username: $username) {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public var id: String
  public var username: String

  public init(id: String, username: String) {
    self.id = id
    self.username = username
  }

  public var variables: GraphQLMap? {
    return ["id": id, "username": username]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id"), "username": GraphQLVariable("username")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($id: String, $username: ModelStringKeyConditionInput, $filter: ModelUserFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listUsers(id: $id, username: $username, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var id: String?
  public var username: ModelStringKeyConditionInput?
  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(id: String? = nil, username: ModelStringKeyConditionInput? = nil, filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.id = id
    self.username = username
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["id": id, "username": username, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["id": GraphQLVariable("id"), "username": GraphQLVariable("username"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateWeightSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateWeight {\n  onCreateWeight {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateWeight", type: .object(OnCreateWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateWeight: OnCreateWeight? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateWeight": onCreateWeight.flatMap { $0.snapshot }])
    }

    public var onCreateWeight: OnCreateWeight? {
      get {
        return (snapshot["onCreateWeight"] as? Snapshot).flatMap { OnCreateWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateWeight")
      }
    }

    public struct OnCreateWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnUpdateWeightSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateWeight {\n  onUpdateWeight {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateWeight", type: .object(OnUpdateWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateWeight: OnUpdateWeight? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateWeight": onUpdateWeight.flatMap { $0.snapshot }])
    }

    public var onUpdateWeight: OnUpdateWeight? {
      get {
        return (snapshot["onUpdateWeight"] as? Snapshot).flatMap { OnUpdateWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateWeight")
      }
    }

    public struct OnUpdateWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnDeleteWeightSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteWeight {\n  onDeleteWeight {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteWeight", type: .object(OnDeleteWeight.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteWeight: OnDeleteWeight? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteWeight": onDeleteWeight.flatMap { $0.snapshot }])
    }

    public var onDeleteWeight: OnDeleteWeight? {
      get {
        return (snapshot["onDeleteWeight"] as? Snapshot).flatMap { OnDeleteWeight(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteWeight")
      }
    }

    public struct OnDeleteWeight: GraphQLSelectionSet {
      public static let possibleTypes = ["Weight"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("weight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, weight: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Weight", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var weight: Int {
        get {
          return snapshot["weight"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateMealSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMeal {\n  onCreateMeal {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMeal", type: .object(OnCreateMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMeal: OnCreateMeal? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMeal": onCreateMeal.flatMap { $0.snapshot }])
    }

    public var onCreateMeal: OnCreateMeal? {
      get {
        return (snapshot["onCreateMeal"] as? Snapshot).flatMap { OnCreateMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMeal")
      }
    }

    public struct OnCreateMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnUpdateMealSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMeal {\n  onUpdateMeal {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMeal", type: .object(OnUpdateMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMeal: OnUpdateMeal? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMeal": onUpdateMeal.flatMap { $0.snapshot }])
    }

    public var onUpdateMeal: OnUpdateMeal? {
      get {
        return (snapshot["onUpdateMeal"] as? Snapshot).flatMap { OnUpdateMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMeal")
      }
    }

    public struct OnUpdateMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnDeleteMealSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMeal {\n  onDeleteMeal {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      username\n      star\n      goal\n      createdAt\n      updatedAt\n    }\n    day\n    timing\n    place\n    price\n    cal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMeal", type: .object(OnDeleteMeal.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMeal: OnDeleteMeal? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMeal": onDeleteMeal.flatMap { $0.snapshot }])
    }

    public var onDeleteMeal: OnDeleteMeal? {
      get {
        return (snapshot["onDeleteMeal"] as? Snapshot).flatMap { OnDeleteMeal(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMeal")
      }
    }

    public struct OnDeleteMeal: GraphQLSelectionSet {
      public static let possibleTypes = ["Meal"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("day", type: .nonNull(.scalar(String.self))),
        GraphQLField("timing", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("cal", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, user: User? = nil, day: String, timing: String, place: String? = nil, price: Int? = nil, cal: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Meal", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "day": day, "timing": timing, "place": place, "price": price, "cal": cal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userID"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var day: String {
        get {
          return snapshot["day"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "day")
        }
      }

      public var timing: String {
        get {
          return snapshot["timing"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "timing")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var cal: Int {
        get {
          return snapshot["cal"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "cal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("star", type: .nonNull(.scalar(Int.self))),
          GraphQLField("goal", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var star: Int {
          get {
            return snapshot["star"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "star")
          }
        }

        public var goal: String? {
          get {
            return snapshot["goal"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "goal")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    username\n    star\n    goal\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("star", type: .nonNull(.scalar(Int.self))),
        GraphQLField("goal", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String, star: Int, goal: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "star": star, "goal": goal, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var star: Int {
        get {
          return snapshot["star"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "star")
        }
      }

      public var goal: String? {
        get {
          return snapshot["goal"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "goal")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}