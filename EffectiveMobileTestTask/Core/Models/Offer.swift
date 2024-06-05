//
//
// Offer.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct OfferResponse {
    let offers: [Offer]
}

struct Offer {
    let id: Int
    let title: String
    let town: String
    let price: Price
}
