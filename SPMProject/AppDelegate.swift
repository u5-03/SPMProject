//
//  AppDelegate.swift
//  SPMProject
//
//  Created by yugo.sugiyama on 2022/11/03.
//

import UIKit
import BasePackage

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let mainViewController = MainViewController(rootView: BaseView())
        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
