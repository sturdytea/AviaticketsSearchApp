//
//
// ProfileCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class ProfileCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var profileViewController = ProfileViewController()
    
    func start() {
        rootViewController.setViewControllers([profileViewController], animated: false)
    }
}
