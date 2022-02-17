//
//  DetailFriendsListView.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 08.02.2022.
//

import SwiftUI


struct DetailFriendsListView : View {

     var friend : FriendsJsonData
    @State private var scale : CGFloat = 1.0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center)  {
                userAvatar
                name
                CurrentFriendView(friend: friend)
                Spacer()
            }
            .navigationTitle(Text(friend.firstName))
        }
    }
}

extension DetailFriendsListView {
    var userAvatar: some View {
        AsyncImage(url: friend.urlForImage) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 100 * scale, height: 100 * scale)
    }

    var name : some View {
        Text(friend.fullname)
    }
}


 struct CurrentFriendView : View {
    var friend: FriendsJsonData
    @EnvironmentObject var viewModel: FriendModelView

    private let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 15),
    ]

    var body: some View {
//        Text("playte")
//        LazyVGrid(columns: columns, spacing: 15) {
//            ForEach(viewModel.friends, id: \.self) { myData in
//                let imgURL = myData.urlForImage
//                {
//                    AsyncImage(url: imgURL) { image in
//                        image
//                            .resizable()
//                            .scaledToFit()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                }
//            }
//        }
//        .onAppear {
//            viewModel.fetchFriends()
//        }
//    }
}


