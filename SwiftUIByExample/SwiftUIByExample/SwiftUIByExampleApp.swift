//
//  SwiftUIByExampleApp.swift
//  SwiftUIByExample
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

@main
struct SwiftUIByExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
