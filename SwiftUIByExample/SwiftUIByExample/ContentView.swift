//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI

struct AddView: View {
    @Binding var isPresented: Bool

    var body: some View {
        Button("Dismiss") {
            isPresented = false
        }
    }
}

struct ContentView: View {
    @State private var showingAddUser = false

    var body: some View {
        VStack {
            Text("Hello World")
            Button("Toggle") {
                showingAddUser.toggle()
            }
        }
        .sheet(isPresented: $showingAddUser) {
            AddView(isPresented: $showingAddUser)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
