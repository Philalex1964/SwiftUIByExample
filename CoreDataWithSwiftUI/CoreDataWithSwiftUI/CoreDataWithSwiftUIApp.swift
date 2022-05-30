//
//  CoreDataWithSwiftUIApp.swift
//  CoreDataWithSwiftUI
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

@main
struct CoreDataWithSwiftUIApp: App {
    @Environment(\.scenePhase) var scenePhase

    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
