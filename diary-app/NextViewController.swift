//
//  NextViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/08.
//

import UIKit
import AWSMobileClient

class NextViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushSignOutButton(_ sender: Any) {
        // サインアウト処理
        AWSMobileClient.sharedInstance().signOut()

        
        // サインイン画面を表示
        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (signInState, error) in
            
            // 初期表示画面（GoalView）に遷移する
            self.navigationController?.popViewController(animated: true)
            
            if let signInState = signInState {
                print("SignInしました")
                self.appDelegate.username = AWSMobileClient.default().username
            } else if let error = error {
                print("error logging in: \(error.localizedDescription)")
            }
        })
    
        
    }
    
    // ログイン、再ログイン時に実行する関数（username、star、goal等を更新）
    func update_signIn(){
        // usernameの更新（cognito）
        appDelegate.username = AWSMobileClient.default().username
        print(appDelegate.username)
        
        // starとgoalの更新（DynamoDB）
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
