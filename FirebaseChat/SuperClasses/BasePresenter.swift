//
//  BasePresenter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol BasePresenterProtocol: class {
}

class BasePresenter <ViewProtocol: Any, RouterProtocol: Any, InteractorProtocol: Any>: NSObject, BasePresenterProtocol {
    internal var view: ViewProtocol?
    internal var router: RouterProtocol?
    internal var interactor: InteractorProtocol?

    convenience init(view: ViewProtocol, router: RouterProtocol? = nil, interactor: InteractorProtocol? = nil) {
        self.init()
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}
