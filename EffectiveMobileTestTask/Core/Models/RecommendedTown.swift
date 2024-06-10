//
//
// RecommendedTown.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 06.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct RecommendedTownResponse {
    let towns: [RecommendedTown]
}

struct RecommendedTown {
    let id: Int
    let town: String
    let comment: String
}
