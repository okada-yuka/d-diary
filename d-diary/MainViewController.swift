//
//  ViewController.swift
//  d-diary
//
//  Created by Yuka Okada on 2021/03/05.
//
import AWSCognitoIdentityProvider
import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signOutBtn: UIButton!
    @IBOutlet weak var userLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // viewが表示される直前に呼ばれる（バックグラウンド復帰，タブ切り替え後にも呼ばれる）
    override func viewWillAppear(_ animated: Bool) {
        // エラー箇所
        let pool: AWSCognitoIdentityUserPool
            = AWSCognitoIdentityUserPool(forKey: CognitoConstants.SignInProviderKey)
        let user: AWSCognitoIdentityUser? = pool.currentUser()
        user?.getSession().continueWith { (task) in
            // セッションが切れている場合, サインアウトする.
            if task.result == nil {
                user?.signOut()
            } else {
                // サインインしているときは「サインイン」ボタンを無効化して隠す.
                self.signInBtn.isEnabled = false
                self.signInBtn.isHidden = true
                // 「サインアウト」ボタン、ラベルを有効化して表示する.
                self.signOutBtn.isEnabled = true
                self.signOutBtn.isHidden = false
                self.userLab.text = user!.username! + "さんが\nサインインしています。"
                self.userLab.isHidden = false
            }
            return nil
        }.waitUntilFinished()
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "SignIn", sender: nil)
    }
    
    @IBAction func signOutBtn(_ sender: Any) {
        let alertController: UIAlertController = UIAlertController(
            title: "サインアウトしますか？", message: nil, preferredStyle: .alert)
        let signOut: UIAlertAction = UIAlertAction(
            title: "サインアウトする", style: .default,
            handler: { (action: UIAlertAction!) in
                // エラー箇所
                let pool: AWSCognitoIdentityUserPool
                    = AWSCognitoIdentityUserPool(forKey: CognitoConstants.SignInProviderKey)!
                pool.currentUser()?.signOut()
                // 「サインイン」ボタンを有効化して表示する.
                self.signInBtn.isEnabled = true
                self.signInBtn.isHidden = false
                // 「サインアウト」ボタン、ラベルを無効化して隠す.
                self.signOutBtn.isEnabled = false
                self.signOutBtn.isHidden = true
                self.userLab.isHidden = true
        })
        let cancel: UIAlertAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        alertController.addAction(signOut)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

