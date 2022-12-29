//
//  AuthorizationViewController.swift
//  Coordinator
//
//  Created by Григоренко Александр Игоревич on 28.12.2022.
//

import UIKit

/// Экран авторизации
 final class AuthorizationViewController: UIViewController, Storyboarded {

     // MARK: - Private constants

     private enum Constants {
         static let fakeLogin = "111"
         static let fakePassword = "111"
     }

     // MARK: - Private IBOutlets

     @IBOutlet private var loginTextField: UITextField!
     @IBOutlet private var passwordTextField: UITextField!

     // MARK: - Public Properties

     var toRegistration: VoidHandler?
     var tiMainScreen: VoidHandler?

     // MARK: - Private IBActions

     @IBAction private func loginButtonAction(_ sender: Any) {
        guard
            loginTextField.text == Constants.fakeLogin,
            passwordTextField.text == Constants.fakePassword
         else {
            return
        }
         tiMainScreen?()
     }

     @IBAction private func registrationButtonAction(_ sender: Any) {
         toRegistration?()
     }
 }
