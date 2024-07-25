//
//  CompleteDashboardRightShape.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct CompleteDashboardRightShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.80198*width, y: 0))
        path.addLine(to: CGPoint(x: 0.19802*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.20305*height), control1: CGPoint(x: 0.08866*width, y: 0), control2: CGPoint(x: 0, y: 0.09091*height))
        path.addLine(to: CGPoint(x: 0, y: 0.62607*height))
        path.addCurve(to: CGPoint(x: 0.06771*width, y: 0.77895*height), control1: CGPoint(x: 0, y: 0.68466*height), control2: CGPoint(x: 0.02468*width, y: 0.7404*height))
        path.addLine(to: CGPoint(x: 0.25838*width, y: 0.94984*height))
        path.addCurve(to: CGPoint(x: 0.3887*width, y: height), control1: CGPoint(x: 0.29447*width, y: 0.98218*height), control2: CGPoint(x: 0.34077*width, y: height))
        path.addLine(to: CGPoint(x: 0.80198*width, y: height))
        path.addCurve(to: CGPoint(x: width, y: 0.79695*height), control1: CGPoint(x: 0.91134*width, y: height), control2: CGPoint(x: width, y: 0.90909*height))
        path.addLine(to: CGPoint(x: width, y: 0.20305*height))
        path.addCurve(to: CGPoint(x: 0.80198*width, y: 0), control1: CGPoint(x: width, y: 0.09091*height), control2: CGPoint(x: 0.91134*width, y: 0))
        path.closeSubpath()
        return path
    }
}

#Preview("CompleteDashboardRightShape", traits: .sizeThatFitsLayout) {
    CompleteDashboardRightShape()
        .frame(width: 200, height: 200)
        .padding()
}
