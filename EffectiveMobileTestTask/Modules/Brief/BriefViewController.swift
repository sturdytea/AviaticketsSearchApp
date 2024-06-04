//
//
// BriefViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class BriefViewController: UIViewController {

    private lazy var briefView = BriefView()
    
    override func loadView() {
        view = briefView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
