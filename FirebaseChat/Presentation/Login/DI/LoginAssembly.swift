//
//  LoginAssembly.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

final public class LoginAssembly {
        
    final public func viewController () -> UIViewController {
        let viewController = LoginViewController()
        viewController.presenter = presenter(view: viewController)
        return viewController
    }
    
    func presenter (view: LoginViewControllerProtocol) -> LoginPresenterProtocol {
        let presenter = LoginPresenter(view: view, router: router(view: view), interactor: loginInteractor())
        return presenter
    }
    
    func router (view: LoginViewControllerProtocol) -> LoginRouterProtocol {
        let router = LoginRouter(view: view)
        return router
    }
    
    func loginInteractor () -> LoginInteractorProtocol {
        let interactor = LoginInteractor(provider: loginProvider())
        return interactor
    }
    
    func loginProvider () -> LoginProviderProtocol {
        let provider = LoginProvider ()
        return provider
    }
        
}
