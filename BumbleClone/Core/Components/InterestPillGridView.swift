//
//  InterestPillGridView.swift
//  BumbleClone
//
//  Created by abdullah on 08.11.2024.
//

import SwiftUI
import SwiftfulUI

struct InterestPillGridView: View {
    
    var interests:[UserInterest]
    
    
    var body: some View {
        ZStack {
            NonLazyVGrid(columns: 2, alignment: .leading, spacing: 8, items: interests) { interest in
                if let interest {
                    InterestPillView(iconName: interest.iconName, emoji: interest.emoji, text: interest.text)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
 
}
