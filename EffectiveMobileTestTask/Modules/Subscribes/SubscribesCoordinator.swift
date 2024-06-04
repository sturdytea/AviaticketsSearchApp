//
//
// SubscribesCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class SubscribesCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var subscribesViewController = SubscribesViewController()
    
    func start() {
        rootViewController.setViewControllers([subscribesViewController], animated: false)
    }
}
