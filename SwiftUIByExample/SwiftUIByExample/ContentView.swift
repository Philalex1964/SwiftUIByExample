//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI
 
struct ContentView: View {
    @SceneStorage("text") var text = ""

    var body: some View {
        NavigationView {
            TextEditor(text: $text)
        }
        .navigationViewStyle(.stack)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

