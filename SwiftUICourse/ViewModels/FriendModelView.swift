//
//  FriendModelView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

class FriendModelView : ObservableObject {
    
    @Published var friends : [FriendsJsonData] = []
    
    private let networkService = NetworkService()
    public func fetchFriends() {
        networkService.getFriendsData { friendsList in
            self.friends = friendsList
        }
    }
}
