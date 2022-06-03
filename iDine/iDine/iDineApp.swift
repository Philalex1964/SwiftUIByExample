//
//  iDineApp.swift
//  iDine
//
//  Created by Aleksandar Filipov on 6/3/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
