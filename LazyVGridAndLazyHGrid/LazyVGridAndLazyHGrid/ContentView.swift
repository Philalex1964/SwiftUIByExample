//
//  ContentView.swift
//  LazyVGridAndLazyHGrid
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

// 1. LazyVGrid
//struct ContentView: View {
//    let data = (1...100).map { "Item \($0)" }
//
//    let columns = [
//        GridItem(.adaptive(minimum: 80))
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(data, id: \.self) { item in
//                    Text(item)
//                }
//            }
//            .padding(.horizontal)
//        }
////        .frame(maxHeight: 300)
//    }
//}

// 2.
//struct ContentView: View {
//    let data = (1...100).map { "Item \($0)" }
//
//    let columns = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(data, id: \.self) { item in
//                    Text(item)
//                }
//            }
//            .padding(.horizontal)
//        }
//        .frame(maxHeight: 300)
//    }
//}

// 3.
//struct ContentView: View {
//    let data = (1...100).map { "Item \($0)" }
//
//    let columns = [
//        GridItem(.fixed(100)),
//        GridItem(.flexible()),
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(data, id: \.self) { item in
//                    Text(item)
//                }
//            }
//            .padding(.horizontal)
//        }
//        .frame(maxHeight: 300)
//    }
//}

// 4. LazyHGrid
//struct ContentView: View {
//    let items = 1...50
//
//    let rows = [
//        GridItem(.fixed(50)),
//        GridItem(.fixed(50)),
//        GridItem(.fixed(50))
//    ]
//
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: rows, alignment: .center) {
//                ForEach(items, id: \.self) { item in
//                    Image(systemName: "\(item).circle.fill")
//                        .font(.largeTitle)
//                }
//            }
//            .frame(height: 150)
//        }
//    }
//}

// 5. VStack and HStack
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

// An example view putting GridStack into practice.
struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
