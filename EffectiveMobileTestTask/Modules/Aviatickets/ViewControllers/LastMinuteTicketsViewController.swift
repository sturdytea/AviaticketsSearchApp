//
//
// LastMinuteTicketsViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 07.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class LastMinuteTicketsViewController: UIViewController {

    private lazy var lastMinuteTicketsView = LastMinuteTicketsView()
    
    override func loadView() {
        view = lastMinuteTicketsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
