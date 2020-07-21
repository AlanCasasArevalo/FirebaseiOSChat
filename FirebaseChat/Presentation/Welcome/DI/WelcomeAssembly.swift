//
//  WelcomeAssembly.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

final public class WelcomeAssembly {
        
    final public func viewController () -> UIViewController {
        let viewController = WelcomeViewController()
        viewController.presenter = presenter(view: viewController)
        return viewController
    }
    
    func presenter (view: WelcomeViewControllerProtocol) -> WelcomePresenterProtocol {
        let presenter = WelcomePresenter(view: view, router: router(view: view), interactor: interactor())
        return presenter
    }
    
    func router (view: WelcomeViewControllerProtocol) -> WelcomeRouterProtocol {
        let router = WelcomeRouter(view: view)
        return router
    }
    
    func interactor () -> WelcomeInteractorProtocol {
        let interactor = WelcomeInteractor(provider: provider())
        return interactor
    }
    
    func provider () -> WelcomeProviderProtocol {
        let provider = WelcomeProvider ()
        return provider
    }
        
}
