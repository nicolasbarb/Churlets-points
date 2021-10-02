//
//  StartupScenario.swift
//  Churlets Point
//
//  Created by Nicolas Barbosa on 02/10/2021.
//

import Foundation
import UIKit
import SwiftUI

class StartupScenario {
    
    init(navigator: StartupNavigator) {
        self.navigator = navigator
    }
    
    private var navigator: StartupNavigator
    
    func begin() {
        navigator.navigateToHomeScreen()
    }
}

protocol StartupNavigator {
    func navigateToHomeScreen()
}

class DefaultStartupNavigator: StartupNavigator {
    
    init(navigationController: UINavigationController, window: UIWindow?) {
        self.navigationController = navigationController
        self.window = window 
    }
    
    private var navigationController: UINavigationController
    private let window: UIWindow?
    
    func navigateToHomeScreen() {
        let homeView = HomeView()
        let hostingViewController: UIViewController = UIHostingController(rootView: homeView)
        navigationController.pushViewController(hostingViewController, animated: true)
    }
}

