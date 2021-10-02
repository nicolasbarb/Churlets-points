//
//  StartupScenario_Spec.swift
//  Churlets PointTests
//
//  Created by Nicolas Barbosa on 02/10/2021.
//

import Foundation
import XCTest
@testable import Churlets_Point

class StartupScenario_Spec: XCTestCase {
    
    func test_Navigates_to_home_at_beginning() {
        givenScenario()
        whenBeginning()
        thenHistory(is: [.home])
    }
    
    private func givenScenario() {
        navigatorSpy = StartupNavigatorSpy()
        scenario = StartupScenario(navigator: navigatorSpy)
    }
    
    private func whenBeginning() {
        scenario.begin()
    }
    
    private func thenHistory(is expected: [StartupNavigatorSpy.History]) {
        XCTAssertEqual(expected, navigatorSpy.history)
    }
    
    private var scenario: StartupScenario!
    private var navigatorSpy: StartupNavigatorSpy!
}

class StartupNavigatorSpy: StartupNavigator {
    
    private(set) var history: [History] = []
    
    func navigateToHomeScreen() {
        history.append(.home)
    }
    
    enum History: CustomDebugStringConvertible {
        case home
        
        var debugDescription: String {
            switch self {
                case .home: return "Home"
            }
        }
    }
}
