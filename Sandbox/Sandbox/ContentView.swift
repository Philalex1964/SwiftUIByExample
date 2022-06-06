//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Label("Your account", systemImage: "folder.circle")
            .font(.title)
        
        Label("Welcome to the app", image: "Star")
        
        VStack {
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(.titleOnly)

            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(.iconOnly)

            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(.titleAndIcon)
        }
        
        Label {
            Text("Paul Hudson")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(Capsule())
        } icon: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
                .frame(width: 64, height: 64)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
