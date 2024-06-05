//
//
// AviaticketsView.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class AviaticketsView: UIView {
    
    private let titleText = "Поиск дешевых авиабилетов"
    
    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = .customFont(.titleOne)
        label.numberOfLines = 0
        label.text = titleText
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var inputBox = InputBox(BoxType.main)
    
    lazy var collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .clear
        collectionView.bounces = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        addSubview(title)
        addSubview(inputBox)
        addSubview(collectionView)
        collectionView.register(OfferCollectionViewCell.self, forCellWithReuseIdentifier: OfferCollectionViewCell().identifier)
        collectionView.collectionViewLayout = createLayout()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            
            inputBox.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 24),
            inputBox.centerXAnchor.constraint(equalTo: centerXAnchor),
            inputBox.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            
            collectionView.topAnchor.constraint(equalTo: inputBox.bottomAnchor, constant: 24),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Create CollectionViewLayout
private extension AviaticketsView {
    func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ in
            guard let self = self else { return nil }
            return createOfferSection()
        }
    }
    
    // TODO: Make items square
    // TODO: Add section header
    func createOfferSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: .init(widthDimension: .fractionalWidth(0.5),
                              heightDimension: .fractionalHeight(1)))
        item.contentInsets = .init(top: 8, leading: 8, bottom: 8, trailing: 16)
        
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: .init(widthDimension: .fractionalWidth(1.2),
                              heightDimension: .fractionalHeight(1)),
            subitems: [item])
        
        let section = createLayoutSection(group: group,
                                          behavior: .continuous,
                                          supplementaryItems: [])
        section.contentInsets = .init(top: 8, leading: 0, bottom: 8, trailing: 0)
        return section
    }
    
    func createLayoutSection(group: NSCollectionLayoutGroup,
                             behavior: UICollectionLayoutSectionOrthogonalScrollingBehavior,
                             interGroupSpacing: CGFloat = 8,
                             supplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]) -> NSCollectionLayoutSection {
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = behavior
        section.interGroupSpacing = interGroupSpacing
        section.boundarySupplementaryItems = supplementaryItems
        return section
    }
    
    func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        let headerItem = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: .init(widthDimension: .fractionalWidth(1),
                              heightDimension: .estimated(25)),
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        return headerItem
    }
}
