//
//  WelcomeViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 03/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol WelcomeViewControllerProtocol: class {
    var letter: Character? { set get }
    var titleLabel: UILabel! { set get }
    func navigationToViewController (viewController: UIViewController)
}

class WelcomeViewController:  BaseViewController<WelcomePresenterProtocol>, WelcomeViewControllerProtocol {
    var letter: Character?
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillAppear()
    }
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        self.presenter?.navigationToRegister()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        self.presenter?.navigationToLogin()
    }
}

extension WelcomeViewController {
    func navigationToViewController (viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}