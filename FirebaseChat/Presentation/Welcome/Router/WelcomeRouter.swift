//
//  WelcomeRouter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol WelcomeRouterProtocol: class {
    func navigationToRegister()
    func navigationToLogin()
}

class WelcomeRouter : BaseRouter<WelcomeViewControllerProtocol>, WelcomeRouterProtocol  {

    func navigationToRegister() {
        let register = RegisterAssembly().viewController()
        self.view?.navigationToViewController(viewController: register)
    }

    func navigationToLogin() {
        let login = LoginAssembly().viewController()
        self.view?.navigationToViewController(viewController: login)
    }
}
