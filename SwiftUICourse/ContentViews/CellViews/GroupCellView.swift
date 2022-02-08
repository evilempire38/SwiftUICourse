//
//  GroupCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI


struct GroupCellView : View {
    @State private var isScaled : Bool = false
    let group : GroupModel
    
    var body: some View {
        HStack{
            
            Image(group.image)
                .resizable()
                .modifier(ImageViewMod())
                .modifier(AnimateMainImage())
            VStack(alignment: .leading, spacing: 2) {
                Text(group.groupName).modifier(MainTextViewMod())
                Text("\(group.groupUserCount)").modifier(SubTextViewMod())
                    
            }
        }
    }
}
struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
