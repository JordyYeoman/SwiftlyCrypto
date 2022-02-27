//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 24/2/2022.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true )
            }
            .environmentObject(vm)
        }
    }
}
