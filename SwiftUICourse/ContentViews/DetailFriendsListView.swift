//
//  DetailFriendsListView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 08.02.2022.
//

import SwiftUI
import ASCollectionView

struct DetailFriendsListView : View {
    
    var friend : FriendsJsonData
    
    @State private var friendsList : [UserModel] =
    [UserModel(name: "Fedor", surname: "Gromov", image: "mb"),
     
     UserModel(name: "Anatoly", surname: "Fedotov", image: "bmw"),
     
     UserModel(name: "Tatiana", surname: "Morozova", image: "porche")]
    
    var body: some View {
        ASCollectionView(data: friendsList) { (content, cell) in
            DetailFriendImageCell(friend: friend)
        }
            
        
        .navigationTitle(Text(friend.firstName))
            
    }
}


