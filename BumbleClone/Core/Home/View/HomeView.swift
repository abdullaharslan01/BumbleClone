//
//  HomeView.swift
//  BumbleClone
//
//  Created by abdullah on 07.11.2024.
//

import SwiftfulUI
import SwiftUI

struct HomeView: View {
    @AppStorage("bumble_home_filter") var selection = "Everyone"
    @StateObject var vm = HomeViewModel()
    @State private var cardOffsets: [Int: Bool] = [:]
    
    @State private var currentSwipeOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.bumbleWhite.ignoresSafeArea()
            
            VStack(spacing: 12) {
                header
                
                BumbleFilterView(options: vm.options, selection: $selection)
                    .background(
                        Divider(), alignment: .bottom
                    )
                
                //     BumbleCardView(user: users.first!)
                
                ZStack {
                    if !vm.allUsers.isEmpty {
                        
                        ForEach(Array(vm.allUsers.enumerated()), id: \.offset) {
                            index,
                                user in
                            
                            let isPrevious = (vm.selectedIndex - 1) == index
                            let isCurrent = vm.selectedIndex == index
                            let isNext = (vm.selectedIndex + 1) == index
                            
                            if isPrevious || isCurrent || isNext {
                                
                                let offsetValue = vm.cardOffsets[user.id]
                                userProfileCell(index: index, user: user)
                                    .zIndex(Double(vm.allUsers.count - index))
                                    .offset(x: offsetValue == nil ? 0 : offsetValue == true ? 900 : -900)
                            }
                            
                        }
                        
                    } else {
                        ProgressView()
                    }
                    overlaySwipingIndicators
                        .zIndex(99999)
                    
                }.frame(maxHeight: .infinity)
                    .padding(4)
                    .animation(.smooth, value: vm.cardOffsets)
                
            }
                
        }
        .padding(8)
        .task {
            vm.getAllUsers()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

extension HomeView {
    private var overlaySwipingIndicators: some View {
        ZStack(content: {
                              
            Circle()
                .fill(.bumbleGray.opacity(0.04))
                .overlay {
                    Image(systemName: "xmark")
                        .font(.title)
                        .fontWeight(.semibold)
                }.frame(width: 60, height: 60)
                .scaleEffect(abs(currentSwipeOffset) > 100 ? 1.5 : 1.0)
                .offset(x: min(-currentSwipeOffset, 150))
                .offset(x: -100)
                .frame(maxWidth: .infinity, alignment: .leading)
                                
            Circle()
                .fill(.bumbleGray.opacity(0.04))
                .overlay {
                    Image(systemName: "checkmark")
                        .font(.title)
                        .fontWeight(.semibold)
                }.frame(width: 60, height: 60)
                .scaleEffect(abs(currentSwipeOffset) > 100 ? 1.5 : 1.0)
                .offset(x: max(-currentSwipeOffset, -150))
                .offset(x: 100)
                .frame(maxWidth: .infinity, alignment: .trailing)
                                
        })
        .animation(.smooth, value: currentSwipeOffset)
    }
    
    private func userProfileCell(index: Int, user: User) -> some View {
        BumbleCardView(user: user, onXmarkPressed: {
            vm.userDidSelection(index: index, isLike: false)
        }, onCheckmarkPressed: {
            vm.userDidSelection(index: index, isLike: true)
        }, onHideAndReportPressed: {})
         
            .withDragGesture(
                                                
                .horizontal,
                             
                minimumDistance: 50,
                resets: true,
                                            
                rotationMultiplier: 1.05,
                                                
                scaleMultiplier: 1,
                                                
                onChanged: { dragOffset in
                    currentSwipeOffset = dragOffset.width
                },
                onEnded: { dragOffset in
                    if dragOffset.width < -50 {
                        vm.userDidSelection(index: index, isLike: false)
                    } else if dragOffset.width > 50 {
                        vm.userDidSelection(index: index, isLike: true)
                    }
                }
            )
    }
    
    private var header: some View {
        HStack(spacing: 0) {
                            
            HStack(spacing: 0) {
              
                NavigationLink {
                    ChatView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .padding(8)
                        .background(Color.black.opacity(0.001))
                }

                Image(systemName: "arrow.uturn.left")
                    .padding(8)
                    .background(Color.black.opacity(0.001))
                
            }.frame(maxWidth: .infinity, alignment: .leading)
                            
            Text("bumble")
                .font(.title)
                .foregroundStyle(.bumbleYellow)
                .frame(maxWidth: .infinity, alignment: .center)
                            
            Image(systemName: "slider.horizontal.3")
                .padding(8)
                .background(Color.black.opacity(0.001))
                .onTapGesture {}
                .frame(maxWidth: .infinity, alignment: .trailing)
        }.font(.title2)
            .fontWeight(.medium)
            .foregroundStyle(.bumbleBlack)
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
    
}
