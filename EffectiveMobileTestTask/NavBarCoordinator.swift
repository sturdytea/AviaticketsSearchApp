//
//
// NavBarCoordinator.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class NavBarCoordinator: Coordinator {
    
    var rootViewController: UITabBarController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .clear
        rootViewController.tabBar.tintColor = .blue
        rootViewController.tabBar.unselectedItemTintColor = .greySix
    }
    
    func start() {
        let aviaticketsCoordinator = AviaticketsCoordinator()
        aviaticketsCoordinator.start()
        childCoordinators.append(aviaticketsCoordinator)
        let aviaticketsViewController = aviaticketsCoordinator.aviaticketsViewController
        setup(aviaticketsViewController,
              title: "Авиабилеты",
              imageName: "AviaticketsIcon")
        
        let hotelsCoordinator = HotelsCoordinator()
        hotelsCoordinator.start()
        childCoordinators.append(hotelsCoordinator)
        let hotelsViewController = hotelsCoordinator.hotelsViewController
        setup(hotelsViewController,
              title: "Отели",
              imageName: "HotelsIcon")
        
        let briefCoordinator = BriefCoordinator()
        briefCoordinator.start()
        childCoordinators.append(briefCoordinator)
        let briefViewController = briefCoordinator.briefViewController
        setup(briefViewController, 
              title: "Короче",
              imageName: "BriefIcon")
        
        let subscribesCoordinator = SubscribesCoordinator()
        subscribesCoordinator.start()
        childCoordinators.append(subscribesCoordinator)
        let subscribesViewController = subscribesCoordinator.subscribesViewController
        setup(subscribesViewController,
              title: "Подписки",
              imageName: "SubscribesIcon")
        
        let profileCoordinator = ProfileCoordinator()
        profileCoordinator.start()
        childCoordinators.append(profileCoordinator)
        let profileViewController = profileCoordinator.profileViewController
        setup(profileViewController,
              title: "Профиль",
              imageName: "ProfileIcon")
        
        self.rootViewController.viewControllers = [
            aviaticketsCoordinator.rootViewController,
            hotelsCoordinator.rootViewController,
            briefCoordinator.rootViewController,
            subscribesCoordinator.rootViewController,
            profileCoordinator.rootViewController
        ]
    }
    
    func setup(_ viewController: UIViewController, title: String, imageName: String = "questionmark.circle") {
        let image = UIImage(named: imageName)
        let tabBarItem = UITabBarItem(title: title, image: image, selectedImage: image)
        viewController.tabBarItem = tabBarItem
    }
}
