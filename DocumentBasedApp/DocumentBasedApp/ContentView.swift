//
//  ContentView.swift
//  DocumentBasedApp
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: TextFile

        var body: some View {
            TextEditor(text: $document.text)
        }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
