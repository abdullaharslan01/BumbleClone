//
//  Other.swift
//  BumbleClone
//
//  Created by abdullah on 07.11.2024.
//

import SwiftUI

struct Other: View {
    @Namespace private var animationNamespace
    @State private var selectedItem: Int? = nil
        
        var body: some View {
            VStack {
                if selectedItem == nil {
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(0..<10, id: \.self) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 80)
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: index, in: animationNamespace)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            selectedItem = index
                                        }
                                    }
                            }
                        }
                        .padding()
                    }
                } else {
                    // Detay görünümü
                    VStack {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 300, height: 400)
                            .cornerRadius(20)
                            .matchedGeometryEffect(id: selectedItem!, in: animationNamespace)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedItem = nil
                                }
                            }
                        Text("Detaylar")
                            .font(.title)
                            .padding()
                    }
                }
            }
        }
}

#Preview {
    Other()
}
