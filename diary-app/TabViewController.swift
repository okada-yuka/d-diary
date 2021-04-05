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
            print("usernameを表示")
            print(AWSMobileClient.default().username)
            
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
                }
                
 
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        

        
        // SignInし直した場合，実行されないためどこかで更新が必要
        AWSMobileClient.sharedInstance().getUserAttributes { (attributes, error) in
             if(error != nil){
                print("ERROR: \(error)")
             }else{
                if let attributesDict = attributes{
                    print("Attributeを表示")
                    print(attributesDict["User name"])
                }
             }
        }
 
        
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
