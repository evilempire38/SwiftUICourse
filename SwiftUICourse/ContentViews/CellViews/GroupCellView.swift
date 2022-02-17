//
//  GroupCellView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI
import Kingfisher


struct GroupCellView : View {
    @State private var isScaled : Bool = false
    let group : CommunityJSONData
    
    var body: some View {
        let image = URL(string: group.photo50)
        HStack{
            
            AsyncImage(url: image) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
                
                .modifier(ImageViewMod())
                .modifier(AnimateMainImage())
            VStack(alignment: .leading, spacing: 2) {
                Text(group.name).modifier(MainTextViewMod())
                Text("\(group.id)").modifier(SubTextViewMod())
                    
            }
        }
    }
}
struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
