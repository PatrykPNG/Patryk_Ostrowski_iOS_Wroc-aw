//
//  CartManager.swift
//  Patryk_Ostrowski_iOS_Wrocław
//
//  Created by Patryk Ostrowski on 11/05/2025.
//

import Foundation

class CartManager: ObservableObject {
    // Stores productID: quantity
    @Published var items: [String: Int] = [:]
    
    var isEmpty: Bool {
        items.values.filter {$0 > 0}.isEmpty
    }
    
    func add(product: Product) {
        items[product.id, default: 0] += 1
    }
    
    func remove(product: Product) {
        guard let quantity = items[product.id], quantity > 0 else { return }
        items[product.id] = quantity - 1
        
        // Removing product when quantity == 0
        if items[product.id] == 0 {
            items.removeValue(forKey: product.id)
        }
    }
    
    func totalPrice(products: [Product]) -> Double {
        var total = 0.0
        for (id, quantity) in items where quantity > 0 {
            if let product = products.first(where: { $0.id == id}) {
                total += product.priceValue * Double(quantity)
            }
        }
        return total
    }
}
