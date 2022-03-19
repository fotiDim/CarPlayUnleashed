//
//  CarPlaySceneDelegate.swift
//  CarPlayUnleashed
//
//  Created by Fotios Dimanidis on 19.03.22.
//

import CarPlay

@available(iOS 13.0, *)
class CarPlaySceneDelegate: UIResponder, CPTemplateApplicationSceneDelegate {
            
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController, to window: CPWindow) {
        
        AppDelegate.setupCarplay(interfaceController: interfaceController, on: window)
    }
}
