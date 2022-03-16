//
//  AppDelegate.swift
//  CarPlayUnleashed
//
//  Created by Fotios Dimanidis on 18.12.21.
//

import UIKit
import CarPlay

@main
class AppDelegate: UIResponder, UIApplicationDelegate, CPApplicationDelegate, CPMapTemplateDelegate {
    
    var carPlayWindow: CPWindow?
    var interfaceController: CPInterfaceController?
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didConnectCarInterfaceController interfaceController: CPInterfaceController, to window: CPWindow) {
        self.interfaceController = interfaceController
        self.carPlayWindow = window
        
        interfaceController.setRootTemplate(CPMapTemplate(), animated: true)
        
        let carPlayStoryBoard = UIStoryboard(name: "CarPlay", bundle:nil)
        window.rootViewController = carPlayStoryBoard.instantiateInitialViewController()
    }
    
    func application(_ application: UIApplication, didDisconnectCarInterfaceController interfaceController: CPInterfaceController, from window: CPWindow) {
        // Not used
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

