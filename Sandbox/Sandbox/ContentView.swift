//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(.quaternary)
        
        HStack {
            Image(systemName: "clock.fill")
            Text("Set the time")
        }
        .font(.largeTitle.bold())
        .foregroundStyle(
            .linearGradient(
                colors: [.red, .black],
                startPoint: .top,
                endPoint: .bottom
            )
        )

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
