//
//  CommunityResponseModel.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

struct CommunityResponse : Decodable {
    let response : Response
}
struct Response : Decodable {
    let count : Int
    let items : [CommunityJSONData]
}
struct CommunityJSONData : Identifiable {
    var id: Double
    
    let name : String
    let photo50: String
}



extension CommunityJSONData : Decodable {
    
    enum CodingKeys: String, CodingKey {
        case photo50 = "photo_50"
        case name
        case id
    }
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.photo50 = try container.decode(String.self, forKey: .photo50)
//    }
}
