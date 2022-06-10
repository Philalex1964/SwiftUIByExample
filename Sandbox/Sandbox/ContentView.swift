//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

//struct ContentView: View {
//    @State private var showGreeting = true
//
//    var body: some View {
//        VStack {
//            Toggle("Show welcome message", isOn: $showGreeting)
////                .toggleStyle(SwitchToggleStyle(tint: .red))
//                .tint(.yellow)
//
//            if showGreeting {
//                Text("Hello World!")
//            }
//        }
//    }
//}

// button style iOS15+
struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        Toggle("Filter", isOn: $isOn)
            .toggleStyle(.button)
            .tint(.mint)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
