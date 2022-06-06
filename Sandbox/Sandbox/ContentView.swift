//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Using")
            Text("SwiftUI")
                .padding()
            Text("rocks")
        }
        
        VStack {
            Text("Using")
            Text("SwiftUI")
                .padding(.bottom)
            Text("rocks")
        }
        
        VStack {
            Text("Using")
            Text("SwiftUI")
                .padding(.bottom, 100)
            Text("rocks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
