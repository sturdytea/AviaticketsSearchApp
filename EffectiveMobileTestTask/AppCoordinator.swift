//
//
// AppCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navBarCoordinator = NavBarCoordinator()
        navBarCoordinator.start()
        self.childCoordinators = [navBarCoordinator]
        self.window.rootViewController = navBarCoordinator.rootViewController
    }
}
