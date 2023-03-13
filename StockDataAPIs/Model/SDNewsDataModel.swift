//
//  SDNewsDataModel.swift
//  StockDataAPIs
//
//  Created by Anurag Uppuluri on 3/12/23.
//

import Foundation

// MARK: - News
struct News: Codable {
    let meta: NewsMeta?
    let data: [NewsDatum]?
}

// MARK: - Datum
struct NewsDatum: Codable {
    let uuid, title, description, keywords: String?
    let snippet: String?
    let url: String?
    let imageURL: String?
    let language, publishedAt, source: String?
    let entities: [Entity]?
    let similar: [NewsDatum]?

    enum CodingKeys: String, CodingKey {
        case uuid, title, description, keywords, snippet, url
        case imageURL = "image_url"
        case language
        case publishedAt = "published_at"
        case source
        case entities, similar
    }
}

// MARK: - Entity
struct Entity: Codable {
    let symbol, name, exchange, exchangeLong: String?
    let country: Country?
    let type: TypeEnum?
    let industry: Industry?
    let matchScore, sentimentScore: Double?
    let highlights: [Highlight]?

    enum CodingKeys: String, CodingKey {
        case symbol, name, exchange
        case exchangeLong = "exchange_long"
        case country, type, industry
        case matchScore = "match_score"
        case sentimentScore = "sentiment_score"
        case highlights
    }
}

enum Country: String, Codable {
    case br = "br"
    case gb = "gb"
    case it = "it"
    case mx = "mx"
    case us = "us"
}

// MARK: - Highlight
struct Highlight: Codable {
    let highlight: String?
    let sentiment: Double?
    let highlightedIn: HighlightedIn?

    enum CodingKeys: String, CodingKey {
        case highlight, sentiment
        case highlightedIn = "highlighted_in"
    }
}

enum HighlightedIn: String, Codable {
    case mainText = "main_text"
    case title = "title"
}

enum Industry: String, Codable {
    case communicationServices = "Communication Services"
    case consumerCyclical = "Consumer Cyclical"
    case financialServices = "Financial Services"
    case healthcare = "Healthcare"
    case nA = "N/A"
    case technology = "Technology"
}

enum TypeEnum: String, Codable {
    case equity = "equity"
    case etf = "etf"
    case index = "index"
}

// MARK: - Meta
struct NewsMeta: Codable {
    let found, returned, limit, page: Int?
}
