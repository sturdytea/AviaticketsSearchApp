//
//
// HotelsViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class HotelsViewController: UIViewController {

    private lazy var hotelsView = HotelsView()
    
    override func loadView() {
        view = hotelsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
