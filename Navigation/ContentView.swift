//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI
@Observable
class PathStore {
    var path: [Int] {
        didSet {
            save()
        }
    }
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
                path = decoded
                return
            }
        }
        path = []
    }
}

struct DetailedView: View {
    var number: Int
    @Binding var path: [Int]
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("This is number: \(number)")
            .toolbar {
                Button("Return to main page") {
                    path.removeAll()
                }
            }
    }
}

struct ContentView: View {
 
    @State private var path = [Int]()
    
   
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

