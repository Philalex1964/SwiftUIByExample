//
//  DocumentBasedAppApp.swift
//  DocumentBasedApp
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

@main
struct DocumentBasedAppApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            ContentView(document: file.$document)
        }
    }
}
