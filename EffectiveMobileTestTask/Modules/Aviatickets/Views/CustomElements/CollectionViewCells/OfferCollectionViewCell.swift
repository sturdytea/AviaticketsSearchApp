//
//
// OfferCollectionViewCell.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class OfferCollectionViewCell: UICollectionViewCell {
    
    public let identifier = "OfferCollectionViewCell"
    
    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.heightAnchor.constraint(equalToConstant: 133).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = .customFont(.titleThree)
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var city: UILabel = {
        let label = UILabel()
        label.font = .customFont(.textTwo)
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var icon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "AviaticketsIcon")
        imageView.tintColor = .greySix
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var priceTag: UILabel = {
        let label = UILabel()
        label.font = .customFont(.textTwo)
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public func configureCell(imageName: String, titleName: String, cityName: String, price: Int) {
        image.image = UIImage(named: imageName)
        title.text = titleName
        city.text = cityName
        priceTag.text = "от \(price) ₽"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        contentView.clipsToBounds = false
        addSubview(image)
        addSubview(title)
        addSubview(city)
        addSubview(icon)
        addSubview(priceTag)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: topAnchor),
            image.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            title.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            
            city.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            city.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            
            icon.topAnchor.constraint(equalTo: city.bottomAnchor, constant: 8),
            icon.leadingAnchor.constraint(equalTo: city.leadingAnchor),
            
            priceTag.topAnchor.constraint(equalTo: icon.topAnchor),
            priceTag.leadingAnchor.constraint(equalTo: icon.trailingAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
