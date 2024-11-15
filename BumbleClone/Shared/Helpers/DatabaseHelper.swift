//
//  DatabaseHelper.swift
//  SpotifyClone
//
//  Created by abdullah on 31.10.2024.
//

import Foundation

enum DatabaseHelper {
    static func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
    }

   
}
