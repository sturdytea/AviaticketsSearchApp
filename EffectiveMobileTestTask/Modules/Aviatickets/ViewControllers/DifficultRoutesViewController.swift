//
//
// DifficultRoutesViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 06.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class DifficultRoutesViewController: UIViewController {

    private lazy var difficultRoutesView = DifficultRoutesView()
    
    override func loadView() {
        view = difficultRoutesView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
