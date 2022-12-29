//
//  RegistrationViewController.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import UIKit

/// Экран регистрации
final class RegistrationViewController: UIViewController, Storyboarded {
    // MARK: - Public Properties

    var onFinishFlow: VoidHandler?

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.onFinishFlow?()
        }
    }
}
