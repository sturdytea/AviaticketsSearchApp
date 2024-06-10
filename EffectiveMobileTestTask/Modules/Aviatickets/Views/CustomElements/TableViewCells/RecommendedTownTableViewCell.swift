//
//
// RecommendedTownTableViewCell.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 06.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class RecommendedTownTableViewCell: UITableViewCell {

    let identifier = "RecommendedTownTableViewCell"
    
    private lazy var townImage: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.font = .customFont(.titleThree)
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var comment: UILabel = {
        let label = UILabel()
        label.font = .customFont(.textTwo)
        label.textAlignment = .left
        label.textColor = .greyFive
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public func configureCell(imageName: String, townName: String, commentText: String) {
        name.text = townName
        comment.text = commentText
        townImage.image = UIImage(named: imageName)
        backgroundColor = .greyTwo
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        addSubview(townImage)
        addSubview(name)
        addSubview(comment)
    }
        
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            townImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            townImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            townImage.heightAnchor.constraint(equalToConstant: 40),
            townImage.widthAnchor.constraint(equalToConstant: 40),
            
            name.topAnchor.constraint(equalTo: townImage.topAnchor),
            name.leadingAnchor.constraint(equalTo: townImage.trailingAnchor, constant: 8),
            
            comment.bottomAnchor.constraint(equalTo: townImage.bottomAnchor),
            comment.leadingAnchor.constraint(equalTo: townImage.trailingAnchor, constant: 8),

        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
