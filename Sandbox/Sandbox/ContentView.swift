//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Text("You can't touch this")

            Text("Break it down!")
                .textSelection(.enabled)
        }
        
        VStack(spacing: 50) {
            Text("You can't touch this")
            Text("Break it down!")
        }
        .textSelection(.enabled)
        
        List(0..<100) { index in
            Text("Row \(index)")
        }
        .textSelection(.enabled)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
