//
//  WeightViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/11.
//

import UIKit
import AWSDynamoDB

class WeightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GoalViewController().runMutation()
        //fetchDynamoDBData()
    }
    
    
    /*

    private func fetchDynamoDBData() {
        let dynamoDBObjectMapper = AWSDynamoDBObjectMapper.default()
        let scanExpression = AWSDynamoDBScanExpression()

        // User.swift で指定したDynamoDBのテーブルからデータを取得
        dynamoDBObjectMapper.scan(User.self, expression: scanExpression).continueWith() { (task:AWSTask<AWSDynamoDBPaginatedOutput>!) -> Void in

            guard let items = task.result?.items as? [User] else { return }
            if let error = task.error as NSError? {
                print("The request failed. Error: \(error)")
                return
            }
            print(items)
        }
    }
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
