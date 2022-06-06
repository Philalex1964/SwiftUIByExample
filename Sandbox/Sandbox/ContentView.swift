//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI


//struct ContentView: View {
//
//    var body: some View {
//        Circle()
//            .trim(from: 0, to: 0.5)
//            .frame(width: 200, height: 200)
////            .rotationEffect(.degrees(180))
//    }
//}

struct ContentView: View {
    @State private var completionAmount = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Circle()
            .trim(from: 0, to: completionAmount)
//            .fill(.blue)
            .stroke(.red, lineWidth: 20)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                withAnimation {
                    if completionAmount == 1 {
                        completionAmount = 0
                    } else {
                        completionAmount += 0.25
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
