//
//  ContentView.swift
//  DocBasedApp
//
//  Created by Aleksandar Filipov on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: TextFile
    
    @State private var showingExporter = true

    

        var body: some View {
            TextEditor(text: $document.text)
                .fileExporter(isPresented: $showingExporter, document: document, contentType: .plainText) { result in
                    switch result {
                    case .success(let url):
                        print("Saved to \(url)")
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
        }
        
}

//struct ContentView_Previews: PreviewProvider {
//    @Binding var document: TextFile
//
//    static var previews: some View {
//        ContentView()
//    }
//}
