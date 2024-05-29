//
//  FamousCurrenciesEntity.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 24/02/2023.
//
/// - Description:Famous Currencies Entity Stores The Remote Service Response
struct FamousCurrenciesEntity: Codable {
    let success: Bool?
    let timestamp: Int?
    let historical: Bool?
    let base, date: String?
    let rates: [String: Double]?
}
