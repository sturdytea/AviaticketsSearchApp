//
//
// HotelsCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class HotelsCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var hotelsViewController = HotelsViewController()
    
    func start() {
        rootViewController.setViewControllers([hotelsViewController], animated: false)
    }
}
