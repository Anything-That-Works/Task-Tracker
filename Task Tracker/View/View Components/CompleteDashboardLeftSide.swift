//
//  CompleteDashboardLeftSide.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct CompleteDashboardLeftSide: View {
    @Environment(\.colorScheme) var colorScheme
    
    var width: CGFloat
    var count: Int
    
    init(_ width: CGFloat,_ count: Int) {
        self.width = width
        self.count = count
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Completed")
                .font(.system(size: width * 0.052).bold())
                .foregroundColor(Constants.primaryColor(for: colorScheme))
                .padding(.top, width * 0.09)
            Spacer(minLength: 0)
            ZStack(alignment: .topLeading) {
                CompleteDashboardLeftShape()
                    .fill(Constants.completeDashboardColor(for: colorScheme))
                    .frame(maxHeight: width * 0.2434)
                    .frame(maxWidth: width * 0.44)
                    .overlay(alignment: .topTrailing) {
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
                HStack(alignment: .top, spacing: 0) {
                    Text("\(count)")
                        .font(.system(size: width * 0.105).bold())
                    Text(count < 1 ? "task" : "tasks")
                        .font(.system(size: width * 0.035))
                }
                .foregroundColor(Constants.primaryColor(for: colorScheme))
                .padding(width * 0.061)
            }
            
        }
    }
}

#Preview("CompleteDashboardLeftSide", traits: .sizeThatFitsLayout) {
    CompleteDashboardLeftSide(350, 10)
        .frame(maxHeight: 170)
        .padding()
}
