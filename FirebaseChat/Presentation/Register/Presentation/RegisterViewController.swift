//
//  RegisterViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 20/07/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol RegisterViewControllerProtocol: class {
}

class RegisterViewController: BaseViewController<RegisterPresenterProtocol>, RegisterViewControllerProtocol {

    @IBOutlet weak var emailCustomRoundedTextField: CustomRoundedTextField!
    @IBOutlet weak var passwordCustomRoundedTextField: CustomRoundedTextField!
    @IBOutlet weak var customRegisterButton: CustomRoundedButton!
    var emailValidated: String?
    var passwordValidated: String?

    var cornerRadius: CGFloat = 30

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()

        setupUI()
        setDelegates()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillAppear()
    }

    func setupUI() {
        cornerRadius = emailCustomRoundedTextField.bounds.height/2
        emailCustomRoundedTextField.setupCustomTextField(title: "", placeHolder: "Email", backgroundColor: .white, titleColor: .black, cornerRadius: cornerRadius, shadowColor: UIColor.darkGray.cgColor, shadowOpacity: 10, shadowOffset: CGSize(width: 10, height: 10), shadowRadius: 10)
        passwordCustomRoundedTextField.setupCustomTextField(title: "", placeHolder: "Password", backgroundColor: .white, titleColor: .black, cornerRadius: cornerRadius, shadowColor: UIColor.darkGray.cgColor, shadowOpacity: 10, shadowOffset: CGSize(width: 10, height: 10), shadowRadius: 10)
        customRegisterButton.setupCustomButton(title: "Register", backgroundColor: .orange, titleColor: .black, cornerRadius: cornerRadius, shadowColor: UIColor.darkGray.cgColor, shadowOpacity: 0, shadowOffset: CGSize(width: 10, height: 10), shadowRadius: 10)
    }

    func setDelegates() {
        emailCustomRoundedTextField.delegate = self
        passwordCustomRoundedTextField.delegate = self
        customRegisterButton.delegate = self
    }
}

extension RegisterViewController: CustomRoundedButtonDelegate {
    func customButtonTapped() {
        guard let email = emailValidated, let password = passwordValidated else { return }
        self.presenter?.registerWithValidationPassed(email: email, password: password)
    }
}

extension RegisterViewController: CustomRoundedTextFieldDelegate {

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if textField.placeholder == "Email" {
            if textField.text?.isValidEmail() ?? false {
                emailValidated = textField.text
            }
        } else if textField.placeholder == "Password" {
            if textField.text != "" && !(textField.text?.isEmpty ?? true) {
                passwordValidated = textField.text
            }
        }
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.placeholder == "Email" {
            if textField.text?.isValidEmail() ?? false {
                emailValidated = textField.text
            }
        } else if textField.placeholder == "Password" {
            if textField.text != "" && !(textField.text?.isEmpty ?? true) {
                passwordValidated = textField.text
            }
        }
        return true
    }
}
