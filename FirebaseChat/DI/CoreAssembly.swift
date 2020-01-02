//
//  CoreAssembly.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

final public class CoreAssembly {
    
    private let navigationController: UINavigationController
    private(set) lazy var loginAssembly = LoginAssembly()
        
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
