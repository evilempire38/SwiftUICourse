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
    private let groupViewModel = GroupViewModel()
    
    var body: some View {
        
        MyTBWrapper([
            TabBarElement(tabBarElementItem: .init(title: "Друзья", systemImageName: "person")) {
                NavigationView {
                    FriendsList(viewModel: friendViewModel)
                }
            },
            TabBarElement(tabBarElementItem: .init(title: "Сообщества", systemImageName: "person.crop.rectangle.stack.fill")) {
                NavigationView {
                    GroupList(viewModel: groupViewModel)
                }
            },
            TabBarElement(tabBarElementItem: .init(title: "Лента новостей", systemImageName: "text.bubble.fill")) {
                NavigationView {
                    NewsFeedView()
                }
            }])
        
    }
}
