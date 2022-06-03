//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
            .lineLimit(3)
            .frame(width: 200)
        
        Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
            .lineLimit(1)
            .truncationMode(.middle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
