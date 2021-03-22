//
//  Only1stViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/22.
//

import UIKit

class Only1stViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // NavigationBarを表示しない
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func pushBackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toHome", sender: nil)
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
