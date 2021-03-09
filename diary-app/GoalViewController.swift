//
//  ViewController.swift
//  navigation-test
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSMobileClient
import AWSS3

class GoalViewController: UIViewController, UINavigationControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "目標"
        // 背景色を設定
        view.backgroundColor = Pallet.bg_light_blue
    }
    
    
    @IBAction func pushNextButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
    @IBAction func pushS3Button(_ sender: Any) {
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
    }
    
}
