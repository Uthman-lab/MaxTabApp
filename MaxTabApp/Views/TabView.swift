//
//  TabView.swift
//  MaxTabApp
//
//  Created by AMALITECH-PC-593 on 6/3/24.
//

import Foundation
import SwiftUI

struct Tab1View: View {
    let  sections: [SectionData]
    var body: some View {
        ScrollView {
            ForEach(sections, id: \.self) { section in
                    CardTabView(data: section.items)
            }
        }
    }
}

#Preview {
  Tab1View(sections:  Generator.getSections()
)
}
