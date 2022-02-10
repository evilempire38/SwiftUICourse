//
//  DetailFriendImageCell.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 08.02.2022.
//

import Foundation
import SwiftUI
import UIKit

struct  DetailFriendImageCell : View {
    let friend : UserModel
    @State private var likeCount : Int = 0
    @State private var systemImageName : String = "heart"
    
    
    var body: some View {
        VStack(alignment: .center) {
            Text(friend.name + friend.surname)
            Image(friend.image)
                .resizable()
                .foregroundColor(.black)
                .frame(width: 100, height: 100, alignment: .leading)
            HStack {
                Image(systemName: systemImageName)
                    .resizable()
                    .frame(width: 15, height: 15, alignment: .leading)
                    .foregroundColor(.red)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            self.systemImageName = "heart.fill"
                            self.likeCount += 1
                        }
                    }
                Text("\(likeCount)")
            }

            
                
            
        }
    }
}
