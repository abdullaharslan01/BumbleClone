//
//  BumbleProfileImageCell.swift
//  BumbleClone
//
//  Created by abdullah on 09.11.2024.
//

import SwiftUI

struct BumbleProfileImageCell: View {

    var imageName: String = User.users.first!.profileImage
    var percentageRemaning: Double = .random(in: 0 ... 1)
    var hasNewMessage: Bool = true

    var body: some View {
        ZStack {
            Circle()
                .stroke(.bumbleGray, lineWidth: 2)

            Circle()
                .trim(from: 0, to: percentageRemaning)
                .stroke(.bumbleYellow, lineWidth: 2)
                .rotationEffect(Angle(degrees: -90))
                .scaleEffect(x: -1, y: 1, anchor: .center)

            ImageLoaderView(urlString: imageName)
                .clipShape(Circle())
                .padding(5)

        }.frame(width: 75, height: 75)
            .overlay(alignment: .bottomTrailing) {
                ZStack {
                    if hasNewMessage {
                        Circle()
                            .fill(.bumbleWhite)

                        Circle()
                            .fill(.bumbleYellow)
                            .padding(4)

                    }
                }.frame(width: 24, height: 24)
                    .offset(x: 2, y: 2)
            }
    }
}

#Preview {
    BumbleProfileImageCell()
}
