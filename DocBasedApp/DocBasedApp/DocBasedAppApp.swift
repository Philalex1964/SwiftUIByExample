//
//  DocBasedAppApp.swift
//  DocBasedApp
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI
import CoreSpotlight

@main
struct DocBasedAppApp: App {
    var body: some Scene {
            DocumentGroup(newDocument: TextFile()) { file in
                ContentView(document: file.$document)
                    .onContinueUserActivity(CSSearchableItemActionType, perform: handleSpotlight)
            }
    }
    
    func handleSpotlight(_ userActivity: NSUserActivity) {
        if let id = userActivity.userInfo?[CSSearchableItemActivityIdentifier] as? String {
            print("Found identifier \(id)")
        }
    }
}
