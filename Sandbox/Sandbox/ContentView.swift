//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 50.0

    var body: some View {
        Text(Date()...Date().addingTimeInterval(600))

        VStack {
            // show just the date
            Text(Date().addingTimeInterval(600), style: .date)

            // show just the time
            Text(Date().addingTimeInterval(0), style: .time)

            // show the relative distance from now, automatically updating
            Text(Date().addingTimeInterval(600), style: .relative)

            // make a timer style, automatically updating
            Text(Date().addingTimeInterval(600), style: .timer)
        }
        
//        Text(Date())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
