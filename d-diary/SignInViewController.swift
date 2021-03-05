//
//  SignInViewController.swift
//  d-diary
//
//  Created by Yuka Okada on 2021/03/06.
//
import AWSCognitoIdentityProvider
import UIKit

class SignInViewController: UITabBarController, UITextFieldDelegate{

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // 画面をタップした際の処理
        let tapRecognizer: UITapGestureRecognizer
            = UITapGestureRecognizer(target: self, action: #selector(self.closeKeyboard(_:)))
        self.view.addGestureRecognizer(tapRecognizer)
        // エラー箇所
        self.usernameField.delegate = self
        self.passwordField.delegate = self
        if #available(iOS 13.0, *) {
            self.indicatorView.style = .large
        }
        
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        guard let username: String = self.usernameField.text,
               let password: String = self.passwordField.text else {
                   self.presentErrorAlert(title: "ユーザ名またはパスワードが入力されていません。", message: nil)
                   return
           }
    }
    
    @IBAction func createBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUp", sender: nil)
    }
    
    /// 画面タップ時の処理.
    @objc func closeKeyboard(_ sender: UITapGestureRecognizer) {
        // TextField 編集中の場合はキーボードを閉じる.
        if (self.usernameField.isFirstResponder) {
            self.usernameField.resignFirstResponder()
        } else if (self.passwordField.isFirstResponder) {
            self.passwordField.resignFirstResponder()
        }
    }
    
    /// エラーを示すアラートを表示する.
    /// - Parameters:
    ///   - title:   アラートのタイトル.
    ///   - message: アラートのメッセージ.
    func presentErrorAlert(title: String?, message: String?) {
        /// エラーを表示するアラート.
        let errorAlert: UIAlertController = UIAlertController(title: title,
                                                              message: message,
                                                              preferredStyle: .alert)
        // アラートに「OK」ボタンを追加.
        errorAlert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(errorAlert, animated: true)
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        // 次のタグ番号を持っている UITextField があればフォーカス.
        let nextTag: Int = textField.tag + 1
        if let nextTextField: UITextField = self.view.viewWithTag(nextTag) as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        return true
    }
}
/*
// MARK: - UITextFieldDelegate
extension SignInViewController: UITextFieldDelegate {
    /// 編集中に Return ボタンが押された時の処理.
    /// - Parameter textField: Return ボタンが押された UITextField.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        // 次のタグ番号を持っている UITextField があればフォーカス.
        let nextTag: Int = textField.tag + 1
        if let nextTextField: UITextField = self.view.viewWithTag(nextTag) as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        return true
    }
}
*/
