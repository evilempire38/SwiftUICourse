//
//  ContainerView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI

struct StartView : View {
    private var event = NotificationCenter.default.publisher(for: NSNotification.Name("vkTokenSaved"))
                                                                
    @State private var permitToContentView : Bool = false
    @State private var titleText : String = ""
    @State private var isAuth : Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                if !isAuth {
                    VKLoginWebView()
                } else {
                    ContentView()
                }
                
                
//                LoginView(isUserLoggedIn: $permitToContentView)
//                NavigationLink(isActive: $permitToContentView) {
//                    ContentView()
//                } label: {
//                    EmptyView()
//                }

            } .onReceive(event) { output in
                isAuth = true
            }
        }
        .navigationTitle(Text(titleText))
    }
}

