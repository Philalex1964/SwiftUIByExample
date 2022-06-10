//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

//struct ContentView: View {
//    @State private var name = ""
//    @FocusState private var nameIsFocused: Bool
//
//    var body: some View {
//        VStack {
//            TextField("Enter your name", text: $name)
//                .focused($nameIsFocused)
//
//            Button("Submit") {
//                nameIsFocused = false
//            }
//        }
//    }
//}

struct ContentView: View {
    enum Field {
        case firstName
        case lastName
        case emailAddress
    }

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack {
            TextField("Enter your first name", text: $firstName)
                .focused($focusedField, equals: .firstName)
                .textContentType(.givenName)
                .submitLabel(.next)
            
            if firstName.isEmpty {
                TextField("Enter your last name", text: $lastName)
                    .disabled(true)
            } else {
                TextField("Enter your last name", text: $lastName)
                    .focused($focusedField, equals: .lastName)
                    .textContentType(.familyName)
                    .submitLabel(.next)
            }

            if firstName.isEmpty || lastName.isEmpty {
                TextField("Enter your email address", text: $emailAddress)
                    .disabled(true)
            } else {
                TextField("Enter your email address", text: $emailAddress)
                    .focused($focusedField, equals: .emailAddress)
                    .textContentType(.emailAddress)
                    .submitLabel(.join)
            }
        }
        .onSubmit {
            switch focusedField {
            case .firstName:
                focusedField = .lastName
            case .lastName:
                focusedField = .emailAddress
            default:
                print("Creating account…")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
