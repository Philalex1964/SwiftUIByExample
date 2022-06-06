//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Image(systemName: "moon.stars.fill")

        Image(systemName: "wind.snow")
            .font(.largeTitle)
        
        Image(systemName: "cloud.heavyrain.fill")
            .font(.largeTitle)
            .foregroundColor(.red)
        
        Image(systemName: "cloud.sun.rain.fill")
            .renderingMode(.original)
            .font(.largeTitle)
            .padding()
            .background(.black)
            .clipShape(Circle())
        
        Image(systemName: "person.crop.circle.fill.badge.plus")
            .renderingMode(.original)
            .foregroundColor(.blue)
            .font(.largeTitle)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
