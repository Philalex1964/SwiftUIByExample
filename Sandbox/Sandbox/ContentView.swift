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
        
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
            .font(.largeTitle)
            .frame(width: 300)
        
        Text("The best laid plans")
            .foregroundColor(.red)
        
        Text("The best laid plans")
            .padding()
            .background(.yellow)
            .foregroundColor(.white)
            .font(.headline)
        
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
            .font(.largeTitle)
            .lineSpacing(50)
            .frame(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
