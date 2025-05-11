//
//  Patryk_Ostrowski_iOS_Wroc_awApp.swift
//  Patryk_Ostrowski_iOS_Wrocław
//
//  Created by Patryk Ostrowski on 10/05/2025.
//

import SwiftUI

@main
struct Patryk_Ostrowski_iOS_Wroc_awApp: App {
    @StateObject var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartManager)
        }
    }
}
