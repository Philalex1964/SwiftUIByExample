//
//  ContentView.swift
//  SwiftUIByExample1
//
//  Created by Aleksandar Filipov on 5/27/22.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [String]()
}

struct ContentView: View {
    @EnvironmentObject var order: Order
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    @Environment(\.accessibilityEnabled) var accessibilityEnabled
    
    var body: some View {
        
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
