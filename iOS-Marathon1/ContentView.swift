//
//  ContentView.swift
//  iOS-Marathon1
//
//  Created by valeriy.zhuravlev on 02.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var numbers: [Int] = Array(1 ... 100)
    
    var body: some View {
        TabView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(numbers, id: \.self) { number in
                            Text("\(number)")
                                .font(.title)
                                .fontDesign(.monospaced)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .scrollClipDisabled()
                Color.red
                    .opacity(0.7)
                    .frame(height: 50)
            }
            .tabItem {
                Label("Fitst", systemImage: "star.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
