//
//  BumbleCardView.swift
//  BumbleClone
//
//  Created by abdullah on 08.11.2024.
//

import SwiftfulUI
import SwiftUI

struct BumbleCardView: View {
    
    var user: User
    @State private var cardFrame: CGRect = .zero
    
    var onSuperLikePressed: (()-> Void)? = nil
    var onXmarkPressed: (()-> Void)? = nil
    var onCheckmarkPressed: (()-> Void)? = nil
    var onSendAComplimentPressed: (()-> Void)? = nil
    var onHideAndReportPressed: (()-> Void)? = nil
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {

                headerCell
                    .frame(height: cardFrame.height)
                
                aboutMeSection
                    .padding(.horizontal, 24)
                    .padding(.vertical, 24)
             
                myIneterstsSection
                    .padding(.horizontal, 24)
                    .padding(.vertical, 24)

                
                
                    
                ForEach(user.otherImages, id: \.self) { image in
                        ImageLoaderView(urlString: image)
                            .frame(height: cardFrame.height)
                    }
                
                
                locationsection
                    .padding(.horizontal, 24)
                    .padding(.vertical, 24)
                
                footersection
                    .padding(.top, 60)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 32)
                
            }
        }.scrollIndicators(.hidden)
            .background(.bumbleBackgroundYellow)
            .overlay(alignment: .bottomTrailing, content: {
                superLikeButton
                    .padding(24)
            })
            .cornerRadius(32)
            .readingFrame { frame in
                cardFrame = frame
            }
        
    }
    
    private var superLikeButton: some View {
        Image(systemName: "hexagon.fill")
            .foregroundStyle(.bumbleYellow)
            .font(.system(size: 60))
            .overlay {
                Image(systemName: "star.fill")
                    .font(.system(size: 30, weight: .medium))
            }
            .onTapGesture {
                onSuperLikePressed?()
            }
    }
    
    private var footersection: some View {
        VStack(spacing: 24) {
            HStack(spacing: 24) {
                Circle()
                    .fill(.bumbleYellow)
                    .overlay {
                        Image(systemName: "xmark")
                            .font(.title)
                            .fontWeight(.semibold
                            )
                    }.frame(width: 60, height: 60)
                    .onTapGesture {
                        onXmarkPressed?()
                    }
                                
                Spacer(minLength: 0)
                                
                Circle()
                    .fill(.bumbleYellow)
                    .overlay {
                        Image(systemName: "checkmark")
                            .font(.title)
                            .fontWeight(.semibold
                            )
                    }.frame(width: 60, height: 60)
                    .onTapGesture {
                        onCheckmarkPressed?()
                    }
            }
                            
            Text("Hide and report")
                .font(.headline)
                .foregroundStyle(.bumbleGray)
                .padding(8)
                .background(Color.black.opacity(0.001))
                .onTapGesture {
                    onHideAndReportPressed?()
                }
        }
    }
    
    private var locationsection: some View {
        VStackLayout(alignment: .leading, spacing: 12) {
            HStackLayout(spacing: 8) {
                Image(systemName: "mappin.and.ellipse.circle.fill")
                                
                Text(user.firstName + "'s Location")
            }.foregroundStyle(.bumbleGray)
                .font(.body)
                .fontWeight(.medium)
                            
            Text("\(user.distanceFromMe) miles away")
                .font(.headline)
                .foregroundStyle(.bumbleBlack)
                            
            InterestPillView(iconName: nil, emoji: "🇹🇷", text: user.city)
                            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var myIneterstsSection: some View {
        VStackLayout(alignment: .leading, spacing: 12) {
            VStackLayout(alignment: .leading, spacing: 8) {
                sectionTitle(title: "My basics")
                InterestPillGridView(interests: user.basics)
            }
            VStackLayout(alignment: .leading, spacing: 8) {
                sectionTitle(title: "My interests")
                InterestPillGridView(interests: user.interests)
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var aboutMeSection: some View {
        VStackLayout(alignment: .leading, spacing: 12) {
                            
            sectionTitle(title: "About me")
                            
            Text(user.aboutMe)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundStyle(.bumbleBlack)
                            
            HStack(spacing: 0) {
                BumbleHeartView()
                                
                Text("Send a Compliment")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding([.horizontal, .trailing], 8)
            .background(.bumbleYellow)
            .cornerRadius(32)
            .onTapGesture {
                onSendAComplimentPressed?()
            }
                            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private func sectionTitle(title: String) -> some View {
        Text(title)
            .font(.body)
            .foregroundStyle(.bumbleGray)
    }
    
    private var headerCell: some View {
        ZStack(alignment: .bottomLeading) {
                            
            ImageLoaderView(urlString: user.profileImage)
                            
            VStack(alignment: .leading, spacing: 8) {
                Text("\(user.firstName), \(user.age)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                                
                HStack(spacing: 4) {
                    Image(systemName: "suitcase")
                    Text(user.profession)
                }
                HStack(spacing: 4) {
                    Image(systemName: "graduationcap")
                    Text(user.university)
                }
                                
                BumbleHeartView()
                    .onTapGesture {
                        
                    }
            }
            .padding(24)
            .font(.callout)
            .fontWeight(.medium)
            .foregroundStyle(.bumbleWhite)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                LinearGradient(
                    colors: [
                        .bumbleBlack.opacity(0),
                        .bumbleBlack.opacity(
                            0.6
                        ),
                        .bumbleBlack.opacity(0.6),
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
                            
        }
    }
}

#Preview {
    BumbleCardView(user: User.users.first!)
        .padding(.vertical, 40)
        .padding(.horizontal, 16)
}
