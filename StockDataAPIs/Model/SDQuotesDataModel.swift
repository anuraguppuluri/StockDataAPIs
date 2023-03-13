//
//  SDQuotesDataModel.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation

// MARK: - Quotes
struct Quotes: Codable {
    let meta: QuotesMeta
    let data: [QuotesDatum]
}

// MARK: - Datum
struct QuotesDatum: Codable {
    let ticker, name, exchangeShort, exchangeLong: String
    let micCode, currency: String
    let price, dayHigh, dayLow, dayOpen: Double
    let the52_WeekHigh, the52_WeekLow: Double
    let marketCap: Int
    let previousClosePrice: Double
    let previousClosePriceTime: String
    let dayChange: Double
    let volume: Int
    let isExtendedHoursPrice: Bool
    let lastTradeTime: String

    enum CodingKeys: String, CodingKey {
        case ticker, name
        case exchangeShort = "exchange_short"
        case exchangeLong = "exchange_long"
        case micCode = "mic_code"
        case currency, price
        case dayHigh = "day_high"
        case dayLow = "day_low"
        case dayOpen = "day_open"
        case the52_WeekHigh = "52_week_high"
        case the52_WeekLow = "52_week_low"
        case marketCap = "market_cap"
        case previousClosePrice = "previous_close_price"
        case previousClosePriceTime = "previous_close_price_time"
        case dayChange = "day_change"
        case volume
        case isExtendedHoursPrice = "is_extended_hours_price"
        case lastTradeTime = "last_trade_time"
    }
}

// MARK: - Meta
struct QuotesMeta: Codable {
    let requested, returned: Int
}
