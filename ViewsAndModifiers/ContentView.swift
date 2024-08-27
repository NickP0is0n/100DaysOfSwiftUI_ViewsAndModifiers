//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Mykola Chaikovskyi on 27.08.2024.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20 ))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    @State private var useRedText = false
    @State private var useUnoptimizedRedText = false
    
    let motto1 = Text("Estuans interius")
    let motto2 = Text("Ira vehementi")
    
    var motto3: some View {
        VStack {
            Text("Estuans interius, Ira vehementi")
            Text("Sepiroth")
        }
    }
    
    @ViewBuilder var motto4: some View {
        Text("Estuans interius, Ira vehementi")
        Text("Sepiroth")
    }
    
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
            .frame(width: 100, height: 100)
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
            VStack {
                Text("Alpha")
                Text("Beta")
                Text("RC")
                Text("Release")
            }
            .font(.headline)
            VStack {
                Text("Focus")
                    .blur(radius: 0)
                Text("Please")
            }
            .blur(radius: 5)
            Group {
                motto1
                    .font(.subheadline.bold())
                motto2
                    .font(.subheadline.bold())
                motto3
                motto4
                CapsuleText(text: "I am")
                    .foregroundStyle(.white)
                CapsuleText(text: "Here!")
                    .foregroundStyle(.yellow)
            }
            Text("I am custom title.")
                .titleStyle()
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
