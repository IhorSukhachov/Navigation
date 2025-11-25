//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI

struct DetailedView: View {
    var number: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("This is number: \(number)")
            .toolbar {
                Button("Return to main page") {
                    path = NavigationPath()
                }
            }
    }
}

struct ContentView: View {
 
    @State private var path = NavigationPath()
    
   
    var body: some View {
        NavigationStack(path: $path) {
            DetailedView(number: 0, path: $path)
                .navigationDestination(for: Int.self) {i in
                    DetailedView(number: i, path: $path)
                }
        }
    }
}

#Preview {
    ContentView()
}

