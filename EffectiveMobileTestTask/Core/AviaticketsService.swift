//
//
// AviaticketsService.swift
// EffectiveMobileTestTask
//
// Created by sturdytea on 04.06.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

protocol AviaticketsServicing {
    func getOffers(_ completion: @escaping (Result<OfferResponse, Error>) -> Void)
    func getTicketsOffers(_ completion: @escaping (Result<TicketsOfferResponse, Error>) -> Void)
    func getTickets(_ completion: @escaping (Result<TicketResponse, Error>) -> Void)
    func getRecommendedTowns( completion: @escaping (Result<RecommendedTownResponse, Error>) -> Void)
}

class AviaticketsMockService: AviaticketsServicing {
    func getOffers(_ completion: @escaping (Result<OfferResponse, Error>) -> Void) {
        let response = OfferResponse(offers: [
            Offer(id: 1, 
                  title: "Die Antwoord", 
                  town: "Будапешт",
                  price: Price(value: 5000)),
            Offer(id: 2,
                  title: "Socrat&Lera", 
                  town: "Санкт-Петербург", 
                  price: Price(value: 1999)),
            Offer(id: 3,
                  title: "Лампабикт", 
                  town: "Москва", 
                  price: Price(value: 2390))
        ])
        completion(.success(response))
    }
    
    func getTicketsOffers(_ completion: @escaping (Result<TicketsOfferResponse, Error>) -> Void) {
        let response = TicketsOfferResponse(ticketsOffers: [
            TicketsOffer(id: 1,
                         title: "Уральские авиалинии",
                         timeRange: ["07:00", "09:10", "10:00", "11:30", "14:15", "19:10", "21:00", "23:30"],
                         price: Price(value: 3999)),
            TicketsOffer(id: 10,
                         title: "Победа",
                         timeRange: ["09:10", "21:00"],
                         price: Price(value: 4999)),
            TicketsOffer(id: 30,
                         title: "NordStar",
                         timeRange: ["07:00"],
                         price: Price(value: 2390))
        ])
        completion(.success(response))
    }
    
    func getTickets(_ completion: @escaping (Result<TicketResponse, Error>) -> Void) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        
        let response = TicketResponse(tickets: [
            Ticket(id: 100,
                   badge: "Самый удобный",
                   price: Price(value: 1999),
                   providerName: "На сайте Купибилет",
                   company: "Якутия",
                   departure: Departure(town: "Москва", 
                                        date: dateFormatter.date(from: "2024-02-23T03:15:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-23T07:10:00")!,
                                    airport: "AER"),
                   hasTransfer: false,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 1082)),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "55x20x40"),
                   isReturnable: false,
                   isExchangable: true),
            Ticket(id: 101,
                   price: Price(value: 9999),
                   providerName: "На сайте Победа",
                   company: "Победа",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T04:00:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи", 
                                    date: dateFormatter.date(from: "2024-02-23T04:00:00")!,
                                    airport: "AER"),
                   hasTransfer: false,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 1602)),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "36x30x27"),
                   isReturnable: false,
                   isExchangable: true),
            Ticket(id: 102,
                   price: Price(value: 8500),
                   providerName: "На сайте Turkish Airlines",
                   company: "Турецкие авиалинии",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T15:00:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-23T18:40:00")!,
                                    airport: "AER"),
                   hasTransfer: false,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: true),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "55x20x40"),
                   isReturnable: false,
                   isExchangable: false),
            Ticket(id: 103,
                   badge: "Рекомендуемый",
                   price: Price(value: 8086),
                   providerName: "На сайте Уральские авиалинии",
                   company: "Уральские авиалинии",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T11:30:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-23T15:00:00")!,
                                    airport: "AER"),
                   hasTransfer: false,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 1570)),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "55x20x40"),
                   isReturnable: true,
                   isExchangable: true),
            Ticket(id: 104,
                   price: Price(value: 11560),
                   providerName: "На сайте Aeroflot",
                   company: "Аэрофлот",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T11:50:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-23T15:20:00")!,
                                    airport: "AER"),
                   hasTransfer: true,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 999)),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "55x20x40"),
                   isReturnable: false,
                   isExchangable: true),
            Ticket(id: 105,
                   price: Price(value: 15600),
                   providerName: "На сайте Aeroflot",
                   company: "Аэрофлот",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T13:50:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-23T17:20:00")!,
                                    airport: "AER"),
                   hasTransfer: true,
                   hasVisaTransfer: true,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 1999)),
                   handLuggage: HandLuggage(hasHandLuggage: true,
                                            size: "55x20x40"),
                   isReturnable: true,
                   isExchangable: true),
            Ticket(id: 106,
                   price: Price(value: 9500),
                   providerName: "На сайте Aeroflot",
                   company: "Аэрофлот",
                   departure: Departure(town: "Москва",
                                        date: dateFormatter.date(from: "2024-02-23T21:00:00")!,
                                        airport: "VKO"),
                   arrival: Arrival(town: "Сочи",
                                    date: dateFormatter.date(from: "2024-02-24T00:20:00")!,
                                    airport: "AER"),
                   hasTransfer: false,
                   hasVisaTransfer: false,
                   luggage: Luggage(hasLuggage: false,
                                    price: Price(value: 5999)),
                   handLuggage: HandLuggage(hasHandLuggage: false),
                   isReturnable: false,
                   isExchangable: false),
        ])
        completion(.success(response))
    }
    
    func getRecommendedTowns(completion: @escaping (Result<RecommendedTownResponse, Error>) -> Void) {
        let response = RecommendedTownResponse(towns: [
            RecommendedTown(id: 1, 
                            town: "Стамбул",
                            comment: "Популярное направление"),
            RecommendedTown(id: 2, 
                            town: "Сочи",
                            comment: "Популярное направление"),
            RecommendedTown(id: 3, 
                            town: "Пхукет",
                            comment: "Популярное направление"),
        ])
        completion(.success(response))
    }
}
