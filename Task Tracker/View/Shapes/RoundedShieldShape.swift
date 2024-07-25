//
//  RoundedShieldShape.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

struct RoundedShieldShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.57709*height))
        path.addCurve(to: CGPoint(x: 0.03083*width, y: 0.93807*height), control1: CGPoint(x: 0, y: 0.77645*height), control2: CGPoint(x: 0, y: 0.87613*height))
        path.addCurve(to: CGPoint(x: 0.21053*width, y: height), control1: CGPoint(x: 0.06166*width, y: height), control2: CGPoint(x: 0.11128*width, y: height))
        path.addLine(to: CGPoint(x: 0.2737*width, y: height))
        path.addCurve(to: CGPoint(x: 0.32127*width, y: 0.99481*height), control1: CGPoint(x: 0.29778*width, y: height), control2: CGPoint(x: 0.30982*width, y: height))
        path.addCurve(to: CGPoint(x: 0.34668*width, y: 0.97612*height), control1: CGPoint(x: 0.3301*width, y: 0.9908*height), control2: CGPoint(x: 0.33864*width, y: 0.98452*height))
        path.addCurve(to: CGPoint(x: 0.38467*width, y: 0.91837*height), control1: CGPoint(x: 0.35709*width, y: 0.96523*height), control2: CGPoint(x: 0.36629*width, y: 0.94961*height))
        path.addLine(to: CGPoint(x: 0.39145*width, y: 0.90686*height))
        path.addCurve(to: CGPoint(x: 0.46473*width, y: 0.80286*height), control1: CGPoint(x: 0.42723*width, y: 0.84609*height), control2: CGPoint(x: 0.44512*width, y: 0.8157*height))
        path.addCurve(to: CGPoint(x: 0.53372*width, y: 0.8055*height), control1: CGPoint(x: 0.48722*width, y: 0.78814*height), control2: CGPoint(x: 0.51153*width, y: 0.78907*height))
        path.addCurve(to: CGPoint(x: 0.60498*width, y: 0.91502*height), control1: CGPoint(x: 0.55308*width, y: 0.81982*height), control2: CGPoint(x: 0.57038*width, y: 0.85156*height))
        path.addLine(to: CGPoint(x: 0.60498*width, y: 0.91502*height))
        path.addCurve(to: CGPoint(x: 0.6379*width, y: 0.96976*height), control1: CGPoint(x: 0.62093*width, y: 0.94428*height), control2: CGPoint(x: 0.62891*width, y: 0.95891*height))
        path.addCurve(to: CGPoint(x: 0.67137*width, y: 0.99584*height), control1: CGPoint(x: 0.64823*width, y: 0.98224*height), control2: CGPoint(x: 0.65955*width, y: 0.99107*height))
        path.addCurve(to: CGPoint(x: 0.71406*width, y: height), control1: CGPoint(x: 0.68165*width, y: height), control2: CGPoint(x: 0.69246*width, y: height))
        path.addLine(to: CGPoint(x: 0.78947*width, y: height))
        path.addCurve(to: CGPoint(x: 0.96917*width, y: 0.93807*height), control1: CGPoint(x: 0.88872*width, y: height), control2: CGPoint(x: 0.93834*width, y: height))
        path.addCurve(to: CGPoint(x: width, y: 0.57709*height), control1: CGPoint(x: width, y: 0.87613*height), control2: CGPoint(x: width, y: 0.77645*height))
        path.addLine(to: CGPoint(x: width, y: 0.42291*height))
        path.addCurve(to: CGPoint(x: 0.96917*width, y: 0.06193*height), control1: CGPoint(x: width, y: 0.22355*height), control2: CGPoint(x: width, y: 0.12387*height))
        path.addCurve(to: CGPoint(x: 0.78947*width, y: 0), control1: CGPoint(x: 0.93834*width, y: 0), control2: CGPoint(x: 0.88872*width, y: 0))
        path.addLine(to: CGPoint(x: 0.21053*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.03083*width, y: 0.06193*height), control1: CGPoint(x: 0.11128*width, y: 0), control2: CGPoint(x: 0.06166*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.42291*height), control1: CGPoint(x: 0, y: 0.12387*height), control2: CGPoint(x: 0, y: 0.22355*height))
        path.addLine(to: CGPoint(x: 0, y: 0.57709*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.9989*width, y: 0.57709*height))
        path.addLine(to: CGPoint(x: 0.9989*width, y: 0.42291*height))
        path.addCurve(to: CGPoint(x: 0.99506*width, y: 0.19118*height), control1: CGPoint(x: 0.9989*width, y: 0.32316*height), control2: CGPoint(x: 0.9989*width, y: 0.24858*height))
        path.addCurve(to: CGPoint(x: 0.96839*width, y: 0.06349*height), control1: CGPoint(x: 0.99122*width, y: 0.13384*height), control2: CGPoint(x: 0.98357*width, y: 0.09398*height))
        path.addCurve(to: CGPoint(x: 0.90483*width, y: 0.00992*height), control1: CGPoint(x: 0.95322*width, y: 0.033*height), control2: CGPoint(x: 0.93337*width, y: 0.01763*height))
        path.addCurve(to: CGPoint(x: 0.78947*width, y: 0.0022*height), control1: CGPoint(x: 0.87625*width, y: 0.00221*height), control2: CGPoint(x: 0.83913*width, y: 0.0022*height))
        path.addLine(to: CGPoint(x: 0.21053*width, y: 0.0022*height))
        path.addCurve(to: CGPoint(x: 0.09517*width, y: 0.00992*height), control1: CGPoint(x: 0.16087*width, y: 0.0022*height), control2: CGPoint(x: 0.12374*width, y: 0.00221*height))
        path.addCurve(to: CGPoint(x: 0.03161*width, y: 0.06349*height), control1: CGPoint(x: 0.06663*width, y: 0.01763*height), control2: CGPoint(x: 0.04678*width, y: 0.033*height))
        path.addCurve(to: CGPoint(x: 0.00494*width, y: 0.19118*height), control1: CGPoint(x: 0.01643*width, y: 0.09398*height), control2: CGPoint(x: 0.00878*width, y: 0.13384*height))
        path.addCurve(to: CGPoint(x: 0.0011*width, y: 0.42291*height), control1: CGPoint(x: 0.0011*width, y: 0.24858*height), control2: CGPoint(x: 0.0011*width, y: 0.32316*height))
        path.addLine(to: CGPoint(x: 0.0011*width, y: 0.57709*height))
        path.addCurve(to: CGPoint(x: 0.00494*width, y: 0.80882*height), control1: CGPoint(x: 0.0011*width, y: 0.67684*height), control2: CGPoint(x: 0.0011*width, y: 0.75142*height))
        path.addCurve(to: CGPoint(x: 0.03161*width, y: 0.93651*height), control1: CGPoint(x: 0.00878*width, y: 0.86616*height), control2: CGPoint(x: 0.01643*width, y: 0.90602*height))
        path.addCurve(to: CGPoint(x: 0.09517*width, y: 0.99007*height), control1: CGPoint(x: 0.04678*width, y: 0.967*height), control2: CGPoint(x: 0.06663*width, y: 0.98237*height))
        path.addCurve(to: CGPoint(x: 0.21053*width, y: 0.9978*height), control1: CGPoint(x: 0.12374*width, y: 0.99779*height), control2: CGPoint(x: 0.16087*width, y: 0.9978*height))
        path.addLine(to: CGPoint(x: 0.2737*width, y: 0.9978*height))
        path.addCurve(to: CGPoint(x: 0.32103*width, y: 0.99266*height), control1: CGPoint(x: 0.29783*width, y: 0.9978*height), control2: CGPoint(x: 0.30972*width, y: 0.99778*height))
        path.addCurve(to: CGPoint(x: 0.34617*width, y: 0.97416*height), control1: CGPoint(x: 0.32977*width, y: 0.98869*height), control2: CGPoint(x: 0.33822*width, y: 0.98248*height))
        path.addCurve(to: CGPoint(x: 0.38396*width, y: 0.9167*height), control1: CGPoint(x: 0.35645*width, y: 0.96342*height), control2: CGPoint(x: 0.36554*width, y: 0.948*height))
        path.addLine(to: CGPoint(x: 0.39074*width, y: 0.90518*height))
        path.addLine(to: CGPoint(x: 0.39078*width, y: 0.90512*height))
        path.addCurve(to: CGPoint(x: 0.4335*width, y: 0.83511*height), control1: CGPoint(x: 0.40864*width, y: 0.87478*height), control2: CGPoint(x: 0.42208*width, y: 0.85195*height))
        path.addCurve(to: CGPoint(x: 0.46439*width, y: 0.80077*height), control1: CGPoint(x: 0.44495*width, y: 0.81824*height), control2: CGPoint(x: 0.45443*width, y: 0.80729*height))
        path.addCurve(to: CGPoint(x: 0.5341*width, y: 0.80343*height), control1: CGPoint(x: 0.48712*width, y: 0.78589*height), control2: CGPoint(x: 0.51167*width, y: 0.78683*height))
        path.addCurve(to: CGPoint(x: 0.56432*width, y: 0.84011*height), control1: CGPoint(x: 0.54393*width, y: 0.8107*height), control2: CGPoint(x: 0.5532*width, y: 0.82237*height))
        path.addCurve(to: CGPoint(x: 0.60569*width, y: 0.91333*height), control1: CGPoint(x: 0.57542*width, y: 0.85781*height), control2: CGPoint(x: 0.58841*width, y: 0.88165*height))
        path.addLine(to: CGPoint(x: 0.60572*width, y: 0.91339*height))
        path.addCurve(to: CGPoint(x: 0.63846*width, y: 0.96788*height), control1: CGPoint(x: 0.62171*width, y: 0.94271*height), control2: CGPoint(x: 0.62959*width, y: 0.95716*height))
        path.addCurve(to: CGPoint(x: 0.67159*width, y: 0.99368*height), control1: CGPoint(x: 0.64869*width, y: 0.98022*height), control2: CGPoint(x: 0.65989*width, y: 0.98896*height))
        path.addCurve(to: CGPoint(x: 0.71406*width, y: 0.9978*height), control1: CGPoint(x: 0.68174*width, y: 0.99779*height), control2: CGPoint(x: 0.69241*width, y: 0.9978*height))
        path.addLine(to: CGPoint(x: 0.78947*width, y: 0.9978*height))
        path.addCurve(to: CGPoint(x: 0.90483*width, y: 0.99007*height), control1: CGPoint(x: 0.83913*width, y: 0.9978*height), control2: CGPoint(x: 0.87625*width, y: 0.99779*height))
        path.addCurve(to: CGPoint(x: 0.96839*width, y: 0.93651*height), control1: CGPoint(x: 0.93337*width, y: 0.98237*height), control2: CGPoint(x: 0.95322*width, y: 0.967*height))
        path.addCurve(to: CGPoint(x: 0.99506*width, y: 0.80882*height), control1: CGPoint(x: 0.98357*width, y: 0.90602*height), control2: CGPoint(x: 0.99122*width, y: 0.86616*height))
        path.addCurve(to: CGPoint(x: 0.9989*width, y: 0.57709*height), control1: CGPoint(x: 0.9989*width, y: 0.75142*height), control2: CGPoint(x: 0.9989*width, y: 0.67684*height))
        path.closeSubpath()
        return path
    }
}

#Preview("RoundedShieldShape", traits: .sizeThatFitsLayout) {
    RoundedShieldShape()
        .frame(width: 456, height: 227)
        .padding()
}
