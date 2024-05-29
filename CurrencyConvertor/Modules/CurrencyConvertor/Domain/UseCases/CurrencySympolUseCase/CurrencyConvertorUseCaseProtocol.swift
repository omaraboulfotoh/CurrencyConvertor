//
//  FetchCurrencySymbolsUseCaseProtocol.swift
//  CurrencyConvertor
//
//  Created by AliFayed on 24/02/2023.
//
import Foundation
import RxSwift
protocol FetchCurrencySymbolsUseCaseProtocol {
    func fetchCurrencySymbols() -> Observable<SympolsDataModelProtocol>
}
