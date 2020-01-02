//
//  BaseInteractor.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import Foundation

protocol BaseInteractorProtocol {

}

class BaseInteractor <BaseProviderProtocol: Any>: NSObject, BaseInteractorProtocol {

    internal var provider: BaseProviderProtocol?

    convenience init(provider: BaseProviderProtocol? = nil) {
         self.init()
         self.provider = provider
     }

}
