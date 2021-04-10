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

class MealViewController: UIViewController, UITextFieldDelegate {

    var appSyncClient: AWSAppSyncClient?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var calLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var timingSegment: UISegmentedControl!
    @IBOutlet weak var detailTextField: UITextField!
    @IBOutlet weak var placeTextField: UITextField!
    
    
    var cal: Int = 0
    var date: String = ""
    var price: Int = 0
    var timing: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        
        // Do any additional setup after loading the view.
        appSyncClient = appDelegate.appSyncClient
        
        detailTextField.delegate = self
        placeTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "食事を記録する"
    }
    
    @IBAction func priceValue(_ sender: UISlider) {
        price = Int(sender.value)
        priceLabel.text = String(price)
    }
    
    @IBAction func calValue(_ sender: UISlider) {
        cal = Int(sender.value)
        calLabel.text = String(cal)
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        let selectedIndex = timingSegment.selectedSegmentIndex
        timing = timingSegment.titleForSegment(at: selectedIndex) ?? "Lunch"
    }
    
    // キーボードを閉じる（画面のどこかが押された時に呼び出される）
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // Returnキーが押されたらキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        detailTextField.resignFirstResponder()
        placeTextField.resignFirstResponder()
        return true
    }
    
    // DynamoDBにデータを追加する
    func runMutation(){
        // DatePickerで日付のみ取得（String）
        datePicker.datePickerMode = UIDatePicker.Mode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        date = dateFormatter.string(from: datePicker.date)
        
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreateMealInput(userId: self.appDelegate.id, day: date, timing: timing, place: placeTextField.text, price: price, cal: cal)
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreateMealMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            
//            if let resultError = result?.errors{
//                print("Error saving the item on server: \(resultError)")
//                return
//            }
            
            print("データを追加（runMutation）")

        }
 
    }
    
    @IBAction func pushDataToDynamo(_ sender: Any) {
        runMutation()
    }
    
}
