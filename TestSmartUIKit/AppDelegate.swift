//
//  AppDelegate.swift
//  TestSmartUIKit
//
//  Created by Ranvir Prasad on 15/06/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        let vc = ViewController()
        let vc1 = testlayerViewController()
        let vc2 = symbolsViewController()
        window?.rootViewController = vc2
        window?.makeKeyAndVisible()
        return true
    }

   

}

