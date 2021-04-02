//
//  Only1stViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/22.
//

import UIKit
import AWSDynamoDB
import AWSAppSync
import AWSMobileClient
import AWSCore

class Only1stViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appSyncClient = appDelegate.appSyncClient
        
        // Do any additional setup after loading the view.
        
        // NavigationBarを表示しない
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        usernameTextField.delegate = self
        
        
        // IDプールのIDを取得する
//        let credentialsProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "IDENTITY_POOL_ID")
//        let configuration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: credentialsProvider)
//        AWSServiceManager.default().defaultServiceConfiguration = configuration
//
//        // Retrieve your Amazon Cognito ID
//        credentialsProvider.getIdentityId().continueWith(block: { (task) -> AnyObject? in
//            if (task.error != nil) {
//                print("Error: " + task.error!.localizedDescription)
//            }
//            else {
//                // the task result will contain the identity id
//                let cognitoId = task.result!
//                print("Cognito id: \(cognitoId)")
//            }
//            return task;
//        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // subIDを念のため再度取得する
        AWSMobileClient.sharedInstance().getUserAttributes { (attributes, error) in
             if(error != nil){
                print("ERROR: \(error)")
             }else{
                if let attributesDict = attributes{
                    print("subIDを表示します〜！")
                    print(attributesDict["sub"])
                    self.appDelegate.subID = attributesDict["sub"]!
                }
             }
        }
    }
    
    // textField以外をタップしてキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        usernameTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        usernameTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func pushBackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toHome", sender: nil)
    }
    
    
    
    @IBAction func pushDecideButton(_ sender: Any) {
        usernameTextField.endEditing(true)
        // TextFieldから文字を取得
        appDelegate.username = usernameTextField.text!
        runMutation()
    }
    

    // DynamoDBにデータを追加する
    func runMutation(){
        
        // CreateInput関数：入力パラメータを作成
        let mutationInput = CreateUserInput(id: <#T##String?#>, username: <#T##String#>, star: <#T##Int#>, goal: <#T##String#>)
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateUserMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
            if let resultError = result?.errors{
                print("Error saving the item on server: \(resultError)")
                return
            }
            
            print("データを追加（runMutation）")

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
