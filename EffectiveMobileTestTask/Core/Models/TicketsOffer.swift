//
//
// TicketsOffer.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct TicketsOfferResponse {
    let ticketsOffers: [TicketsOffer]
}

struct TicketsOffer {
    let id: Int
    let title: String
    let timeRange: [String]
    let price: Price
}
