//
// Created by Alan Casas on 20/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import UIKit

final public class RegisterAssembly {

    final public func viewController () -> UIViewController {
        let viewController = RegisterViewController()
        viewController.presenter = presenter(view: viewController)
        return viewController
    }

    func presenter (view: RegisterViewControllerProtocol) -> RegisterPresenterProtocol {
        let presenter = RegisterPresenter(view: view, router: router(view: view), interactor: interactor())
        return presenter
    }

    func router (view: RegisterViewControllerProtocol) -> RegisterRouterProtocol {
        let router = RegisterRouter(view: view)
        return router
    }

    func interactor () -> RegisterInteractorProtocol {
        let interactor = RegisterInteractor(provider: provider())
        return interactor
    }

    func provider () -> RegisterProviderProtocol {
        let provider = RegisterProvider ()
        return provider
    }

}
