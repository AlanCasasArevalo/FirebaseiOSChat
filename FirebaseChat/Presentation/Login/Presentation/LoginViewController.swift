//
//  LoginViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 21/07/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol LoginViewControllerProtocol: class {
}

class LoginViewController: BaseViewController<LoginPresenterProtocol>, LoginViewControllerProtocol {

    @IBOutlet weak var emailCustomRoundedTextField: CustomRoundedTextField!
    @IBOutlet weak var passwordCustomRoundedTextField: CustomRoundedTextField!
    var cornerRadius: CGFloat = 30

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setDelegates()
    }

    func setupUI() {
        cornerRadius = emailCustomRoundedTextField.bounds.height/2
        emailCustomRoundedTextField.setupCustomTextField(title: "", placeHolder: "Email", backgroundColor: .white, titleColor: .black, cornerRadius: cornerRadius, shadowColor: UIColor.darkGray.cgColor, shadowOpacity: 10, shadowOffset: CGSize(width: 10, height: 10), shadowRadius: 10)
        passwordCustomRoundedTextField.setupCustomTextField(title: "", placeHolder: "Password", backgroundColor: .white, titleColor: .black, cornerRadius: cornerRadius, shadowColor: UIColor.darkGray.cgColor, shadowOpacity: 10, shadowOffset: CGSize(width: 10, height: 10), shadowRadius: 10)
    }

    func setDelegates() {
        emailCustomRoundedTextField.delegate = self
        passwordCustomRoundedTextField.delegate = self
    }
}
extension LoginViewController: CustomRoundedTextFieldDelegate {

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
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

}
