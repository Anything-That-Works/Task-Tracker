//
//  HomeView.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        Text("Today is")
                            .font(.system(size: 46))
                            .foregroundStyle(Constants.primaryColor(for: colorScheme))
                        Text("the best")
                            .modifier(HighlightedTextModifier())
                        Text("day to win")
                            .modifier(HighlightedTextModifier())
                            .padding(.leading, 40)
                    }.padding(.leading,20)
                    ZStack {
                        Image("sample")
                            .fullSize()
                            .padding(.horizontal, 40)
                        GeometryReader { proxy in
                            VStack(spacing: 0) {
                                Spacer()
                                HStack(alignment: .center, spacing: 0) {
                                    Dashboard(
                                        title: "To do",
                                        count: 158,
                                        width: proxy.size.width/2 - 20,
                                        titleColor: Constants.primaryColor(for: colorScheme),
                                        circleColor: Constants.todoCircleColor,
                                        arrowColor: Constants.todoArrowColor
                                    )
                                    
                                    Spacer()
                                    
                                    Dashboard(
                                        title: "On going",
                                        count: 28,
                                        width: proxy.size.width/2 - 20,
                                        titleColor: Constants.primaryColor(for: colorScheme),
                                        circleColor: Constants.completeDashboardCircleColor(for: colorScheme),
                                        arrowColor: Constants.arrowColor(for: colorScheme)
                                    )
                                }
                                .padding(.bottom, 15)
                                
                                CompleteDashboard(width: proxy.size.width - 30, count: 13, amount: 2459.06)
                            }
                            .padding(.horizontal, 15)
                        }
                    }
                }
            }
            .background(Constants.background(for: colorScheme))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Circle()
                        .fill(Constants.completeDashboardColor(for: colorScheme))
                        .frame(width: 40)
                        .overlay {
                            Image(systemName: "bell")
                                .foregroundStyle(Constants.primaryColor(for: colorScheme))
                        }
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}


fileprivate struct HighlightedTextModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .font(.system(size: 46))
            .foregroundStyle(Constants.primaryColor(for: colorScheme))
            .padding(.horizontal, 32)
            .padding(.bottom, 5)
            .clipShape(
                RoundedRectangle(cornerRadius: 100)
            )
            .background(
                RoundedRectangle(cornerRadius: 100)
                    .stroke(Constants.primaryColor(for: colorScheme), lineWidth: 1)
            )
    }
}
