//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI



struct ContentView: View {
    @State private var path = [Int] ()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show number 32") {
                    path.append(32)
                }
            }
            .navigationDestination(for: Int.self) {selecion in
                Text("You selected \(selecion)")
            }
        }
    }
}

#Preview {
    ContentView()
}
 
