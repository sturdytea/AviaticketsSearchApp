//
//
// InputBox.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

enum BoxType {
    case main, search, choosen
}

class InputBox: UIView {
    
    var cityOfDeparture = "Минск"
    var cityOfDeparturePlaceholder = "Откуда - Минск"
    var cityOfArrival = ""
    var cityOfArrivalPlaceholder = "Куда - Турция"
    
    private lazy var departureField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: cityOfDeparturePlaceholder,
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.greySix,
                NSAttributedString.Key.font: UIFont.customFont(.buttonTextOne)
            ])
        textField.font = .customFont(.buttonTextOne)
        textField.text = cityOfDeparture
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var arrivalField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: cityOfArrivalPlaceholder,
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.greySix,
                NSAttributedString.Key.font: UIFont.customFont(.buttonTextOne)
            ])
        textField.font = .customFont(.buttonTextOne)
        textField.text = cityOfArrival
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .greySix
        view.layer.opacity = 0.62
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var searchIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "SearchIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var planeIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "PlaneIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var changeIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "ChangeIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var closeIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "CloseIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var leftArrowIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "LeftArrowIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    init(_ boxType: BoxType) {
        super.init(frame: .zero)
        configure(boxType)
        setupViews(boxType)
        setupConstraints(boxType)
    }
    
    private func configure(_ type: BoxType) {
        // TODO: Add shadows
        layer.cornerRadius = 16
        translatesAutoresizingMaskIntoConstraints = false
        
        switch type {
        case .main:
            // TODO: Add BoxBackground
            backgroundColor = .greyFour
            heightAnchor.constraint(equalToConstant: 90).isActive = true
        case .search:
            backgroundColor = .greyTwo
            heightAnchor.constraint(equalToConstant: 96).isActive = true
        case .choosen:
            break
        }
    }
    
    private func setupViews(_ type: BoxType) {
        addSubview(departureField)
        addSubview(divider)
        addSubview(arrivalField)
        
        switch type {
        case .main:
            addSubview(searchIcon)
        case .search:
            addSubview(planeIcon)
            addSubview(searchIcon)
            addSubview(closeIcon)
        case .choosen:
            break
        }
    }
    
    private func setupConstraints(_ type: BoxType) {
        NSLayoutConstraint.activate([
            departureField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20),
            
            arrivalField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20),
            
            divider.centerYAnchor.constraint(equalTo: centerYAnchor),
            divider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
        
        switch type {
        case .main:
            NSLayoutConstraint.activate([
                departureField.leadingAnchor.constraint(equalTo: searchIcon.trailingAnchor, constant: 16),
                
                arrivalField.leadingAnchor.constraint(equalTo: searchIcon.trailingAnchor, constant: 16),
                
                searchIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
                searchIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                
                divider.leadingAnchor.constraint(equalTo: searchIcon.trailingAnchor, constant: 16),
            ])
        case .search:
            NSLayoutConstraint.activate([
                departureField.leadingAnchor.constraint(equalTo: planeIcon.trailingAnchor, constant: 16),
                
                arrivalField.leadingAnchor.constraint(equalTo: searchIcon.trailingAnchor, constant: 16),
                
                planeIcon.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20),
                planeIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                
                searchIcon.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20),
                searchIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                
                closeIcon.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20),
                closeIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                
                divider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            ])
        case .choosen:
            break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class InputBoxWithBackground: UIView {
    
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    private func configure() {
        backgroundColor = .greyThree
        layer.cornerRadius = 16
        heightAnchor.constraint(equalToConstant: 122).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
