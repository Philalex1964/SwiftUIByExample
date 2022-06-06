//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Button {
            print("Button tapped")
        } label: {
            Text("Welcome")
                .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
                .font(.largeTitle)
        }
        
        Text("Please log in")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(.red)

    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
