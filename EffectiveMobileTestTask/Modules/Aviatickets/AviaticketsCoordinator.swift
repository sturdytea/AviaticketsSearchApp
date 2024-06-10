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
    
    var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        viewController.navigationBar.backItem?.title = "Назад"
        return viewController
    }()
    
    lazy var aviaticketsViewController: AviaticketsViewController = {
        let viewController = AviaticketsViewController()
        viewController.showSearchRequested = { [weak self] in
            self?.goToSearch()
        }
        return viewController
    }()
    
    func start() {
        rootViewController.setViewControllers([aviaticketsViewController], animated: false)
    }
    
    func goToSearch() {
        lazy var searchViewController: SearchViewController = {
            let viewController = SearchViewController()
            viewController.showDifficultRoutesRequested = { [weak self] in
                self?.goToDifficultRoutes()
            }
            viewController.showWeekendsRequested = { [weak self] in
                self?.goToWeekends()
            }
            viewController.showLastMinuteTicketsRequested = { [weak self] in
                self?.goToLastMinuteTickets()
            }
            return viewController
        }()
        
        if let sheet = searchViewController.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 28
        }
        rootViewController.present(searchViewController, animated: true)
    }
    
    func goToDifficultRoutes() {
        lazy var searchViewController = SearchViewController()
        lazy var difficultRoutesViewController = DifficultRoutesViewController()
        rootViewController.show(difficultRoutesViewController, sender: self)
        rootViewController.dismiss(animated: true)

    }
    
    func goToWeekends() {
        lazy var searchViewController = SearchViewController()
        lazy var weekendsViewController = WeekendsViewController()
        rootViewController.show(weekendsViewController, sender: self)
        rootViewController.dismiss(animated: true)
//        rootViewController.navigationBar.backItem?.title = "Назад"
    }
    
    func goToLastMinuteTickets() {
        lazy var searchViewController = SearchViewController()
        lazy var lastMinuteTicketsViewController = LastMinuteTicketsViewController()
        rootViewController.show(lastMinuteTicketsViewController, sender: self)
        rootViewController.dismiss(animated: true)
//        rootViewController.navigationBar.backItem?.title = "Назад"
    }
    
    func goToCountryChoosen() {
        lazy var searchViewController = SearchViewController()
        lazy var countryChoosenViewController = CountryChoosenViewController()
        rootViewController.show(countryChoosenViewController, sender: self)
        rootViewController.dismiss(animated: true)
        rootViewController.navigationBar.isHidden = true
    }
}
