//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Jump to #90") {
                    value.scrollTo(90)
                }
                .padding()
                
                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
        .frame(height: 350)
        
        ScrollView {
                    ScrollViewReader { value in
                        Button("Jump to #8") {
                            value.scrollTo(8, anchor: .top)
                        }
                        .padding()

                        ForEach(0..<100) { i in
                            Text("Example \(i)")
                                .font(.title)
                                .frame(width: 200, height: 200)
                                .background(colors[i % colors.count])
                                .id(i)
                        }
                    }
                }
                .frame(height: 350)
    }
}

//If you call scrollTo() inside withAnimation() the movement will be animated.
//Tip: scrollTo() works great with lists too!

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
