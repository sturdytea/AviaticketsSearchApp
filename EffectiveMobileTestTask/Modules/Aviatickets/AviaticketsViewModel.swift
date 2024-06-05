//
//
// AviaticketsViewModel.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

class AviaticketsViewModel {
    
    var offers: [Offer] = []
    var offerImages: [String] = ["OfferImageOne", "OfferImageTwo", "OfferImageThree"]
    var error: Error? = nil
    
    private let service: AviaticketsServicing
    
    init(service: AviaticketsServicing) {
        self.service = service
    }
    
    func fetchData() {
        service.getOffers { [weak self] result in
            switch result {
            case .success(let offerResponse):
                self?.offers = offerResponse.offers
                print("ViewModel fetchData - success")
            case .failure(let error):
                self?.error = error
                print("ViewModel fetchData - failure")
            }
        }
    }
}
