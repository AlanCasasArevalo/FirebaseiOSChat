//
//  AppAssembly.swift
//  FirebaseChat
//
//  Created by Alan Casas on 02/01/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

final class AppAssembly {
    private(set) lazy var window = UIWindow(frame: UIScreen.main.bounds)
    private(set) lazy var navigationController = UINavigationController()
    private(set) lazy var coreAssembly = CoreAssembly(navigationController: navigationController)
}
