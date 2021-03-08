//
//  NextViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/08.
//

import UIKit
import AWSMobileClient

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushSignOutButton(_ sender: Any) {
        // サインアウト処理
        AWSMobileClient.sharedInstance().signOut()

        // サインイン画面を表示
        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (userState, error) in
            if(error == nil){       //Successful signin
                DispatchQueue.main.async {
                    print("Sign In")
                }
            }
        })
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
