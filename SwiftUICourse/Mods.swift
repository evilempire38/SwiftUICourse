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
