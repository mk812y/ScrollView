//
//  FixScrollView.swift
//  ScrollView
//
//  Created by Михаил Куприянов on 30.10.23..
//

import SwiftUI

struct FixScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<10) { item in
                    Text("Item #\(item)")
                        .font(.largeTitle)
                        .foregroundStyle(.primary)
                        .frame(width: 350, height: 600)
                        .background(.secondary)
                        .clipShape(.rect(cornerRadius: 15))
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned) //будет пролистывать в начало item
//        .scrollTargetBehavior(.paging) //прокручивает экран ровно на ширину или высоту прокрутки, взависимости от направления прокрутки - если вертикально, то будет смешать за раз на высоту экрана
    }
}

#Preview {
    FixScrollView()
}
