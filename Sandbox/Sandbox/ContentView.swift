//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul.png"))

        AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul100.png"))

        AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul-2.png")) { image in
            image.resizable()
        } placeholder: {
            Color.red
        }
        .frame(width: 128, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 25))

        AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul@2x.png"), scale: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
