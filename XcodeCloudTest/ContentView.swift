//
//  ContentView.swift
//  XcodeCloudTest
//
//  Created by SB15803 on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
