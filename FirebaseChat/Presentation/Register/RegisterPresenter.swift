//
// Created by Alan Casas on 20/07/2020.
// Copyright (c) 2020 Alan Casas. All rights reserved.
//

import Foundation
//
//  RegisterPresenter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol RegisterPresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
}

class RegisterPresenter: BasePresenter<RegisterViewControllerProtocol, RegisterRouterProtocol, RegisterInteractorProtocol>, RegisterPresenterProtocol  {


    func viewDidLoad() {
        getRegisterTitle()

    }

    func viewWillAppear() {

    }

    func getRegisterTitle () {
    }

}
