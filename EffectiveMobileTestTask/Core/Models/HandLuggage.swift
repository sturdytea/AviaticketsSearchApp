//
//
// HandLuggage.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct HandLuggage {
    let hasHandLuggage: Bool
    let size: String?
    
    init(hasHandLuggage: Bool, size: String?) {
        self.hasHandLuggage = hasHandLuggage
        self.size = size
    }
    
    init(hasHandLuggage: Bool) {
        self.hasHandLuggage = hasHandLuggage
        self.size = nil
    }
}
