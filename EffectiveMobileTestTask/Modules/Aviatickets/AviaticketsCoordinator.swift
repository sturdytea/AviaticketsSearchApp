//
//
// AviaticketsCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class AviaticketsCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var aviaticketsViewController = AviaticketsViewController()
    
    func start() {
        rootViewController.setViewControllers([aviaticketsViewController], animated: false)
    }
}
