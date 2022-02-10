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
        networkService.getFriendsData {[weak self] friendsList in
            guard let self = self else {return}
            self.friends = friendsList
        }
    }
}
