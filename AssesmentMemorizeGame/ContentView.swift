//
//  ContentView.swift
//  AssesmentMemorizeGame
//
//  Created by Raitis ZE on 24/05/2024.
//

import SwiftUI

struct ContentView: View {
    // 3 Sets of emoji themes
    let emojisTripUSA = ["🗽", "🏒", "🥅", "🇺🇸", "🏙️", "✈️", "🌎", "🛂", "💵", "🚨", "🤩", "🤯"]
    let emojisMusic = ["🥁", "🎺", "🎵", "🎶", "🎹", "🎷", "🪗", "🎤", "🎸", "📀", "🥁", "🎧"]
    let emojisSports = ["⚽️", "⚾️", "🏀", "🏈", "🥊", "🎾", "🏓", "🥌", "⛸️", "🏂", "🏅", "🥇"]
    @State var cardCount = 4

    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.title)
            
            VStack {
                ScrollView {
                    cards
                }
                
            }
            Spacer()
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojisMusic[index])
            }
        }
    }
    
    
    
    
}

#Preview {
    ContentView()
}

//Cards Sub-View
struct CardView: View {
    let content: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .strokeBorder(lineWidth: 5)
            Text(content)
                .font(.largeTitle)
        }
        
    }
}
