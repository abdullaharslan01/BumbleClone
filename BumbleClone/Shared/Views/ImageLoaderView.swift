//
//  ImageLoaderView.swift
//  SpotifyClone
//
//  Created by abdullah on 31.10.2024.
//

import SDWebImageSwiftUI
import SwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode:ContentMode = .fill
    
    var body: some View {
        
        Rectangle()
            .opacity(0.001)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsTightening(false)
            }.clipped()
            .onAppear {
                
            }
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
