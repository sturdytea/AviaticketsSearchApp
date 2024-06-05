//
//
// Luggage.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct Luggage {
    let hasLuggage: Bool
    let price: Price?
    
    init(hasLuggage: Bool) {
        self.hasLuggage = hasLuggage
        self.price = nil
    }
    
    init(hasLuggage: Bool, price: Price?) {
        self.hasLuggage = hasLuggage
        self.price = price
    }
}
