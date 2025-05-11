//
//  ContentView.swift
//  Patryk_Ostrowski_iOS_Wrocław
//
//  Created by Patryk Ostrowski on 10/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    let products = Product.allProducts
    
    var body: some View {
        VStack {
            List(products) { product in
                Text(product.description)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
