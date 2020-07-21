//
//  WelcomePresenter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol WelcomePresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
    func navigationToRegister()
    func navigationToLogin()
}

class WelcomePresenter: BasePresenter<WelcomeViewControllerProtocol, WelcomeRouterProtocol, WelcomeInteractorProtocol>, WelcomePresenterProtocol  {
  
    
    func viewDidLoad() {
        getWelcomeTitle()
        
    }
    
    func viewWillAppear() {
        
    }
    
    func getWelcomeTitle () {
        let welcomeTitle = "⚡️FlashChat"
        var charIndex = 0.0
        for letter in welcomeTitle {
            Timer.scheduledTimer(withTimeInterval: 0.15 * charIndex , repeats: false) { [weak self] (timer) in
                DispatchQueue.main.async {
                    self?.view?.titleLabel.text?.append(letter)
                }
            }
            charIndex += 1
        }
    }

    func navigationToRegister() {
        self.router?.navigationToRegister()
    }

    func navigationToLogin() {
        self.router?.navigationToLogin()
    }

}
