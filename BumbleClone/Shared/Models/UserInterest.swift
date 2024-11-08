//
//  UserInterest.swift
//  BumbleClone
//
//  Created by abdullah on 08.11.2024.
//

import Foundation

struct UserInterest: Identifiable{
    let id = UUID().uuidString
    var iconName:String? = nil
    var emoji:String? = nil
    var text: String
}
