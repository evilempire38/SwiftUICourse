//
//  UserModel.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 26.01.2022.
//

import Foundation

struct UserModel : Identifiable {
    var id: UUID = UUID()
    
    var name : String
    var surname : String
    var image : String
    
}

struct GroupModel : Identifiable {
    var id: UUID = UUID()
    
    var groupName : String
    var groupUserCount: Int
    var image : String
}
