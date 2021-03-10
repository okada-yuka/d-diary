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

class GoalViewController: UIViewController, UINavigationControllerDelegate {

    var appSyncClient: AWSAppSyncClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient

    }
    
    // DynamoDBにデータを追加する
    func runMutation(){
        
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateTodoInput(name: "Use AppSync", description: "Realtime and Offline")
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
            if let resultError = result?.errors{
                print("Error saving the item on server: \(resultError)")
                return
            }
            
            print("データを追加（runMutation）")
            //print("Mutation complete.")
            //self.runQuery()
        }
    }
    
    // DynamoDBからデータを取得
    func runQuery(){
        // 2回実行されてしまう（cachePolicyは消したら取得できなくなった）
        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil{
                print(error?.localizedDescription ?? "")
                return
            }
            print("データを取得（runQuery）")
            //print("Query complete.")
            // 取得したレコードのnameとdescriptionをコンソールに表示
            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
        }
        
    }
    
    // DynamoDBへのレコード追加状況を表示
    var discard: Cancellable?
    func subscribe() {
        do{
            discard = try appSyncClient?.subscribe(subscription: OnCreateTodoSubscription(), resultHandler: {(result, transaction, error) in
                if let result = result {
                    //print("CreateTodo subscription data:")
                    print("今追加されたデータを表示（subscribe）")
                    print(result.data!.onCreateTodo!.name+" "
                                            + result.data!.onCreateTodo!.description!)
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
            

            //print("Subscribed to CreateTodo Mutations.")
            
        } catch {
            print("Error starting subscription.")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "目標"
        // 背景色を設定
        view.backgroundColor = Pallet.bg_light_blue
    }
    
    // DynamoDBにデータを追加する
    @IBAction func pushDataToDynamo(_ sender: Any) {
        runMutation()
    }
    
    // DyanmoDBからデータを取得する
    @IBAction func getDynamoData(_ sender: Any) {
        runQuery()
    }
    
    // DyanmoDBにデータが追加されたらそのデータを取得する（アップデート情報など）
    @IBAction func startSubscribe(_ sender: Any) {
        subscribe()
    }
    
    @IBAction func pushNextButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
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
