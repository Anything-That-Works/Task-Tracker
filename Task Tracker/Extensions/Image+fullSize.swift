//
//  Image+fullSize.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

extension Image {
    func fullSize() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
