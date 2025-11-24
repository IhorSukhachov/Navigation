//
//  ContentView.swift
//  Navigation
//
//  Created by Ihor Sukhachov on 24.11.2025.
//

import SwiftUI

struct DetailedView: View {
    var number: Int
    var body: some View {
        Text("My lucky number is \(number)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(1..<100) { number in
            NavigationLink("Click") {
                
                    DetailedView(number: number)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
 
