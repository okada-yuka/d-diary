//
//  AppDelegate.swift
//  navigation-test
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSCognitoIdentityProvider
import AWSCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 下記を追加
        let accessKey = IAMConstans.accessKey
        let secretKey = IAMConstans.secretKey
        let provider = AWSStaticCredentialsProvider(accessKey: accessKey, secretKey: secretKey)

        let configuration = AWSServiceConfiguration(
            region: AWSRegionType.APNortheast1,  // regionは適宜変更してください
            credentialsProvider: provider)

        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

