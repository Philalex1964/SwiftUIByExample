//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct SimpleGameResult {
    let id = UUID()
    let score: Int
}

//As an alternative, if you make a struct that conforms to the Identifiable protocol you can just write ForEach(results). Conforming to this protocol means adding an id property that uniquely identifies each object, which in our case we already have. So, this code achieves the same result:
struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}

struct ContentView: View {
    let results = [
        SimpleGameResult(score: 8),
        SimpleGameResult(score: 5),
        SimpleGameResult(score: 10)
    ]
    
    let results1 = [
        IdentifiableGameResult(score: 8),
        IdentifiableGameResult(score: 5),
        IdentifiableGameResult(score: 10)
    ]
    
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach((1...10).reversed(), id: \.self) {
                Text("\($0)…")
            }
            
            Text("Ready or not, here I come!")
        }
        
        VStack {
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }
        }
        
        VStack {
            ForEach(results, id: \.id) { result in
                Text("Result: \(result.score)")
            }
        }
        
        VStack {
            ForEach(results1) { result in
                Text("Result: \(result.score)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
