//
//  CommunityList.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 01.02.2022.
//

import Foundation
import SwiftUI



struct GroupList : View {
    @ObservedObject var viewModel : GroupViewModel
    
//    @State private var groupList : [GroupModel] = [GroupModel(groupName: "BMW club lovers", groupUserCount: 3512, image: "bmw"),
//    GroupModel(groupName: "Toyota", groupUserCount: 351267, image: "toyota"),
//    GroupModel(groupName: "Porche", groupUserCount: 5807, image: "porche")]
    
    
    var body: some View {
        List(viewModel.groupList) { groups in
            GroupCellView(group: groups)
            
        } .onAppear {
            viewModel.fetchComminity()
        }
    }
}

