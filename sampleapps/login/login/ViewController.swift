//
//  ViewController.swift
//  login
//
//  Created by Yuka Okada on 2021/04/01.
//

import UIKit
import AWSMobileClient
import AWSAppSync

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Do any additional setup after loading the view.
        AWSMobileClient.sharedInstance().initialize { (UserState, error) in
            if let userState = UserState {
                switch (UserState) {
                case .signedIn:
                    DispatchQueue.main.async {
                        print("Logged In")
                    }
                case .signedOut:
                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (UserState, error) in
                        if (error == nil){ //サインイン成功時
                            DispatchQueue.main.async {
                                print("Sign In")
                            }
                        }

                    })
                default:
                    AWSMobileClient.sharedInstance().signOut()
                    print("ログイン済み")
                }
                
                
                
 
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        
    }

    @IBAction func pushLogOutButton(_ sender: Any) {
        // サインアウト処理
        AWSMobileClient.sharedInstance().signOut()

        // サインイン画面を表示
        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (signInState, error) in
            if let signInState = signInState {
                print("Sign in flow completed: \(signInState)")
            } else if let error = error {
                print("error logging in: \(error.localizedDescription)")
            }
        })
    }
    
}

