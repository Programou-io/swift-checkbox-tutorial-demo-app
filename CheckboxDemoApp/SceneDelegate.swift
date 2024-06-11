//
//  SceneDelegate.swift
//  CheckboxDemoApp
//
//  Created by Paolo Prodossimo Lopes on 11/06/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(
            rootViewController: CheckboxViewController()
        )
        window?.makeKeyAndVisible()
    }
}
