//
//  CompleteDashboard.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct CompleteDashboard: View {
    var width: CGFloat
    var count: Int
    var amount: Double
    var body: some View {
        ZStack {
            RoundedShieldShape()
                .stroke(Constants.strokeColor, lineWidth: 1)
                .background {
                    BlurredBackgroundView(radius: Constants.radius)
                }
                .clipShape(RoundedShieldShape())
                .overlay {
                    HStack(spacing: 0) {
                        CompleteDashboardLeftSide(width, count)
                        Spacer(minLength: width * 0.052)
                        CompleteDashboardRightSide(width, amount, count)
                    }
                    .padding(width * 0.033)
                }
        }
        .frame(width: width, height: width * 0.5)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Image("sample")
        .resizable()
        .scaledToFit()
        .overlay {
            VStack {
                Spacer()
                CompleteDashboard(width: 350, count: 13, amount: 2475.07)
                    .padding(.bottom, 20)
            }
        }
}


