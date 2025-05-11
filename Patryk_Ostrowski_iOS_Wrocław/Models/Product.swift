//
//  Product.swift
//  Patryk_Ostrowski_iOS_Wrocław
//
//  Created by Patryk Ostrowski on 10/05/2025.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: String
    let description: String
    let price: String
    let isFavorite: Bool
    let inStock: Int
    let image: String
    let promotions: [Promotion]
    
    enum CodingKeys: String, CodingKey {
        case id = "productId"
        case description
        case price
        case isFavorite
        case inStock
        case image
        case promotions
        }
    
    struct Promotion: Codable {
        let type: String
        let value: String
    }
    
    var priceValue: Double {
        let priceString = price.replacingOccurrences(of: " £", with: "")
        return Double(priceString) ?? 0.0
    }
    

    
    
    static let allProducts: [Product] = {
        let productsContainer: ProductsContainer = Bundle.main.decode("items.json")
        return productsContainer.items
    }()
    
    //example with promotion
    static let example = allProducts[1]
}
