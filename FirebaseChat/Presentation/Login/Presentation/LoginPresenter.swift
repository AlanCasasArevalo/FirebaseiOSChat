//
// Created by Alan Casas on 21/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import Foundation
protocol LoginPresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
    func loginWithValidationPassed(email: String, password: String)
}

class LoginPresenter: BasePresenter<LoginViewControllerProtocol, LoginRouterProtocol, LoginInteractorProtocol>, LoginPresenterProtocol {

    func viewDidLoad() {

    }

    func viewWillAppear() {

    }

    func loginWithValidationPassed(email: String, password: String){
        FirebaseManager.shared.signIn(withEmail: email, password: password, success: { success in
            
        }, failure: { error in

        })
    }

}