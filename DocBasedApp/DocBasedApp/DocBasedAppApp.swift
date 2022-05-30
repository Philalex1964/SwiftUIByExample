//
//  DocBasedAppApp.swift
//  DocBasedApp
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

@main
struct DocBasedAppApp: App {
    var body: some Scene {
            DocumentGroup(newDocument: TextFile()) { file in
                ContentView(document: file.$document)
            }
    }
}
