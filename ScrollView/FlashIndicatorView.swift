//
//  FlashIndicatorView.swift
//  ScrollView
//
//  Created by Михаил Куприянов on 30.10.23..
//

import SwiftUI

struct FlashIndicatorView: View {
    @State private var indicatorState = false
    
    var body: some View {
        VStack {
            Button("Flash indicator") { //при нажатии будет мигать индикатор
                indicatorState.toggle()
            }
            .buttonStyle(.borderedProminent)
            ScrollView {
                ForEach(0..<11) { item in
                    Text("Item #\(item)")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .background(.yellow)
                        .foregroundStyle(.primary)
                }
            }
            .scrollIndicatorsFlash(trigger: indicatorState)//при нажатии будет мигать индикатор
            .scrollIndicatorsFlash(onAppear: true)//при загрузке экрана мигнет и покажет индикатор прокрутки, тем самым уведомит клиента о возможности скролинга на этом экране
        }
    }
}

#Preview {
    FlashIndicatorView()
}
