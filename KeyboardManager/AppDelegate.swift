//
//  AppDelegate.swift
//  KeyboardManager
//
//  Created by Pedro Menezes on 20/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = ViewController()
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        return true
    }

}

