//
//  HomeVİewModel.swift
//  BumbleClone
//
//  Created by abdullah on 09.11.2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    var options: [String] = ["Everyone", "Trending"]
    @Published var allUsers: [User] = []
    @Published var cardOffsets: [Int: Bool] = [:]

    @Published var selectedIndex: Int = 0
    
    func getAllUsers() {
        
        for user in User.users {
            allUsers.append(user)
            
        }
        
    }
    
    func userDidSelection(index: Int, isLike: Bool) {
        let user = allUsers[index]
        cardOffsets[user.id] = isLike
        
        selectedIndex += 1
    }
    
}
