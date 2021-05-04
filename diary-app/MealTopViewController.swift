//
//  MealTopViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/05/05.
//

import UIKit

class MealTopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // NavigationBarのTitleを設定
        self.parent?.navigationItem.title = "食事を記録する"
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
