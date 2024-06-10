//
//
// CountryChoosenViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 10.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class CountryChoosenViewController: UIViewController {
    
    lazy var countryChoosenView = CountryChoosenView()
    
    override func loadView() {
        view = countryChoosenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
