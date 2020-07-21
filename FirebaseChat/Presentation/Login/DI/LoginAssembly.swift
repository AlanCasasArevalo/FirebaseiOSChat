//
// Created by Alan Casas on 21/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import UIKit

final public class LoginAssembly {

    final public func viewController () -> UIViewController {
        let viewController = LoginViewController()
        viewController.presenter = presenter(view: viewController)
        return viewController
    }

    func presenter (view: LoginViewControllerProtocol) -> LoginPresenterProtocol {
        let presenter = LoginPresenter(view: view, router: router(view: view), interactor: interactor())
        return presenter
    }

    func router (view: LoginViewControllerProtocol) -> LoginRouterProtocol {
        let router = LoginRouter(view: view)
        return router
    }

    func interactor () -> LoginInteractorProtocol {
        let interactor = LoginInteractor(provider: provider())
        return interactor
    }

    func provider () -> LoginProviderProtocol {
        let provider = LoginProvider ()
        return provider
    }

}
