//
//  ContentView.swift
//  ScrollView
//
//  Created by Михаил Куприянов on 30.10.23..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<11) { item in
                    Text("Item #\(item)")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 500)
                        .background(.green)
                        .clipShape(.rect(cornerRadius: 15))
                        .scrollTransition(.animated.threshold(.visible(0.9))) { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.3) //если item полностью на экране то opacity = 1
                                .scaleEffect(phase.isIdentity ? 1 : 0.8) //уменьшит размер item аналогично opacity
//                                .scaleEffect(phase == .bottomTrailing ? 1 : 0.8)
                                .hueRotation(.degrees(45 * phase.value))
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
