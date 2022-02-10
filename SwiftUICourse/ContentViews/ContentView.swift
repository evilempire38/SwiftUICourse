//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI


struct ContentView : View {
    private let friendViewModel = FriendModelView()
    
    var body: some View {
        TabView {
            FriendsList(viewModel: friendViewModel)
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
