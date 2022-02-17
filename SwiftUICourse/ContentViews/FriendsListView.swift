//
//  FriendsList.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI
import ASCollectionView

struct FriendsList : View {
    @ObservedObject var viewModel : FriendModelView
    
    init(viewModel : FriendModelView) {
        self.viewModel = viewModel
    }
    var body: some View {
        
        List(viewModel.friends) { friend in
            NavigationLink(destination: DetailFriendsListView(friend: friend).environmentObject(viewModel)) {
                UserCellView(friend: friend)
            }
  
        }
        .onAppear {
            viewModel.fetchFriends()
        }
    }
}


