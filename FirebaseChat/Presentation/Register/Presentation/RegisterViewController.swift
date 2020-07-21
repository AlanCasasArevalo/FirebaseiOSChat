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

class RegisterViewController:  BaseViewController<RegisterPresenterProtocol>, RegisterViewControllerProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI () {
    }
}
