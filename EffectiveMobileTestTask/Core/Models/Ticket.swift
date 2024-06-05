//
//
// Ticket.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

struct TicketResponse {
    let tickets: [Ticket]
}

struct Ticket {
    let id: Int
    let badge: String?
    let price: Price
    let providerName: String
    let company: String
    let departure: Departure
    let arrival: Arrival
    let hasTransfer: Bool
    let hasVisaTransfer: Bool
    let luggage: Luggage
    let handLuggage: HandLuggage
    let isReturnable: Bool
    let isExchangable: Bool 
    
    init(id: Int, badge: String?, price: Price, providerName: String, company: String, departure: Departure, arrival: Arrival, hasTransfer: Bool, hasVisaTransfer: Bool, luggage: Luggage, handLuggage: HandLuggage, isReturnable: Bool, isExchangable: Bool) {
        self.id = id
        self.badge = badge
        self.price = price
        self.providerName = providerName
        self.company = company
        self.departure = departure
        self.arrival = arrival
        self.hasTransfer = hasTransfer
        self.hasVisaTransfer = hasVisaTransfer
        self.luggage = luggage
        self.handLuggage = handLuggage
        self.isReturnable = isReturnable
        self.isExchangable = isExchangable
    }
    
    init(id: Int, price: Price, providerName: String, company: String, departure: Departure, arrival: Arrival, hasTransfer: Bool, hasVisaTransfer: Bool, luggage: Luggage, handLuggage: HandLuggage, isReturnable: Bool, isExchangable: Bool) {
        self.id = id
        self.price = price
        self.providerName = providerName
        self.company = company
        self.departure = departure
        self.arrival = arrival
        self.hasTransfer = hasTransfer
        self.hasVisaTransfer = hasVisaTransfer
        self.luggage = luggage
        self.handLuggage = handLuggage
        self.isReturnable = isReturnable
        self.isExchangable = isExchangable
        self.badge = nil
    }
}
