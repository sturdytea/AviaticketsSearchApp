//
//
// SearchView.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 05.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class SearchView: UIView {
    
    private lazy var inputBox = InputBox(BoxType.search)
    
    lazy var hintOne = HintButton("Сложный маршрут", imageName: "RouteIcon", buttonColor: .green)
    lazy var hintTwo = HintButton("Куда угодно", imageName: "GlobeIcon", buttonColor: .blue)
    lazy var hintThree = HintButton("Выходные", imageName: "CalendarIcon", buttonColor: .darkBlue)
    lazy var hintFour = HintButton("Горячие билеты", imageName: "FireIcon", buttonColor: .red)
    
    private lazy var hintsStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(hintOne)
        stackView.addArrangedSubview(hintTwo)
        stackView.addArrangedSubview(hintThree)
        stackView.addArrangedSubview(hintFour)
        return stackView
    }()
    
    lazy var tableBox: ResizableTable = {
        let tableView = ResizableTable()
        tableView.backgroundColor = .clear
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 16
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .greyFour
        tableView.sizeToFit()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(RecommendedTownTableViewCell.self, forCellReuseIdentifier: RecommendedTownTableViewCell().identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .greyThree
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        addSubview(inputBox)
        addSubview(hintsStack)
        addSubview(tableBox)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            inputBox.centerXAnchor.constraint(equalTo: centerXAnchor),
            inputBox.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            inputBox.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            hintsStack.topAnchor.constraint(equalTo: inputBox.bottomAnchor, constant: 24),
            hintsStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            hintsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            tableBox.topAnchor.constraint(equalTo: hintsStack.bottomAnchor, constant: 64),
            tableBox.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            tableBox.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ResizableTable: UITableView {
    override var contentSize: CGSize {
        didSet {
            if !constraints.isEmpty {
                invalidateIntrinsicContentSize()
            } else {
                sizeToFit()
            }
        }
    }

    override var intrinsicContentSize: CGSize {
        return contentSize
        
    }

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return contentSize
        
    }
}
