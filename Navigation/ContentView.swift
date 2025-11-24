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
                NavigationLink("Secelt \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ContentView()
}
 
