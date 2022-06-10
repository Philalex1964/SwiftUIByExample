//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Tim"

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
