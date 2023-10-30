//
//  ClipScrollView.swift
//  ScrollView
//
//  Created by Михаил Куприянов on 30.10.23..
//

import SwiftUI

struct ClipScrollView: View {
    var body: some View {
        VStack {
            Text("Top border")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.secondary)
                .foregroundStyle(.primary)
            ScrollView {
                ForEach(1..<11) { item in
                    Text("Item #\(item)")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .background(.selection)
                        .foregroundStyle(.primary)
                }
            }
//            .scrollClipDisabled() item при скроле будут перекрывать верхний бордер и просвечивать нижний
//            .scrollPosition(initialAnchor: .bottom) - не работает
//            .contentMargins(50, for: .scrollContent) - отступ для контента
//            .contentMargins(50, for: .scrollIndicators) - отступ для индикатора
            .contentMargins(.leading, 20, for: .automatic) //слева 20
            Text("Bottom border")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.secondary)
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    ClipScrollView()
}
