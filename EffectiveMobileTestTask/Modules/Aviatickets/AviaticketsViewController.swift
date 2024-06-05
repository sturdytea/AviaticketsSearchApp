//
//
// AviaticketsViewController.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 03.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class AviaticketsViewController: UIViewController {

    private lazy var aviaticketsView = AviaticketsView()
    private lazy var viewModel = AviaticketsViewModel(service: AviaticketsMockService())
    
    override func loadView() {
        view = aviaticketsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchData()
        setupCollectionView()
    }
}

extension AviaticketsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    private func setupCollectionView() {
        aviaticketsView.collectionView.delegate = self
        aviaticketsView.collectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.offers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OfferCollectionViewCell().identifier, for: indexPath) as? OfferCollectionViewCell
        else {
            fatalError("Wrong Cell")
        }
        
        let offer = viewModel.offers[indexPath.row]
        cell.configureCell(imageName: viewModel.offerImages[indexPath.row],
                           titleName: offer.title,
                           cityName: offer.town,
                           price: offer.price.value)
        return cell
    }
}
