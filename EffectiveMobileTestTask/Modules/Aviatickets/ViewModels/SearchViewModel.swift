//
//
// SearchViewModel.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 05.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

class SearchViewModel {
    
    var recommendedTowns: [RecommendedTown] = []
    var recommendedTownImages: [String] = ["IstanbulPhoto", "SochiPhoto", "PhuketPhoto"]
    var error: Error? = nil
    
    private let service: AviaticketsServicing
    
    init(service: AviaticketsServicing) {
        self.service = service
    }
    
    func fetchData() {
        service.getRecommendedTowns { [weak self] result in
            switch result {
            case .success(let recommendedTownResponse):
                self?.recommendedTowns = recommendedTownResponse.towns
            case .failure(let error):
                self?.error = error
            }
        }
    }
}
