//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.redactionReasons) var redactionReasons
    
    let bio = "The rain in Spain falls mainly on the Spaniards"

    var body: some View {
        Text("This is placeholder text")
            .font(.title)
            .redacted(reason: .placeholder)

        VStack {
            Text("This is placeholder text")
            Text("And so is this")
        }
        .font(.title)
        .redacted(reason: .placeholder)
        
        if redactionReasons == .placeholder {
            Text("Loading…")
        } else {
            Text(bio)
                .redacted(reason: redactionReasons)
        }
            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
