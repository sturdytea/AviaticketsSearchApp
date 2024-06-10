//
//
// WeekendsViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 07.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class WeekendsViewController: UIViewController {

    private lazy var weekendsView = WeekendsView()
    
    override func loadView() {
        view = weekendsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
