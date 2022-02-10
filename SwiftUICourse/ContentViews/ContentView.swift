//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI


struct ContentView : View {
    
    
    var body: some View {
        TabView {
            FriendsList()
                .tabItem {
                    Image(systemName: "person")
                    Text("Друзья")
                }
            GroupList()
                .tabItem {
                    Image(systemName: "person.crop.rectangle.stack.fill")
                    Text("Cообщества")
                }
            NewsFeedView()
                .tabItem {
                    Image(systemName: "text.bubble.fill")
                    Text("Лента новостей")
                }
        }
    }
}
