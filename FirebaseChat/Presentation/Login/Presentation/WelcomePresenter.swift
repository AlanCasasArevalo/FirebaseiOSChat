//
//  WelcomePresenter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol WelcomePresenterProtocol {
    func viewDidLoad()
    func viewWillAppear()
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
            Timer.scheduledTimer(withTimeInterval: 0.15 * charIndex , repeats: false) { (timer) in
                DispatchQueue.main.async {
                    self.view?.titleLabel.text?.append(letter)
                }
            }
            charIndex += 1
        }
    }
    
}
