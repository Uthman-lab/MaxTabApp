//
//  Card.swift
//  MaxTabApp
//
//  Created by AMALITECH-PC-593 on 6/3/24.
//

import Foundation
import SwiftUI

struct CardTabView: View, Identifiable {
    var id = UUID()
    let data: [CardData]
    @State private var size : CardSize = .small
    
    var body: some View {
        TabView {
            ForEach(data, id: \.self) { detail in
                Card(detail: detail)
                    .onAppear{
                        if size != detail.size {
                            size = detail.size
                        }
                    }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .frame(height: size.rawValue)
        
        
    }
}

private struct Card: View {
    let detail: CardData
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(hue: Double.random(in: 0...1), saturation: Double.random(in: 0...1), brightness: Double.random(in: 0...1)))
            Text(detail.lable)
                .foregroundColor(.white)
                .font(.headline)
                .padding() // Add padding inside the card
        }
        .padding(.horizontal)
    }
}

#Preview {
    CardTabView(data: [CardData(lable: "hello ", size: .large)])
}
