//
//  NavigationViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/08.
//

import UIKit
import AWSMobileClient

class NavigationViewController: UINavigationController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // ナビゲーションバーの背景色
        navigationBar.barTintColor = Pallet.bg_light_blue
        // ナビゲーションバーのアイテムの色　（戻る　＜　とか　読み込みゲージとか）
        navigationBar.tintColor = Pallet.light_blue
        // ナビゲーションバーのテキストを変更する
        navigationBar.titleTextAttributes = [
            // 文字の色
            .foregroundColor: Pallet.light_blue
        ]
        
    }

    
}
