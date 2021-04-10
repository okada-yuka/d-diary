import AWSDynamoDB

class User: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    @objc var id: String = ""
    @objc var username: String = ""
    @objc var star: NSNumber = 0
    @objc var goal: String = ""

    class func dynamoDBTableName() -> String {
        // DynamoDBのテーブル名
        return "User-p3h4kmdwhzhs5ot42h6sopskoe-dev"
    }

    class func hashKeyAttribute() -> String {
        return "id"
    }
}
