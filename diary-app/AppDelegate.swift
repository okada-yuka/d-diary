//
//  AppDelegate.swift
//  navigation-test
//
//  Created by Yuka Okada on 2021/03/07.
//

import UIKit
import AWSCognitoIdentityProvider
import AWSCore
import AWSAppSync
import AWSMobileClient

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var appSyncClient: AWSAppSyncClient?
    
    var username : String = ""
    
    var subID: String = ""
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let accessKey = IAMConstans.accessKey
        let secretKey = IAMConstans.secretKey
        let provider = AWSStaticCredentialsProvider(accessKey: accessKey, secretKey: secretKey)

        let configuration = AWSServiceConfiguration(region: AWSRegionType.APNortheast1,credentialsProvider: provider)

        AWSServiceManager.default().defaultServiceConfiguration = configuration
        
        

            // Initialize the AWS AppSync configuration
            /*
            let databaseURL = URL(fileURLWithPath:NSTemporaryDirectory()).appendingPathComponent("database_name")

            do {
                //AppSync configuration & client initialization
                let appSyncServiceConfig = try AWSAppSyncServiceConfig()
                let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig, databaseURL: databaseURL)
                appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
                // Set id as the cache key for objects. See architecture section for details
                appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }
            } catch {
                print("Error initializing appsync client. \(error)")
            }
            */

        
        do {
            
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            
            // Initialize the AWS AppSync configuration
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig, cacheConfiguration: cacheConfiguration)
            
            // Initialize the AWS AppSync client
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            
            // Set id as the cache key for objects. See architecture section for details
            appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }
            
            print("Initialized appsync client.")
            
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        

        
        
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
