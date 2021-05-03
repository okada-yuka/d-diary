//
//  TabViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/08.
//

import UIKit
import AWSMobileClient

class TabViewController: UITabBarController {

    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        // TabBarのアイコンの色（選択時）を設定
        UITabBar.appearance().tintColor = Pallet.light_blue
        // TabBarの背景色を設定
        UITabBar.appearance().barTintColor = Pallet.bg_light_blue
        
        
        
        // Do any additional setup after loading the view.
        AWSMobileClient.sharedInstance().initialize { (UserState, error) in
            
            if let userState = UserState {
                switch (UserState) {
                case .signedIn:
                    DispatchQueue.main.async {
                        print("Logged In")
                        self.appDelegate.username = AWSMobileClient.default().username
                        GoalViewController().fetchDynamoDBData()
                    }
                    
                case .signedOut:
                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (UserState, error) in
                        if (error == nil){ //サインイン成功時
                            DispatchQueue.main.async {
                                print("Sign In")
                                self.appDelegate.username = AWSMobileClient.default().username
                                GoalViewController().fetchDynamoDBData()
                            }

                        }

                    })
                default:
                    AWSMobileClient.sharedInstance().signOut()
                }
                
 
            } else if let error = error {
                print(error.localizedDescription)
            }

        }
        

    }


}
