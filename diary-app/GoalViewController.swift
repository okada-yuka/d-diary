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

class GoalViewController: UIViewController, UINavigationControllerDelegate {

    var appSyncClient: AWSAppSyncClient?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


        appSyncClient = appDelegate.appSyncClient

    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "目標を設定する"
        
    }
    
    
    // DynamoDBにデータを追加する
    func runMutation(){
        
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateWeightInput(userId: self.appDelegate.id, day: "test-date", weight: 20)
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateWeightMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
            // Weight, Mealの時ここでエラーになる（データは追加できている）
//            if let resultError = result?.errors{
//                // すでに同じusernameが登録されている場合、このエラーになる
//                print("Error saving the item on server: \(resultError)")
//                return
//            }
            
            print("データを追加（runMutation）")
            //print("Mutation complete.")
            //self.runQuery()
        }
 
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
            
        
            print(items[0].username)
            print(items.count)
            
            for index in 0 ..< items.count{
                if items[index].username == self.appDelegate.username{
                    self.appDelegate.id = items[index].id
                    self.appDelegate.star = Int(items[index].star)
                    self.appDelegate.goal = items[index].goal
                    print(self.appDelegate.id)
                    print(self.appDelegate.star)
                    print(self.appDelegate.goal)
                }
            }
        }
    
    }
    /*
    // DynamoDBからデータを取得
    func runQuery(){

        appSyncClient?.fetch(query: ListUsersQuery()) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.listUsers?.items!.forEach { print(($0?.username)! + " " + ($0?.goal)!) }
            print("データを取得（runQuery）")
        }
        
//        // 2回実行されてしまう（cachePolicyは消したら取得できなくなった）
//        appSyncClient?.fetch(query: ListUsersQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
//            if error != nil{
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            print("データを取得（runQuery）")
//            //print("Query complete.")
//            // 取得したレコードのnameとdescriptionをコンソールに表示
////            result?.data?.listUsers?.items!.forEach {
////                print(($0?.username)! + " \($0?.star)!")
////            }
//            result?.data?.listUsers?.items!.forEach {
//                print(($0?.username)! + " " + ($0?.goal)!)
//
//            }
//
//        }
        
    }
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "目標"
        // 背景色を設定
        view.backgroundColor = Pallet.bg_light_blue
    }
    */
    
    // DynamoDBにデータを追加する
    @IBAction func pushDataToDynamo(_ sender: Any) {
        runMutation()
    }
    
    // DyanmoDBからデータを取得する
    @IBAction func getDynamoData(_ sender: Any) {
        fetchDynamoDBData()
    }
    /*
    // DyanmoDBにデータが追加されたらそのデータを取得する（アップデート情報など）
    @IBAction func startSubscribe(_ sender: Any) {
        subscribe()
    }
    
    */
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
