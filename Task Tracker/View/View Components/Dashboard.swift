//
//  Dashboard.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

/// A common view for "To do" and "On going" element in HomeView
struct Dashboard: View {
    var title: String
    var count: Int
    var width: CGFloat
    var titleColor: Color
    var circleColor: Color
    var arrowColor: Color
    
    var onRectTap: () -> Void = { print("Rect shape tapped")}
    var onCircleTap: () -> Void = { print("Circle shape tapped")}
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: onRectTap) {
                CurvedRectShape()                                    .stroke(Constants.strokeColor, lineWidth: 1)
                    .background {
                        BlurredBackgroundView(radius: Constants.radius)
                    }
                    .clipShape(CurvedRectShape())
                    .overlay {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(title)
                                .font(.system(size: width * 0.1))
                                .foregroundColor(Constants.primaryColor(for: colorScheme))
                                .padding(.bottom, width * 0.26)
                            HStack(alignment: .top, spacing: 0) {
                                Text("\(count)")
                                    .font(.system(size: width * 0.2).bold())
                                Text(count < 1 ? "task" : "tasks")
                                    .font(.system(size: width * 0.07))
                            }
                            .foregroundColor(Constants.primaryColor(for: colorScheme))
                        }
                        .padding(.leading, width * 0.14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
            }
            
            Button(action: onCircleTap) {
                Circle()
                    .fill(circleColor)
                    .frame(width: width * 0.29295)
                    .overlay {
                        Image(systemName: "arrow.up.right")
                            .foregroundStyle(arrowColor)
                            .font(.system(size: width * 0.1))
                    }
            }
        }
        .frame(width: width,height: width * 1.051)
    }
}

#Preview("Dashboard Items", traits: .sizeThatFitsLayout) {
    Image("sample")
        .resizable()
        .scaledToFit()
        .overlay {
            VStack {
                Dashboard(title: "To do", count: 158, width: 100, titleColor: Constants.primaryColor(for: ColorScheme.dark), circleColor: Constants.todoCircleColor, arrowColor: Constants.todoArrowColor)
                Dashboard(
                    title: "On going",
                    count: 28,
                    width: 200,
                    titleColor: Constants.primaryColor(for: ColorScheme.dark),
                    circleColor: Constants.onGoingCircleColor,
                    arrowColor: Constants.onGoingArrowColor
                )
            }
        }
    
}
