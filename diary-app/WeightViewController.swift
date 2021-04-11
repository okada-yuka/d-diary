//
//  WeightViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/11.
//

import UIKit
import AWSDynamoDB
import AWSAppSync
import AWSMobileClient

class WeightViewController: UIViewController {

    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // appSyncの設定
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // Do any additional setup after loading the view.
        //GoalViewController().runMutation()
        //fetchDynamoDBData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "体重を記録する"
        
    }


    @IBAction func pushPostWeightButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toPostWeight", sender: nil)
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

}
