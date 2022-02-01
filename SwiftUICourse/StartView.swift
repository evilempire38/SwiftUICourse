//
//  ContainerView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI

struct StartView : View {
    
    @State private var permitToContentView : Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $permitToContentView)
                NavigationLink(isActive: $permitToContentView) {
                    ContentView()
                } label: {
                    EmptyView()
                }

            }
        }
    }
}
