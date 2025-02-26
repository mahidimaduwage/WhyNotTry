//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Mahidi Maduwage on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    var data = ["Archery", "Baseball", "Basketball", "Bowling", "Rugby"]
    var colors: [Color] = [.blue, .red, .green, .pink, .orange]
    
    @State var selected = "Archery"
    
    var body: some View {
        VStack {
            Text("Why Not Try !!!!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Circle()
                .fill(colors.randomElement() ?? .black)
                .overlay {
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                }
            
            Text("\(selected)")
                .font(.title)
            
            Button("Try Again") {
                selected = data.randomElement() ?? "Not Found"
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
