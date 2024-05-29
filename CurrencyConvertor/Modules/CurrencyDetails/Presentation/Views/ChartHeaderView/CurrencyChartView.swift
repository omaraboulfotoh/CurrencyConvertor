//
//  CurrencyChartView.swift
//  CurrencyConvertor
//
//  Created by OmarAboulfotoh on 25/02/2023.
//
import UIKit
import SwiftUI
struct CurrencyChartView: View {
    var chartMeasurments: [ChartMeasurmentDataModel]
    var body: some View {
        HStack(alignment: .bottom) {
            Spacer()
            ForEach(chartMeasurments, id: \.self) { measurement in
                VStack {
                    Spacer()
                    Text(String(format: Constants.oneNumberDouble, measurement.convertedValue))
                        .font(.system(size: min(12, CGFloat(measurement.convertedValue) * 4.0 / 3)))
                        .rotationEffect(.degrees(-90))
                        .offset(y: measurement.convertedValue < 2.4 ? 0 : 35)
                        .zIndex(1)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 20, height: min(CGFloat(measurement.convertedValue) * 4.0, 90))
                    Text(measurement.date)
                        .font(.footnote)
                        .frame(height: 20)
                }.padding(.leading, 10)
            }
            Spacer()
        }.frame(height: 150).clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 0, y: 0)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
    }
}
