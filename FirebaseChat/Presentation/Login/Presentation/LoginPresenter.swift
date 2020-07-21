//
// Created by Alan Casas on 21/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import Foundation
protocol LoginPresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
}

class LoginPresenter: BasePresenter<LoginViewControllerProtocol, LoginRouterProtocol, LoginInteractorProtocol>, LoginPresenterProtocol {

    func viewDidLoad() {

    }

    func viewWillAppear() {

    }

}