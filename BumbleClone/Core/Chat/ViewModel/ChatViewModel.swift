//
//  ChatViewModel.swift
//  BumbleClone
//
//  Created by abdullah on 09.11.2024.
//

import Foundation


class ChatViewModel: ObservableObject {
    @Published var allUsers: [User] = []
    
    var messages:[String] = ["It was a great evening, thank you!", "I was wondering what you did today. Did you have a good day?","Shall we meet up sometime? Coffee’s on me 🙂", "Do you have any plans for tomorrow? We could do something together.", "Thanks for the lovely chat, looking forward to continuing it.", "The weather was really nice today, did you go outside?","Hope you have a sweet day! 😊","This conversation was really fun, would love to talk again soon"]
    
    
    
    func getLastMessage(index: Int) -> String {
        return messages[index]
    }
    
    
    func getAllUsers() {

        for user in User.users {
            allUsers.append(user)

        }

    }

}
