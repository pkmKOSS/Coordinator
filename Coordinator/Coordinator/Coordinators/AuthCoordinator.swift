//
//  AuthCoordinator.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import UIKit

/// Координатор экрана авторизации.
final class AuthCoordinator: BaseCoordinator {
    // MARK: - Public Properties

    var rootController: UINavigationController?
    var onFinishFlow: VoidHandler?

    // MARK: - Public Methods

    override func start() {
        showLoginModule()
    }

    // MARK: - Private Methods

    private func showLoginModule() {
        guard
            let controller = AuthorizationViewController.instantiate() else { return }
        controller.tiMainScreen = { [weak self] in
            guard let self = self else { return }
            self.showMainViewController()
        }
        controller.toRegistration = { [weak self] in
            guard let self = self else { return }
            self.showRegistrationViewController()
        }
        rootController = UINavigationController(rootViewController: controller)
        guard let rootController else { return }
        setAsRoot(rootController)
    }

    private func showMainViewController() {
        guard
            let controller = MainViewController.instantiate(),
            let rootController = rootController
        else { return }
        rootController.pushViewController(controller, animated: true)
    }

    private func showRegistrationViewController() {
        guard
            let controller = RegistrationViewController.instantiate(),
            let rootController = rootController
        else { return }
        controller.onFinishFlow = onFinishFlow
        rootController.pushViewController(controller, animated: true)
    }
}
