//
//  UserCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI

struct UserCellView : View {
    let user = UserModel(name: "Fedor", surname: "Fedorov")
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(systemName: "person.fill").modifier(ImageViewMod())
            Text(user.name + " " + user.surname)
        } .frame(width: 250, height: 50, alignment: .center)
    }
}
