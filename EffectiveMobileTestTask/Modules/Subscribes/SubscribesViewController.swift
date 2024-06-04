//
//
// SubscribesViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class SubscribesViewController: UIViewController {

    private lazy var subscribesView = SubscribesView()
    
    override func loadView() {
        view = subscribesView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
