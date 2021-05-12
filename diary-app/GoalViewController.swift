//
//  ViewController.swift
//  navigation-test
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSMobileClient
import AWSS3
import AWSAppSync
import AWSDynamoDB
import SPStorkController

class GoalViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {

    @IBOutlet weak var goalTextField: UITextField!
    
    var appSyncClient: AWSAppSyncClient?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        appSyncClient = appDelegate.appSyncClient
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = ""
        
        // NavigationBarを透明にする
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    
    @IBAction func pushStartButton(_ sender: Any) {
        showChildView()
    }
    
    
    @IBAction func pushGoalButton(_ sender: Any) {
        showChildView()
    }
    

    func showChildView(){
        guard let sb = storyboard,
            let vc = sb.instantiateViewController(withIdentifier: "GoalSmallVC") as? GoalSmallViewController else { return }

        let transitionDelegate = SPStorkTransitioningDelegate()

        // transitionDelegateのカスタマイズはここで行う
        //（vc.transitioningDelegate = transitionDelegateの前）
        transitionDelegate.customHeight = 350
        transitionDelegate.indicatorColor = UIColor.white
        transitionDelegate.indicatorMode = .alwaysArrow
        // Exitボタン（×）を表示するか
        transitionDelegate.showCloseButton = false
        // 後ろにある親Viewをタップすることで子Viewを閉じるようにするか
        transitionDelegate.tapAroundToDismissEnabled = true
        // 子Viewの角度（コーナをどれだけ丸くするか）
        transitionDelegate.cornerRadius = 10
        
        vc.transitioningDelegate = transitionDelegate
        vc.modalPresentationStyle = .custom
        vc.modalPresentationCapturesStatusBarAppearance = true
        self.present(vc, animated: true, completion: nil)
    }
    // runQueryではなくこちらを使う
    // DynamoDBからデータを取得
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
    

    /*
    // DynamoDBへのレコード追加状況を表示
    var discard: Cancellable?
    func subscribe() {
        
        do{
            discard = try appSyncClient?.subscribe(subscription: OnCreateUserSubscription(), resultHandler: {(result, transaction, error) in
                if let result = result {
                    //print("CreateTodo subscription data:")
                    print("今追加されたデータを表示（subscribe）")
                    print(result.data!.onCreateUser!.name+" \(result.data!.onCreateUser!.star)")
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
            

            //print("Subscribed to CreateTodo Mutations.")
            
        } catch {
            print("Error starting subscription.")
        }
 
    }
    */


    
    @IBAction func pushS3Button(_ sender: Any) {
        /* S3はとりあえず使わない
        let expression = AWSS3TransferUtilityUploadExpression()
                expression.progressBlock = {(task, progress) in
                    DispatchQueue.main.async(execute: {
                        // Do something e.g. Update a progress bar.
                    })
                }

                var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
                completionHandler = { (task, error) -> Void in
                    DispatchQueue.main.async(execute: {
                        // Do something e.g. Alert a user for transfer completion.
                        // On failed uploads, `error` contains the error object.
                    })
                }

                let data: Data = ("hello world").data(using: .utf8)! // Data to be uploaded
                let transferUtility = AWSS3TransferUtility.default()

                let format:DateFormatter = DateFormatter()
                format.dateFormat = "yyyyMMdd-hhmmss"
                let dateString:String = format.string(from: Date())

                transferUtility.uploadData(data,
                   bucket: "YOUR_BUCKET_NAME",
                   key: "uploads/"+dateString+".txt",
                   contentType: "text/plain",
                   expression: expression,
                   completionHandler: completionHandler).continueWith {
                    (task) -> AnyObject? in
                    if let error = task.error {
                        print("Error: \(error.localizedDescription)")
                    }
                    
                    if let _ = task.result {
                        // Do something with uploadTask.
                        print("upload")
                    }
                    return nil;
                }
        */
    }
    
    
}
