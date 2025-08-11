//
//  ContentView.swift
//  XcodeCloudTest
//
//  Created by SB15803 on 7/8/25.
//

import SwiftUI


struct ContentView: View {
    @State private var inputText: String = ""
    
    static func filterInteger(_ newValue: String) -> String {
        // Cho phép rỗng
        if newValue.isEmpty { return "" }
        // Chỉ giữ số
        let filtered = newValue.filter { $0.isNumber }
        return filtered
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Nhập số nguyên")
                .font(.title)
            
            TextField("Chỉ nhập số ...", text: $inputText)
                .keyboardType(.numberPad)
                .onChange(of: inputText) { newValue in
                    let filtered = ContentView.filterInteger(newValue)
                    if filtered != newValue {
                        inputText = filtered
                    }
                    print("Giá trị nhập: \(inputText)")
                }
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Bạn đã nhập: \(inputText)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
