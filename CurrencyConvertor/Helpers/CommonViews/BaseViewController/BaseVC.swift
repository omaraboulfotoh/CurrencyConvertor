//
//  BaseVC.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 24/02/2023.
//
import Foundation
protocol BaseVC: AnyObject {
   associatedtype V
   init(viewModel: V?, nibName: String?)
}
