//
//  LoginPresenter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol {
    func viewDidLoad()
    func viewWillAppear()
}

class LoginPresenter: BasePresenter<LoginViewControllerProtocol, LoginRouterProtocol, LoginInteractorProtocol>, LoginPresenterProtocol  {
    func viewDidLoad() {}
    func viewWillAppear() {}
}
