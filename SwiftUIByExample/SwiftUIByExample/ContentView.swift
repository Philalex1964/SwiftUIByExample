//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI

// one textField
//struct ContentView: View {
//    @FocusState private var isUsernameFocused: Bool
//    @State private var username = "Anonymous"
//
//    var body: some View {
//        VStack {
//            TextField("Enter your username", text: $username)
//                .focused($isUsernameFocused)
//                .frame(width: 200, height: 42, alignment: .center)
//
//            Button("Toggle Focus") {
//                isUsernameFocused.toggle()
//                print(isUsernameFocused)
//            }
//        }
//    }
//}
 
struct ContentView: View {
    enum FocusedField {
        case username, password
    }

    @FocusState private var focusedField: FocusedField?
    @State private var username = "Anonymous"
    @State private var password = "sekrit"

    var body: some View {
        VStack {
            TextField("Enter your username", text: $username)
                .focused($focusedField, equals: .username)
            focused(f)

            SecureField("Enter your password", text: $password)
                .focused($focusedField, equals: .password)
        }
        .onSubmit {
            if focusedField == .username {
                focusedField = .password
            } else {
                focusedField = nil
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

