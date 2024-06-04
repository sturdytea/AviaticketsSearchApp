//
//
// AviaticketsViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class AviaticketsViewController: UIViewController {

    private lazy var aviaticketsView = AviaticketsView()
    
    override func loadView() {
        view = aviaticketsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
