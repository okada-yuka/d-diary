import AWSDynamoDB

class User: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    @objc var id: String = ""
    @objc var username: String = ""
    @objc var star: NSNumber = 0
    @objc var goal: String = ""

    class func dynamoDBTableName() -> String {
        // DynamoDBのテーブル名
        return "User-7saad3yd3rb4nnartiwoujn54e-dev"
    }

    class func hashKeyAttribute() -> String {
        return "id"
    }
}
