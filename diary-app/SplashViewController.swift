//
//  SprashViewController.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/04/14.
//

import UIKit

class SplashViewController: UIViewController {

    
    @IBOutlet weak var splash_imageView: UIImageView!
    
    var timer:Timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // スプラッシュ画面の設定
    override func viewDidAppear(_ animated: Bool) {
        //少し縮小するアニメーション
        UIView.animate(withDuration: 0.3,
            delay: 1.0,
            options: UIView.AnimationOptions.curveEaseOut,
            animations: { () in
                self.splash_imageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }, completion: { (Bool) in

        })

        //拡大させて、消えるアニメーション
        UIView.animate(withDuration: 0.2,
            delay: 1.3,
            options: UIView.AnimationOptions.curveEaseOut,
            animations: { () in
                self.splash_imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                self.splash_imageView.alpha = 0
            }, completion: { (Bool) in
                self.splash_imageView.removeFromSuperview()
        })

        // アニメーション終了後に遷移する
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1){
            self.performSegue(withIdentifier: "toNavigation", sender: nil)
            
        }

    }
    

}
