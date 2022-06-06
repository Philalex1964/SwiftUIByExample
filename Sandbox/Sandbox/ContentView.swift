//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
            Text("rocks")
        }
        
        HStack {
            Text("SwiftUI")
            Text("rocks")
        }
        
        VStack(alignment: .leading, spacing: 20) {
            Text("SwiftUI")
//            Divider()
            Text("rocks")
        }
        
        VStack {
            Spacer()
            Text("Hello World")
            Spacer()
            Spacer()
        }
        
        VStack {
            Text("First Label")
            Spacer()
//                .frame(height: 50)
                .frame(minHeight: 50, maxHeight: 500)
            Text("Second Label")
        }
        
        VStack {
            Text("First Label")
            Spacer(minLength: 50)
            Text("Second Label")
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
