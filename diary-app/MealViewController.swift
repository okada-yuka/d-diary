//
//  MealViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/12.
//

import UIKit
import AWSMobileClient
import AWSS3
import AWSAppSync

class MealViewController: UIViewController {

    var appSyncClient: AWSAppSyncClient?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var calValue: UILabel!
    @IBOutlet weak var priceValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        appSyncClient = appDelegate.appSyncClient
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "食事を記録する"
        
    }
    
    @IBAction func priceValue(_ sender: UISlider) {
        let price: Int = Int(sender.value)
        priceValue.text = String(price)
    }
    
    @IBAction func calValue(_ sender: UISlider) {
        let cal: Int = Int(sender.value)
        calValue.text = String(cal)
    }
    
    @IBAction func pushGetDate(_ sender: Any) {
        // DatePickerで日付のみ取得（String）
        datePicker.datePickerMode = UIDatePicker.Mode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        let selectedDate = dateFormatter.string(from: datePicker.date)
        
        // SignInし直していた時用にsubIDを更新
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
        
        
        print(appDelegate.subID)
        print(selectedDate)
    }
    
    
    // DynamoDBにデータを追加する
    func runMutation(){
        print("push")
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateMealInput(createdBy: self.appDelegate.subID, userId: self.appDelegate.subID, timing: "lunch", place: "MONOMONO", price: 2000, cal: 3)
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateMealMutation(input: mutationInput)) { (result, error) in
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
    
    @IBAction func pushDataToDynamo(_ sender: Any) {
        print("push")
        runMutation()
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
