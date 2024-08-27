//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Mykola Chaikovskyi on 27.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    @State private var useUnoptimizedRedText = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .foregroundStyle(.white)
            Button("Hello, world!") {
                print(type(of: self.body))
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
            Button("Text in question") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .white )
            if useUnoptimizedRedText {
                Button("Unoptimized text in question") {
                    useUnoptimizedRedText.toggle()
                }
                .foregroundStyle(.red)
            } else {
                Button("Unoptimized text in question") {
                    useUnoptimizedRedText.toggle()
                }
                .foregroundStyle(.white)
            }
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
