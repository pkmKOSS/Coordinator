//
//  BaseCoordinator.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import UIKit

/// Асбтрактный класс координатор
 class BaseCoordinator {

     // MARK: - Public properties

     var childCoordinators: [BaseCoordinator] = []

     // MARK: - Public Methods

     func start() {}

     func addDependency(_ coordinator: BaseCoordinator) {
         for element in childCoordinators where element === coordinator {
             return
         }
         childCoordinators.append(coordinator)
     }

     func removeDependency(_ coordinator: BaseCoordinator?) {
         guard childCoordinators.isEmpty == false,
               let coordinator
         else { return }
         for (index, element) in childCoordinators.reversed().enumerated() where element === coordinator {
             childCoordinators.remove(at: index)
             break
         }
     }

     func setAsRoot(_ controller: UIViewController) {
         UIApplication.shared.keyWindow?.rootViewController = controller
     }
 }
