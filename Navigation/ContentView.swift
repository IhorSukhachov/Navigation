//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI



struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) {i in
                    NavigationLink("Select number \(i)", value: i)
                }
                
                ForEach(0..<5) {i in
                    NavigationLink("Select String \(i)", value: String(i))
                }
                
                
            }
            .toolbar {
                Button("Push number 556") {
                    path.append(556)
                }
                Button("Push Hello") {
                    path.append("Hello")
                }
                 
            }
            .navigationDestination(for: Int.self) {selection in
                Text("You selected number \(selection)")
            }
            .navigationDestination(for: String.self) {selection in
                Text("You selected string \(selection)")
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}

