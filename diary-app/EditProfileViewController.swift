// よく考えたらプロフィールは編集なし！！！！
// Goalの編集をやる！！！



//  EditProfileViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/04/12.
//

import UIKit
import AWSAppSync
import AWSDynamoDB

class EditProfileViewController: UIViewController {

    var appSyncClient: AWSAppSyncClient?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appSyncClient = appDelegate.appSyncClient
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameLabel.text = appDelegate.username
        goalLabel.text = appDelegate.goal
    }

    @IBAction func updateProfile(_ sender: Any) {
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = UpdateUserInput(id: appDelegate.id, username: appDelegate.username, star: appDelegate.star, goal: "更新しました")
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: UpdateUserMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
//            if let resultError = result?.errors{
//                print("Error saving the item on server: \(resultError)")
//                return
//            }
            
            print("データを更新")
            

        }

    }
    


}
