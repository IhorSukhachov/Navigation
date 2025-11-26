//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationStack {
            List(0..<100) {i in
                Text("This is row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue, for: .navigationBar)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden)
        }
    }
    
}

#Preview {
    ContentView()
}

