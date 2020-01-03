//
//  WelcomeViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 03/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol WelcomeViewControllerProtocol {
    var letter: Character? { set get }
    var titleLabel: UILabel! { set get }
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
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    
}
