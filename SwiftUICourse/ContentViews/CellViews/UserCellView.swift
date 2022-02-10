//
//  UserCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI
import Kingfisher

struct UserCellView : View {
    
    let friend : FriendsJsonData
    var body: some View {
        HStack {
            KFImage(URL(string: friend.photo50))
                .resizable()
                .modifier(ImageViewMod())
                .modifier(AnimateMainImage())
            Text(friend.firstName + " " + friend.lastName)
            
        }
    }
}


