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

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // Do any additional setup after loading the view.
        //GoalViewController().runMutation()
        //fetchDynamoDBData()
    }
    
    // DynamoDBにデータを追加する
    func runMutation(){
        
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateTodoInput(place: "MONOMONO cafe", price: 1200)
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
            if let resultError = result?.errors{
                print("Error saving the item on server: \(resultError)")
                return
            }
            
            print("データを追加（runMutation）")
            //print("Mutation complete.")
            //self.runQuery()
        }
    }
    
    @IBAction func pushDataToDynamo(_ sender: Any) {
        
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
