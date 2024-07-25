//
//  CurvedRectShape.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct CurvedRectShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.42291*height))
        path.addCurve(to: CGPoint(x: 0.06509*width, y: 0.06193*height), control1: CGPoint(x: 0, y: 0.22355*height), control2: CGPoint(x: 0, y: 0.12387*height))
        path.addCurve(to: CGPoint(x: 0.44444*width, y: 0), control1: CGPoint(x: 0.13017*width, y: 0), control2: CGPoint(x: 0.23493*width, y: 0))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0))
        path.addLine(to: CGPoint(x: 0.51505*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.66898*width, y: 0.14648*height), control1: CGPoint(x: 0.60006*width, y: 0), control2: CGPoint(x: 0.66898*width, y: 0.06558*height))
        path.addCurve(to: CGPoint(x: 0.82292*width, y: 0.29295*height), control1: CGPoint(x: 0.66898*width, y: 0.22737*height), control2: CGPoint(x: 0.7379*width, y: 0.29295*height))
        path.addLine(to: CGPoint(x: 0.83449*width, y: 0.29295*height))
        path.addCurve(to: CGPoint(x: width, y: 0.45044*height), control1: CGPoint(x: 0.9259*width, y: 0.29295*height), control2: CGPoint(x: width, y: 0.36346*height))
        path.addLine(to: CGPoint(x: width, y: 0.5*height))
        path.addLine(to: CGPoint(x: width, y: 0.57709*height))
        path.addCurve(to: CGPoint(x: 0.93491*width, y: 0.93807*height), control1: CGPoint(x: width, y: 0.77645*height), control2: CGPoint(x: width, y: 0.87613*height))
        path.addCurve(to: CGPoint(x: 0.55556*width, y: height), control1: CGPoint(x: 0.86982*width, y: height), control2: CGPoint(x: 0.76507*width, y: height))
        path.addLine(to: CGPoint(x: 0.44444*width, y: height))
        path.addCurve(to: CGPoint(x: 0.06509*width, y: 0.93807*height), control1: CGPoint(x: 0.23493*width, y: height), control2: CGPoint(x: 0.13017*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.57709*height), control1: CGPoint(x: 0, y: 0.87613*height), control2: CGPoint(x: 0, y: 0.77645*height))
        path.addLine(to: CGPoint(x: 0, y: 0.42291*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.00231*width, y: 0.42291*height))
        path.addCurve(to: CGPoint(x: 0.01043*width, y: 0.19118*height), control1: CGPoint(x: 0.00231*width, y: 0.32316*height), control2: CGPoint(x: 0.00232*width, y: 0.24858*height))
        path.addCurve(to: CGPoint(x: 0.06672*width, y: 0.06349*height), control1: CGPoint(x: 0.01853*width, y: 0.13384*height), control2: CGPoint(x: 0.03468*width, y: 0.09398*height))
        path.addCurve(to: CGPoint(x: 0.20091*width, y: 0.00992*height), control1: CGPoint(x: 0.09877*width, y: 0.033*height), control2: CGPoint(x: 0.14066*width, y: 0.01763*height))
        path.addCurve(to: CGPoint(x: 0.44444*width, y: 0.0022*height), control1: CGPoint(x: 0.26124*width, y: 0.00221*height), control2: CGPoint(x: 0.33962*width, y: 0.0022*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.0022*height))
        path.addLine(to: CGPoint(x: 0.51505*width, y: 0.0022*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.14648*height), control1: CGPoint(x: 0.59878*width, y: 0.0022*height), control2: CGPoint(x: 0.66667*width, y: 0.0668*height))
        path.addCurve(to: CGPoint(x: 0.82292*width, y: 0.29515*height), control1: CGPoint(x: 0.66667*width, y: 0.22859*height), control2: CGPoint(x: 0.73662*width, y: 0.29515*height))
        path.addLine(to: CGPoint(x: 0.83449*width, y: 0.29515*height))
        path.addCurve(to: CGPoint(x: 0.99769*width, y: 0.45044*height), control1: CGPoint(x: 0.92462*width, y: 0.29515*height), control2: CGPoint(x: 0.99769*width, y: 0.36468*height))
        path.addLine(to: CGPoint(x: 0.99769*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.99769*width, y: 0.57709*height))
        path.addCurve(to: CGPoint(x: 0.98957*width, y: 0.80882*height), control1: CGPoint(x: 0.99769*width, y: 0.67684*height), control2: CGPoint(x: 0.99768*width, y: 0.75142*height))
        path.addCurve(to: CGPoint(x: 0.93328*width, y: 0.93651*height), control1: CGPoint(x: 0.98147*width, y: 0.86616*height), control2: CGPoint(x: 0.96532*width, y: 0.90602*height))
        path.addCurve(to: CGPoint(x: 0.79908*width, y: 0.99007*height), control1: CGPoint(x: 0.90124*width, y: 0.967*height), control2: CGPoint(x: 0.85934*width, y: 0.98237*height))
        path.addCurve(to: CGPoint(x: 0.55556*width, y: 0.9978*height), control1: CGPoint(x: 0.73876*width, y: 0.99779*height), control2: CGPoint(x: 0.66038*width, y: 0.9978*height))
        path.addLine(to: CGPoint(x: 0.44444*width, y: 0.9978*height))
        path.addCurve(to: CGPoint(x: 0.20091*width, y: 0.99007*height), control1: CGPoint(x: 0.33962*width, y: 0.9978*height), control2: CGPoint(x: 0.26124*width, y: 0.99779*height))
        path.addCurve(to: CGPoint(x: 0.06672*width, y: 0.93651*height), control1: CGPoint(x: 0.14066*width, y: 0.98237*height), control2: CGPoint(x: 0.09877*width, y: 0.967*height))
        path.addCurve(to: CGPoint(x: 0.01043*width, y: 0.80882*height), control1: CGPoint(x: 0.03468*width, y: 0.90602*height), control2: CGPoint(x: 0.01853*width, y: 0.86616*height))
        path.addCurve(to: CGPoint(x: 0.00231*width, y: 0.57709*height), control1: CGPoint(x: 0.00232*width, y: 0.75142*height), control2: CGPoint(x: 0.00231*width, y: 0.67684*height))
        path.addLine(to: CGPoint(x: 0.00231*width, y: 0.42291*height))
        path.closeSubpath()
        return path
    }
}

#Preview("CurvedRectShape",traits: .sizeThatFitsLayout) {
    CurvedRectShape()
        .frame(width: 216, height: 227)
        .padding()
}

