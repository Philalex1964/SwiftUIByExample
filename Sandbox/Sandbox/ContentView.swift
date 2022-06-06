//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Hacking with Swift")
            .font(.system(size: 48))
            .padding(50)
            .background(
                Image("Example")
                    .resizable()
            )
        
        Text("Hacking with Swift")
            .font(.largeTitle)
            .padding()
            .background(Circle()
                .fill(.red)
                .frame(width: 50, height: 50))

        Text("Hacking with Swift")
            .font(.largeTitle)
            .padding()
            .background(
                Circle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
            )
            .clipped()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
