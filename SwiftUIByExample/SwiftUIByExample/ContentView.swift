//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI
 
struct ContentView: View {
    @AppStorage("username") var username: String = "Anonymous"

    var body: some View {
        VStack {
            Text("Welcome, \(username)!")

            Button("Log in") {
                username = "@twostraws"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

