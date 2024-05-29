//
//  CurrencySymbolsEntity.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 24/02/2023.
//
/// - Description: Currency Symbols Entity Stores The Remote Service Response
struct CurrencySymbolsEntity: Codable {
    let symbols: [String: String]
}
