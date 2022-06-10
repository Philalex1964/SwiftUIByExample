//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        Button {
            print("Button tapped!")
        } label: {
            Image("paul")
        }
        
        VStack {
            Button {
                showDetails.toggle()
            } label: {
                Text("Press Me")
                    .padding(20)
            }
            .contentShape(Rectangle())
            
            if showDetails {
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
            
            Button("Delete", role: .destructive) {
                print("Perform delete")
            }
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
