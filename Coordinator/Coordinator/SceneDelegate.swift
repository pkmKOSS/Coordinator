//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import UIKit

/// Сгенерированный сцен делегат.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: ApplicationCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
                 window = UIWindow(windowScene: scene)
                 window?.makeKeyAndVisible()

                 coordinator = ApplicationCoordinator()
                 coordinator?.start()
    }
}

