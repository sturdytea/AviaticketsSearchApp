//
//
// HintButton.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 05.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class HintButton: UIButton {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.isUserInteractionEnabled = true
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        
        var configuration = UIButton.Configuration.plain()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        button.configuration = configuration
        return button
    }()
    
    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = .customFont(.textTwo)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = 72
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(_ title: String, imageName: String, buttonColor: UIColor) {
        super.init(frame: .zero)
        configure(title, imageName, buttonColor)
        setupViews()
        setupConstraints()
    }
    
    private func configure(_ titleText: String, _ imageName: String, _ buttonColor: UIColor) {
        button.backgroundColor = buttonColor
        button.setImage(UIImage(named: imageName), for: .normal)
        title.text = titleText
    }
    
    private func setupViews() {
        addSubview(button)
        addSubview(title)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 8),
        ])
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
