//
//  BlurredBackgroundView.swift
//  ShapeBuilder
//
//  Created by Promal on 25/7/24.
//

import SwiftUI

/// BlurredBackgroundView is transparent and adds a blurred effect to the area it covers making Glossy effect as a whole
struct BlurredBackgroundView: View {
    let radius: CGFloat
    @ViewBuilder
    var body: some View {
        BlurEffectView().blur(radius: radius)
    }
}
/// A UIViewRepresentable to create and manage a UIVisualEffectView
fileprivate struct BlurEffectView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        let blur = UIBlurEffect()
        let animator = UIViewPropertyAnimator()
        animator.addAnimations { view.effect = blur }
        animator.fractionComplete = 0
        animator.stopAnimation(false)
        animator.finishAnimation(at: .current)
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) { }
}

#Preview(traits: .sizeThatFitsLayout) {
    Image("sample")
        .resizable()
        .scaledToFit()
        .overlay {
            BlurredBackgroundView(radius: 5)
        }
        .padding()
}
