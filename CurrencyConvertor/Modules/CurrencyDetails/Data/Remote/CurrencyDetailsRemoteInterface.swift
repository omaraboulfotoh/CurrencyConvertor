//
//  CurrencyDetailsRemoteInterface.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 25/02/2023.
//
import RxSwift
/// - Description: Interface For Remote Layer Contains The Must Implement Methods
protocol CurrencyDetailsRemoteInterface {
    /// Return Type ->  Store The Return Value in a Well Written Convention
    typealias hisotricalRetunType = Observable<HistoricalConvertsEntity>
    typealias famousReturnType = Observable<FamousCurrenciesEntity>
    /// Excute -> Excute The Remote Responsibilties
    func fetchHistoricalConverts(startDate: String, endDate: String, base: String, symbols: String) -> hisotricalRetunType
    func fetchFamousConvertes(symbols: String, base: String) -> famousReturnType
}
