//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Mykola Chaikovskyi on 27.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .foregroundStyle(.white)
            Button("Hello, world!") {
                // Do nothing
            }
            .frame(width: 200, height: 200)
            .background(.red)
            Text("I have many mods!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.yellow)
                .padding()
                .background(.green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
