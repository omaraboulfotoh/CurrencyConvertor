//
//  CustomError.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 24/02/2023.
//
import Foundation
enum CustomError: String, Codable {
    case noConnetion
    case general
    case serverError
    case decodingError
    case emptyResponse
    case tooManyRequests
}
extension CustomError {
    var errorDescription: String? {
        switch self {
        case .noConnetion:
            return "Check your internet connection."
        case .serverError:
            return "Server is unavailable."
        case .emptyResponse:
            return "Response is empty."
        case .decodingError:
            return "Decoding error."
        case .tooManyRequests:
            return "Too many requests please change your API key."
        default:
            return "Error occured please try again later."
        }
    }
}

