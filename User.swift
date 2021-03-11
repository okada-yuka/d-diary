//
//  User.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/11.
//

import Foundation
import AWSDynamoDB

class User: AWSDynamoDBObjectModel, AWSDynamoDBModeling {

    @objc private var id: NSNumber = 0
    @objc private var email: String = ""
    @objc private var password: String = ""

    class func dynamoDBTableName() -> String {
        return "Weight"  // DyanmoDBに作成したテーブル名を記載
    }

    class func hashKeyAttribute() -> String {
        return "id"
    }
}
