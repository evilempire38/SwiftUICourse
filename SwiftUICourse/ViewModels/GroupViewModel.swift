//
//  GroupViewModel.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

class GroupViewModel : ObservableObject {
    var groupList : [CommunityJSONData] = []
    internal let objectWillChange =  ObjectWillChangePublisher()
    let networkService = NetworkService()
    
    public func fetchComminity() {
        networkService.getCommunityData { [weak self] data in
            guard let self = self else {return}
            self.groupList = data
            self.objectWillChange.send()
        }
    }
}
