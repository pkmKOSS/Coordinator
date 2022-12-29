//
//  ApplicationCoordinator.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import Foundation

/// Координатор приложения.
final class ApplicationCoordinator: BaseCoordinator {
    // MARK: - Public Methods

    override func start() {
        toAuth()
    }

    // MARK: - Private Methods
    
    private func toAuth() {
        let coordinator = AuthCoordinator()

        coordinator.onFinishFlow = { [weak self, weak coordinator] in
            self?.removeDependency(coordinator)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
}
