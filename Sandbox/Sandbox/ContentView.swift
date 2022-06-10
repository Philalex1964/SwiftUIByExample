//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0

    var body: some View {
        VStack {
            TextField("Enter your score", value: $score, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .padding()

            Text("Your score was \(score).")
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
