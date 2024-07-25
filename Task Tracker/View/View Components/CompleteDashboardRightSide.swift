//
//  CompleteDashboardRightSide.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct CompleteDashboardRightSide: View {
    @Environment(\.colorScheme) var colorScheme
    
    var width: CGFloat
    var amount: Double
    var count: Int
    
    init(_ width: CGFloat,_ amount: Double,_ count: Int) {
        self.width = width
        self.amount = amount
        self.count = count
    }
    
    var body: some View {
        ZStack {
            CompleteDashboardRightShape()
                .fill(Constants.completeDashboardColor(for: colorScheme))
                .frame(maxWidth: width * 0.44)
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .fill(Constants.completeDashboardCircleColor(for: colorScheme))
                        .frame(maxWidth: width * 0.09)
                        .padding(width * 0.03)
                        .shadow(color: Color.white,radius: 2)
                        .overlay {
                            Image(systemName: "arrow.up.right")
                                .foregroundStyle(Constants.arrowColor(for: colorScheme))
                                .font(.system(size: width * 0.04).bold())
                        }
                }
            VStack(alignment: .leading, spacing: 5) {
                Text(formatCurrency(amount))
                    .font(.system(size: width * 0.05).bold())
                    .foregroundStyle(Constants.primaryColor(for: colorScheme))
                Text("\(count) " + ((count < 1) ? "task" : "tasks"))
                    .font(.system(size: width * 0.03))
                    .foregroundStyle(Constants.secondaryColor(for: colorScheme))
                
            }
        }
    }
    private func formatCurrency(_ amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        formatter.currencyCode = "USD"
        formatter.locale = Locale(identifier: "en_US")
        return formatter.string(from: NSNumber(value: amount)) ?? "$0.00"
    }
}

#Preview("CompleteDashboardRightSide", traits: .sizeThatFitsLayout) {
    CompleteDashboardRightSide(350, 2340, 10)
        .frame(maxHeight: 170)
        .padding()
        .background(Color.black)
}
