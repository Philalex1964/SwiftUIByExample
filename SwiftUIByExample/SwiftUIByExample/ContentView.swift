//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI
 
struct ContentView: View {
//    @ScaledMetric var imageSize = 100.0
    @ScaledMetric(relativeTo: .largeTitle) var imageSize = 200.0
    
    var body: some View {
        Image(systemName: "cloud.sun.bolt.fill")
            .resizable()
            .frame(width: imageSize, height: imageSize)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

