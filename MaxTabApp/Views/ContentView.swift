//
//  ContentView.swift
//  MaxTabApp
//
//  Created by AMALITECH-PC-593 on 6/3/24.
//

import SwiftUI
import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            // Tab Content
            TabView(selection: $selectedTab) {
                Tab1View(sections: Generator.getSections())
                    .tabItem {
                        Label("Tab 1", systemImage: "house")
                    }
                    .tag(0)
                Tab1View(sections: Generator.getSections())
                    .tabItem {
                        Label("Tab 2", systemImage: "person")
                    }
                    .tag(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
