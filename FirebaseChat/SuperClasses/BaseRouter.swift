//
//  BaseRouter.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol BaseRouterProtocol: class {

}

class BaseRouter<ViewProtocol: Any>: NSObject, BaseRouterProtocol {
    
    internal var view: ViewProtocol?
    
    convenience init(view: ViewProtocol? = nil) {
        self.init()
        self.view = view
    }
}
