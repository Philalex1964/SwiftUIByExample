//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .inset(by: 10)
                .fill(.blue)

            Text("Hello!")
                .font(.title)
        }
        .frame(width: 200, height: 200)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
