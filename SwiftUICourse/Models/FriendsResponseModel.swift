//
//  FriendsResponseModel.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

struct FriendsResponse : Decodable {
    let response : ResponseFriends
}
struct ResponseFriends : Decodable {
    let count : Int
    let items : [FriendsJsonData]
}
struct FriendsJsonData {
    let firstName : String
    let lastName : String
    let photo50 : String
}
extension FriendsJsonData : Decodable {
    
    enum CodingKeys : String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo50 = "photo_50"
    }
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.firstName = try values.decode(String.self, forKey: .firstName)
        self.lastName = try values.decode(String.self, forKey: .lastName)
        self.photo50 = try values.decode(String.self, forKey: .photo50)
    }
}
