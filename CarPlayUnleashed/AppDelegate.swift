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
        
        let controller = UIViewController()
        controller.view.frame = window.bounds
        controller.view.backgroundColor = UIColor.darkGray
        let label = UILabel(frame: controller.view.frame)
        label.text = "CarPlay Unleashed"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor.systemYellow
        label.textAlignment = .center
        controller.view.addSubview(label)
        window.rootViewController = controller
    }
    
    func application(_ application: UIApplication, didDisconnectCarInterfaceController interfaceController: CPInterfaceController, from window: CPWindow) {
        // Not used
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

