//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Swift UI"
    
    var body: some View {
        NavigationStack {
            Text("some text")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

