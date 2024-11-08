//
//  InterestPillView.swift
//  BumbleClone
//
//  Created by abdullah on 08.11.2024.
//

import SwiftUI

struct InterestPillView: View {
    
    var iconName:String? = "heart.fill"
    var emoji:String? = "❤️‍🩹"
    var text:String = "Graduate degree"
    
    
    
    var body: some View {
        HStack(spacing: 4) {
            if let iconName {
                Image(systemName: iconName)
            } else if let emoji{
                Text(emoji)
            }
            
            Text(text)
        }.font(.callout)
            .fontWeight(.medium)
            .padding(.vertical, 6)
            .padding(.horizontal, 12)
            .foregroundStyle(.bumbleBlack)
            .background(.bumbleLightYellow)
            .cornerRadius(32)
    }
}

#Preview {
    VStack {
        InterestPillView(iconName: nil)
        InterestPillView(emoji: nil)
    }
}
