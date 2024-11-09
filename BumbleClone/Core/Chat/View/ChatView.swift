//
//  ChatView.swift
//  BumbleClone
//
//  Created by abdullah on 09.11.2024.
//

import SwiftUI



struct ChatView: View {
    @StateObject var vm = ChatViewModel()

    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {

            Color.bumbleWhite.ignoresSafeArea()

            VStack(spacing: 0) {
                header
                    .padding(16)

                matchQueueSection
                
                recentChatsSection
                
                Spacer()
            }

        }.task {
            vm.getAllUsers()
        }.toolbarVisibility(.hidden, for: .navigationBar)

    }
}

extension ChatView {

    private var header: some View {
        HStack(spacing: 0) {
            Image(systemName: "line.horizontal.3")
                .onTapGesture {
                    dismiss()
                }
            Spacer(minLength: 0)
            Image(systemName: "magnifyingglass")
        }.font(.title)
            .fontWeight(.medium)
    }

    private var matchQueueSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Group {
                Text("Match Queue") + Text(" (\(vm.allUsers.count))")
                    .foregroundStyle(.bumbleGray)
            }.padding(.horizontal, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(vm.allUsers) { user in
                        BumbleProfileImageCell(imageName: user.profileImage, percentageRemaning: Double.random(in: 0 ... 1), hasNewMessage: Bool.random())

                    }
                }.padding(.horizontal, 16)
            }.frame(height: 100)

        }

        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private var recentChatsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(content: {
                Group {
                    Text("Chats") + Text(" (Recant)")
                        .foregroundStyle(.bumbleGray)
                }

                Spacer(minLength: 0)

                Image(systemName: "line.horizontal.3.decrease")
                    .font(.title2)

            })
            .padding(.horizontal, 16)

            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEach(vm.allUsers) { user in

                        BumbleChatPreviewCell(
                            imageName: user.profileImage,
                            percentageRemaning: Double.random(in: 0 ... 1),
                            hasNewMessage: Bool.random(),
                            userName: user.username,
                            lastChatMessage: vm.getLastMessage(index: user.id),
                            isYourMove: Bool.random()
                        )

                    }
                }.padding(.horizontal, 16)
            }

        }

        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ChatView()
}
