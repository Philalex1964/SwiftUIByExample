//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tipAmount = ""
    
    var body: some View {
        VStack {
            TextField("Tip Amount ", text: $tipAmount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            Button("Submit") {
                print("Tip: \(tipAmount)")
                hideKeyboard()
            }
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
