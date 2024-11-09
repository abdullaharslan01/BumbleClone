//
//  BumbleChatPreviewCell.swift
//  BumbleClone
//
//  Created by abdullah on 09.11.2024.
//

import SwiftUI

struct BumbleChatPreviewCell: View {
    
    var imageName: String = User.users.first!.profileImage
    var percentageRemaning: Double = .random(in: 0 ... 1)
    var hasNewMessage: Bool = true
    
    var userName:String = "Elif"
    var lastChatMessage: String? = "I love you too baby"
    var isYourMove: Bool = true
    
    var body: some View {
        HStack(spacing: 12) {
            BumbleProfileImageCell(imageName: imageName, percentageRemaning: percentageRemaning, hasNewMessage: hasNewMessage)
            
            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 0) {
                    Text(userName)
                        .font(.headline)
                        .foregroundStyle(.bumbleBlack)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    if isYourMove {
                        Text("YOUR MOVE")
                            .font(.caption2)
                            .bold()
                            .padding(.vertical,4)
                            .padding(.horizontal, 6)
                            .background(.bumbleYellow)
                            .cornerRadius(32)
                    }
                }
                
                if let lastChatMessage {
                    Text(lastChatMessage)
                        .font(.subheadline)
                        .foregroundStyle(.bumbleGray)
                        .padding(.trailing, 16)
                }
                
            }.lineLimit(1)
        }
    }
}

#Preview {
    BumbleChatPreviewCell()
}
