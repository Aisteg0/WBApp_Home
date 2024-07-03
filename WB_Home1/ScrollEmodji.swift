//
//  ScrollEmodji.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 02.07.2024.
//

import SwiftUI

struct ScrollEmodji: View {
    @State private var emoji = [String]()
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: [GridItem()]) {
                
                ForEach(emoji, id: \.self) { emoji in
                    ZStack {
                        ComplexLayoutCell(position: Position.randomPosition)
                        Text(emoji)
                            .font(.system(size: 175))
                            .padding()
                            .opacity(0.5)
                    }
                }
            }
            
        }
        .onAppear() {
            for _ in 0..<10000 {
                emoji.append(getRandomEmoji())
            }
        }
    }
    private func getRandomEmoji() -> String {
        let range = Emoji.all.randomElement()!
        let randomCodepoint = Int.random(in: range)
        return String(UnicodeScalar(randomCodepoint)!)
    }
}

#Preview {
    ScrollEmodji()
}
