//
//  GoalSmallViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/05/11.
//

import UIKit
import AWSDynamoDB
import AWSMobileClient
import AWSAppSync

class GoalSmallViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var goalTextField: UITextField!
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appSyncClient = appDelegate.appSyncClient
        
        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        goalTextField.delegate = self
        
        // goalLabelに目標を表示する
        self.goalLabel.text = "「" + self.appDelegate.goal + "」"
    }
    
    @IBAction func updateGoalButton(_ sender: Any) {
        print(self.goalTextField.text)
        // UpdateUserInput関数：入力パラメータを作成
        let mutationInput = UpdateUserInput(id: self.appDelegate.id, username: self.appDelegate.username, star: self.appDelegate.star, goal: self.goalTextField.text)
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: UpdateUserMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            print("データを更新")
            
            // アプリ側でも目標を更新する
            self.appDelegate.goal = self.goalTextField.text
            self.goalLabel.text = "「" + self.appDelegate.goal + "」"
        }
    }

    // キーボードを閉じる（画面のどこかが押された時に呼び出される）
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // Returnキーが押されたらキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        goalTextField.resignFirstResponder()
        return true
    }

}
