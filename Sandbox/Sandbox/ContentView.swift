//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "example", withExtension: "mov")!))
            .frame(height: 400)
        
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!))
            .frame(height: 400)
        
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .foregroundColor(.black)
                    .background(.white.opacity(0.7))
                Spacer()
            }
            .frame(width: 400, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
