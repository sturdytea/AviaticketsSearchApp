//
//
// BriefView.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class BriefView: UIView {
    
    private lazy var pageName: UILabel = {
        let label = UILabel()
        label.text = "Короче"
        label.font = .customFont(.titleTwo)
        label.textColor = .greySix
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(pageName)
        NSLayoutConstraint.activate([
            pageName.centerXAnchor.constraint(equalTo: centerXAnchor),
            pageName.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
