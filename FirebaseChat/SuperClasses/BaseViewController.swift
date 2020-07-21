//
//  BaseViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol BaseViewControllerProtocol: class {
    func showLoader()
    func hideLoader()
    func navigateToViewController(viewController: UIViewController)
    func presentModalWithNavigationControllerForViewController(viewController: UIViewController)
    
}

class BaseViewController<PresenterProtocol: Any>: UIViewController, BaseViewControllerProtocol {
    
    internal var presenter: PresenterProtocol?
    
    convenience init(presenter: PresenterProtocol? = nil) {
        self.init()
        self.presenter = presenter
    }
    
    
    func showLoader() {}
    func hideLoader() {}
    
    func navigateToViewController(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func navigateToViewController(viewController: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func presentModalWithNavigationControllerForViewController(viewController: UIViewController) {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .overCurrentContext
        present(navigationController, animated: true, completion: nil)
    }
    
    func presentModalWithNavigationControllerForViewControllerOverFullScreen(viewController: UIViewController) {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .overFullScreen
        present(navigationController, animated: true, completion: nil)
    }
    
}
