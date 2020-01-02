//
//  BaseViewController.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol BaseViewControllerProtocol {
}

class BaseViewController<PresenterProtocol: Any>: UIViewController, BaseViewControllerProtocol{
    
    internal var presenter: PresenterProtocol?
    
    convenience init(presenter: PresenterProtocol? = nil) {
         self.init()
         self.presenter = presenter
     }
    
}
