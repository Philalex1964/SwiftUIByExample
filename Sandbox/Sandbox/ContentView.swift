//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        VStack {
            Text("Card number")
                .font(.headline)
            
            Text("1234 5678 9012 3456")
                .privacySensitive()
                .redacted(reason: .privacy)
        }
        
        VStack {
            Text("Card number")
                .font(.headline)
            
            if redactionReasons.contains(.privacy) {
                Text("[HIDDEN]")
            } else {
                Text("1234 5678 9012 3456")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
