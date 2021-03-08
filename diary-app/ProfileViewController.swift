//
//  ProfileViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSMobileClient
import AWSCore
import AWSS3
import AWSDynamoDB

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameLabel.text = "User Name"
        
        fetchDynamoDBTableName()

    }

    private func fetchDynamoDBTableName() {
            let dynamoDB = AWSDynamoDB.default()
            let listTableInput = AWSDynamoDBListTablesInput()
            dynamoDB.listTables(listTableInput!).continueWith { (task:AWSTask<AWSDynamoDBListTablesOutput>) -> Any? in
                if let error = task.error as? NSError {
                print("Error occurred: \(error)")
                    return nil
                }

                let listTablesOutput = task.result

                for tableName in listTablesOutput!.tableNames! {
                    print("\(tableName)")
                }

                return nil
            }
        }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "プロフィール"
        
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
