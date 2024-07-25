//
//  CompleteDashboardLeftShape.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

//201x111
struct CompleteDashboardLeftShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.199*width, y: 0.00446*height))
        path.addLine(to: CGPoint(x: 0.80777*width, y: 0.00446*height))
        path.addCurve(to: CGPoint(x: width, y: 0.34944*height), control1: CGPoint(x: 0.91394*width, y: 0.00446*height), control2: CGPoint(x: width, y: 0.15892*height))
        path.addCurve(to: CGPoint(x: 0.93541*width, y: 0.6074*height), control1: CGPoint(x: width, y: 0.44804*height), control2: CGPoint(x: 0.97649*width, y: 0.54193*height))
        path.addLine(to: CGPoint(x: 0.74559*width, y: 0.90991*height))
        path.addCurve(to: CGPoint(x: 0.61345*width, y: height), control1: CGPoint(x: 0.70917*width, y: 0.96795*height), control2: CGPoint(x: 0.66215*width, y: height))
        path.addLine(to: CGPoint(x: 0.199*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.64286*height), control1: CGPoint(x: 0.0891*width, y: height), control2: CGPoint(x: 0, y: 0.8401*height))
        path.addLine(to: CGPoint(x: 0, y: 0.36161*height))
        path.addCurve(to: CGPoint(x: 0.199*width, y: 0.00446*height), control1: CGPoint(x: 0, y: 0.16436*height), control2: CGPoint(x: 0.0891*width, y: 0.00446*height))
        path.closeSubpath()
        return path
    }
}



#Preview("CompleteDashboardLeftShape", traits: .sizeThatFitsLayout) {
    CompleteDashboardLeftShape()
        .frame(width: 200, height: 111)
        .padding()
}
