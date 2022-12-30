//
//  Storyboarded.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import Foundation

import UIKit

 /// Интерфейс навигации.
 protocol Storyboarded {
     static func instantiate() -> Self?
 }

/// Предоставляет экземпляр вью контроллера по ID
 extension Storyboarded where Self: UIViewController {
     static func instantiate() -> Self? {
         let id = String(describing: self)
         let storyboard = UIStoryboard(name: Constants.mainIDName, bundle: Bundle.main)
         return storyboard.instantiateViewController(withIdentifier: id) as? Self
     }
 }
