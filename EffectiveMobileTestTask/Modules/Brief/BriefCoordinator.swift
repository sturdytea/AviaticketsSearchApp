//
//
// BriefCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class BriefCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var briefViewController = BriefViewController()
    
    func start() {
        rootViewController.setViewControllers([briefViewController], animated: false)
    }
}
