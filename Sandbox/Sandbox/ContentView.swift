//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Image("dog")

//        Image(uiImage: UIImage(named: "cat")!)

        Image(systemName: "cloud.heavyrain.fill")
            .font(.largeTitle)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
