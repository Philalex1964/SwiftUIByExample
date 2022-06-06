//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 200, height: 200)
        
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
        
        RoundedRectangle(cornerRadius: 25)
            .fill(.green)
            .frame(width: 150, height: 100)
        
        Capsule()
            .fill(.green)
            .frame(width: 150, height: 100)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
