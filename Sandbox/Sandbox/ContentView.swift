//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button ("Action") {
            let smallTriangle = Triangle(size: 3)
            print(smallTriangle.draw())
        }
        
        Button ("Action1") {
            let smallTriangle = Triangle(size: 3)
            let flippedTriangle = FlippedShape(shape: smallTriangle)
            print(flippedTriangle.draw())
        }
        
        Button ("Action2") {
            let smallTriangle = Triangle(size: 3)
            let flippedTriangle = FlippedShape(shape: smallTriangle)
            let joinedTriangles = JoinedShape(top: smallTriangle, bottom: flippedTriangle)
            print(joinedTriangles.draw())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
