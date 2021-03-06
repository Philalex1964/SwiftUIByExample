//
//  ContentView.swift
//  CoreDataWithSwiftUI
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest var languages: FetchedResults<ProgrammingLanguage>

    init() {
        let request: NSFetchRequest<ProgrammingLanguage> = ProgrammingLanguage.fetchRequest()
        
//        request.predicate = NSPredicate(format: "name == %@", "Swift")
        request.sortDescriptors = [
                NSSortDescriptor(keyPath: \ProgrammingLanguage.creator, ascending: true)
        ]

        request.fetchLimit = 10
        _languages = FetchRequest(fetchRequest: request)
    }

    
    var body: some View {
        NavigationView {
            List {
                ForEach(languages) { language in
                    HStack {
                        Text(language.name ?? "Unknown")
                        Spacer()
                        Text(language.creator ?? "Unknown")
                    }
                }
                .onDelete(perform: removeLanguages)
            }
            .toolbar {
                EditButton()
            }
        }
        
        
        Button("Insert example language") {
            let language = ProgrammingLanguage(context: managedObjectContext)
            language.name = "C#"
            language.creator = "Microsoft"

            PersistenceController.shared.save()

//            use this code instead:
//            if viewContext.hasChanges {
//              do {
//                  try managedObjectContext.save()
//              } catch {
//                  // handle the Core Data error
//              }
//            }
        }
        
        
        
        
    }
    
    func removeLanguages(at offsets: IndexSet) {
        for index in offsets {
            let language = languages[index]
            managedObjectContext.delete(language)
        }
        
        PersistenceController.shared.save()
    }
}
    
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
