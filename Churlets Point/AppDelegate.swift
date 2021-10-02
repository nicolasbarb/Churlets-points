//
//  AppDelegate.swift
//  Churlets Point
//
//  Created by Nicolas Barbosa on 02/10/2021.
//

import AVFoundation
import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        configureFirebaseDatabase()
        startApp()
        return true
    }
    
    private func configureFirebaseDatabase() {
        FirebaseApp.configure()
        var ref: DatabaseReference
        ref = Database.database().reference()

    }
    
    private func startApp() {
        let navigationController = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        let startupNavigator = DefaultStartupNavigator(navigationController: navigationController, window: window)
        let scenario = StartupScenario(navigator: startupNavigator)
        scenario.begin()
    }
}
