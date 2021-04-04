//
//  PostWeightViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/04/04.
//

import UIKit
import AWSAppSync
import AWSMobileClient
import AWSDynamoDB

class PostWeightViewController: UIViewController {

    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        // Do any additional setup after loading the view.
    }
    

    // DynamoDBにデータを追加する
    func runMutation(){
        
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateWeightInput(weight: 50, userId: "3")
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateWeightMutation(input: mutationInput)) { (result, error) in
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
        runMutation()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
