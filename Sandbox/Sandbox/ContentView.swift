//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var ingredients = [String]()
    @State private var rolls = [Int]()
    
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    
//    static let taskDateFormat: DateFormatter = {
//            let formatter = DateFormatter()
//            formatter.dateStyle = .long
//            return formatter
//        }()

    let dueDate = Date()
    
    var body: some View {
        VStack {
            Text(ingredients, format: .list(type: .and))
            
            Button("Add Ingredient") {
                let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                
                if let newIngredient = possibles.randomElement() {
                    ingredients.append(newIngredient)
                }
            }
        }
        
        VStack {
            Text(rolls, format: .list(memberStyle: .number, type: .and))
            
            Button("Roll Dice") {
                let result = Int.random(in: 1...6)
                rolls.append(result)
            }
        }
        
        Text(length, format: .measurement(width: .wide))
        
        Text(72.3, format: .currency(code: "CAD"))
        
//        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
        Text("Task due date: \(dueDate, format: .dateTime)")

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
