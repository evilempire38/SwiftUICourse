//
//  NetworkService.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

class NetworkService {
    let userDefaultsManager = UserDefaults.standard

    
    func getFriendsData (competion: @escaping([FriendsJsonData])->Void) {
        var urlConstructor = URLComponents()
        urlConstructor.scheme = "https"
        urlConstructor.host = "api.vk.com"
        urlConstructor.path = "/method/friends.get"
        urlConstructor.queryItems = [URLQueryItem(name: "count", value: "500"),
                                     URLQueryItem(name: "fields", value: "nickname , photo_50"),
                                     URLQueryItem(name: "v", value: "5.131"),
                                     URLQueryItem(name: "access_token", value: userDefaultsManager.string(forKey: "vkToken"))]
        
        guard let urlConstructor = urlConstructor.url else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: urlConstructor) { data, response, error in
            if let getData = data {
                let decoder = JSONDecoder()
                do {
                    let friendsData = try decoder.decode(FriendsResponse.self, from: getData)
                    DispatchQueue.main.async {
                        competion(friendsData.response.items)
                        
                    }
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
    
}
