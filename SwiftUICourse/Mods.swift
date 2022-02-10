//
//  Mods.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 26.01.2022.
//

import Foundation
import SwiftUI

struct ImageViewMod: ViewModifier {
    
    func body(content: Content) -> some View {
        return content
            .scaledToFit()
            .border(Color.blue)
            .cornerRadius(15)
            .frame(width: 30, height: 30, alignment: .leading)
    }
    }
struct MainTextViewMod : ViewModifier {
    func body(content: Content) -> some View {
        return content
            .foregroundColor(.black)
            .cornerRadius(10)
    }
}
struct SubTextViewMod: ViewModifier {
    func body(content: Content) -> some View {
        return content.modifier(MainTextViewMod())
            .font(.custom("Helvetica", fixedSize: 10))
            
    }
}
struct AnimateMainImage : ViewModifier {
    @State private var offset : CGFloat = 0
    func body(content: Content) -> some View {
        return content
            .offset(x: 0.0, y: offset)
            .onTapGesture {
                withAnimation(.interpolatingSpring(stiffness: 350, damping: 5, initialVelocity: 10)) {
                    self.offset = -8
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        self.offset = 0.0
                    }
                }
            }
    }
}
