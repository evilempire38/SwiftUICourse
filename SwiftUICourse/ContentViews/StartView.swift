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
    @State private var isAuth : Bool = false
    
    var body: some View {
            HStack {
                if !isAuth {
                    VKLoginWebView()
                } else {
                    ContentView()
                }
            } .onReceive(event) { output in
                isAuth = true
            }
    }
}

