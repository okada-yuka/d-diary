//
//  ProfileViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSMobileClient
import AWSCore
import AWSS3
import AWSDynamoDB

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        // データを更新する
        fetchDynamoDBData()
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = ""
        usernameLabel.text = appDelegate.username
        starsLabel.text = String(appDelegate.star)
        goalLabel.text = appDelegate.goal
        
    }
    
    @IBAction func updateData(_ sender: Any) {
        fetchDynamoDBData()
        starsLabel.text = String(appDelegate.star)
        goalLabel.text = appDelegate.goal
    }
    
    func fetchDynamoDBData(){
        let dynamoDBObjectMapper = AWSDynamoDBObjectMapper.default()
        let scanExpression = AWSDynamoDBScanExpression()
        
        dynamoDBObjectMapper.scan(User.self, expression: scanExpression).continueWith(){ (task: AWSTask<AWSDynamoDBPaginatedOutput>!) -> Void in
            guard let items = task.result?.items as? [User] else {return}
            if let error = task.error as NSError?{
                print("The request failed. Error: \(error)")
                return
            }
            
        
//            print(items[0].username)
//            print(items.count)
            
            for index in 0 ..< items.count{
                if items[index].username == self.appDelegate.username{
                    self.appDelegate.id = items[index].id
                    self.appDelegate.star = Int(items[index].star)
                    self.appDelegate.goal = items[index].goal

                    print(self.appDelegate.goal)
                }
            }
        }
    
    }

    @IBAction func signOut(_ sender: Any) {
        // サインアウト処理
        AWSMobileClient.sharedInstance().signOut()

        
        // サインイン画面を表示
        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (signInState, error) in
            
            // 初期表示画面（GoalView）に遷移する
            self.navigationController?.popViewController(animated: true)
            
            if let signInState = signInState {
                print("SignInしました")
                self.appDelegate.username = AWSMobileClient.default().username
                GoalViewController().fetchDynamoDBData()
            } else if let error = error {
                print("error logging in: \(error.localizedDescription)")
            }
        })
    }
    
    
}
