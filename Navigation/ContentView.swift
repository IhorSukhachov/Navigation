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
            Text("some text")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("tap me") {
                            //
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ContentView()
}

