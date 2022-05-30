//
//  CoreDataWithSwiftUIApp.swift
//  CoreDataWithSwiftUI
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

@main
struct CoreDataWithSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
