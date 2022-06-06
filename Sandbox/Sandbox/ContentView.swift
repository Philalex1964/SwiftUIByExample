//
//  ContentView.swift
//  Sandbox
//
//  Created by Aleksandar Filipov on 6/1/22.
//

import SwiftUI

// first option is to wrap your output in a group, so that no matter whether you send back an image or a text view they both go back in a group
//struct ContentView: View {
//    var tossResult: some View {
//        Group {
//            if Bool.random() {
//                Image("paul")
//                    .resizable()
//                    .scaledToFit()
//            } else {
//                Text("Better luck next time")
//                    .font(.title)
//            }
//        }
//        .frame(width: 400, height: 300)
//    }
//
//    var body: some View {
//        VStack {
//            Text("Coin Flip")
//                .font(.largeTitle)
//
//            tossResult
//        }
//    }
//}

// The second is to use a type-erased wrapper called AnyView that we can return:
//struct ContentView: View {
//    var tossResult: some View {
//        if Bool.random() {
//            return AnyView(Image("Example").resizable().scaledToFit())
//        } else {
//            return AnyView(Text("Better luck next time").font(.title))
//        }
//    }
//
//    var body: some View {
//        VStack {
//            Text("Coin Flip")
//                .font(.largeTitle)
//
//            tossResult
//                .frame(width: 400, height: 300)
//        }
//    }
//}

// A third option is to apply the @ViewBuilder attribute yourself to any properties that need it, like this:
//struct ContentView: View {
//    @ViewBuilder var tossResult: some View {
//        if Bool.random() {
//            Image("Example")
//                .resizable()
//                .scaledToFit()
//        } else {
//            Text("Better luck next time")
//                .font(.title)
//        }
//    }
//
//    var body: some View {
//        VStack {
//            Text("Coin Flip")
//                .font(.largeTitle)
//
//            tossResult
//                .frame(width: 400, height: 300)
//        }
//    }
//}

// The fourth solution, and the one that works best the majority of the time, is to break up your views into smaller views, then combine them together as needed:
struct TossResult: View {
    var body: some View {
        if Bool.random() {
            Image("Example")
                .resizable()
                .scaledToFit()
        } else {
            Text("Better luck next time")
                .font(.title)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)

            TossResult()
                .frame(width: 400, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
