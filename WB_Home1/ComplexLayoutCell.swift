//
//  ComplexLayoutCell.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 02.07.2024.
//

import SwiftUI

struct ComplexLayoutCell: View {
    var body: some View {
        ZStack {
            HStack {
                VStack() {
                    RoundedRectangle(cornerRadius: 45)
                        .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [20,10]))
                        .frame(width: 200, height: 100)
                    RoundedRectangle(cornerRadius: 45)
                        .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [20,10]))
                        .frame(width: 200, height: 100)
                }
                .offset(x: 30)
                RoundedRectangle(cornerRadius: 35)
                    .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [20,10]))
                    .frame(width: 215, height: 100)
                    .rotationEffect(.degrees(90))
            }
        }
    }
    
    private func first() {
        
    }
    
    private func second() {
        
    }
    
    private func third() {
        
    }
    
    private func fours() {
        
    }
}

#Preview {
    ComplexLayoutCell()
}
