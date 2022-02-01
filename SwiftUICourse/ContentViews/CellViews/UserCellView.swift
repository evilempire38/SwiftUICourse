//
//  UserCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI

struct UserCellView : View {
    let friend : UserModel
    
    var body: some View {
        HStack {
            Image(friend.image)
                .resizable()
                .modifier(ImageViewMod())
            
            Text(friend.name + " " + friend.surname)

    }
}
}
 

