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
            Image("Example")
            Text("Hacking with Swift")
                .font(.largeTitle)
                .background(.black)
                .foregroundColor(.white)
        }
        
        ZStack(alignment: .bottomTrailing) {
            Image("paul-2")
                .resizable()
                .scaledToFit()
            Text("Hacking with Swift")
                .font(.largeTitle)
                .background(.black)
                .foregroundColor(.white)
                .offset(x: -5, y: -5)
        }
        
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
                .zIndex(1)

            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
        }
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
