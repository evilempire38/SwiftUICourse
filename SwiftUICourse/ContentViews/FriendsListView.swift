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
    

    @State private var friendsList : [UserModel] =
    [UserModel(name: "Fedor", surname: "Gromov", image: "mb"),
     
     UserModel(name: "Anatoly", surname: "Fedotov", image: "bmw"),
     
     UserModel(name: "Tatiana", surname: "Morozova", image: "porche")]
    
    var body: some View {
        
        List(friendsList) { friend in
            NavigationLink(destination: DetailFriendsListView(friend: friend)) {
                UserCellView(friend: friend)
            }
  
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
