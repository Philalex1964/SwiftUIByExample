//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI
 
struct ContentView: View {
    @GestureState var dragAmount = CGSize.zero

    var body: some View {
        Image("Example")
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 4)
            )
            .frame(width: 200, height: 200)
            .scaledToFit()
//            .border(.black, width: 2)
            .offset(dragAmount)
            .gesture(
                DragGesture().updating($dragAmount) { value, state, transaction in
                    state = value.translation
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

