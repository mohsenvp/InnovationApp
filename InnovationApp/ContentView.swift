//
//  ContentView.swift
//  InnovationApp
//
//  Created by Mohsen on 02/11/2023.
//

import SwiftUI
import LearningZonePackage

struct ContentView: View {
    init() {
        SDK.doSomeWork()
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
