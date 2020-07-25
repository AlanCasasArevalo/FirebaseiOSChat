//
// Created by Alan Casas on 20/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol RegisterPresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
    func registerWithValidationPassed(email: String, password: String)
}

class RegisterPresenter: BasePresenter<RegisterViewControllerProtocol, RegisterRouterProtocol, RegisterInteractorProtocol>, RegisterPresenterProtocol {


    func viewDidLoad() {
        getRegisterTitle()

    }

    func viewWillAppear() {

    }

    func getRegisterTitle() {
    }

    func registerWithValidationPassed(email: String, password: String) {
        FirebaseManager.shared.createNewUser(withEmail: email, password: password, success: { success in
            if (success != nil) {
                self.view?.messageFromPresenter(title: "Genial!!!", message: "Ya estas registrado")
            }
        }, failure: { error in
            self.view?.messageFromPresenter(title: "Lo sentimos", message: "Hubo algun problema por favor intentalo mas tarde")
        })
    }

}
