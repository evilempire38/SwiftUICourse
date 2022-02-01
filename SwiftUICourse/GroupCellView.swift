//
//  GroupCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI


struct GroupCellView : View {
    let group = GroupModel(groupName: "Automative", groupUserCount: 45567)
    var body: some View {
        HStack{
            Image(systemName: "person.3").modifier(ImageViewMod())
            VStack(alignment: .leading, spacing: 2) {
                Text(group.groupName).modifier(MainTextViewMod())
                Text("\(group.groupUserCount)").modifier(SubTextViewMod())
                    
            }
        }
    }
}
