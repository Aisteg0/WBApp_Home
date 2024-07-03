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
                            .font(.system(size: Constants.size))
                            .padding()
                            .opacity(Constants.opacite)
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

private enum Constants {
    static let size: CGFloat = 175.0
    static let opacite: CGFloat = 0.5
}
