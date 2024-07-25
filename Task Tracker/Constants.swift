//
//  Constants.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import Foundation
import SwiftUI

class Constants {

    static let strokeColor = Color(#colorLiteral(red: 0.5411723852, green: 0.5411797166, blue: 0.6816347241, alpha: 0.6))
    
    static let todoCircleColor = Color(#colorLiteral(red: 0.7893593907, green: 0.9619448781, blue: 0.7231979966, alpha: 1))
    static let todoArrowColor = Color.black
    
    static let onGoingCircleColor = Color(#colorLiteral(red: 0.0296048075, green: 0.03954820335, blue: 0.1147523597, alpha: 1))
    static let onGoingArrowColor = Color.white
    
    // Text Colors
    
    static func primaryColor(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .dark {
            return Color.white
        } else {
            return Color.black
        }
    }
    
    static func secondaryColor(for colorScheme: ColorScheme) -> Color {
        return Color(#colorLiteral(red: 0.5411729217, green: 0.5411792397, blue: 0.664752543, alpha: 1))
    }
    
    //HomeView
    static func background(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .light {
            return Color.white
        }
       return Color(#colorLiteral(red: 0.1224331483, green: 0.1174802259, blue: 0.1601344645, alpha: 1))
    }
    
    static func completeDashboardColor(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .light {
            return Color(#colorLiteral(red: 0.9607836604, green: 0.9607848525, blue: 0.9865851998, alpha: 1))
        }
        return Color(#colorLiteral(red: 0.2243989706, green: 0.2194428742, blue: 0.2960398793, alpha: 1))
    }
    
    static func completeDashboardCircleColor(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .light {
            return Color(#colorLiteral(red: 0.2243989706, green: 0.2194428742, blue: 0.2960398495, alpha: 1))
        }
        return Color.white
    }
    
    static func arrowColor(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .light {
            return Color.white
        } else {
            return Color.black
        }
    }
    //Blur radius for dashboard
    static let radius: CGFloat = 8.0
}
