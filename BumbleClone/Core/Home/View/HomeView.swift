//
//  HomeView.swift
//  BumbleClone
//
//  Created by abdullah on 07.11.2024.
//

import SwiftUI


class HomeViewModel:ObservableObject{
    
    var options:[String] = ["Everyone","Trending"]
    @AppStorage("bumble_home_filter") var selection = "Everyone"
    
    
}


struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.bumbleWhite.ignoresSafeArea()
            
            VStack(spacing: 12) {
                header
                
                BumbleFilterView(options: vm.options, selection: $vm.selection)
                    .background(
                        Divider(), alignment: .bottom
                    )
                
                BumbleCardView()
                
                
                Spacer()
            }.padding(8)
        }
    }
}

extension HomeView {
    private var header: some View {
        HStack(spacing: 0) {
                            
            HStack(spacing: 0) {
                Image(systemName: "line.horizontal.3")
                    .padding(8)
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {}
                                
                Image(systemName: "arrow.uturn.left")
                    .padding(8)
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {}
                                
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
    HomeView()
}
