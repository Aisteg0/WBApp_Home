//
//  ComplexLayoutCell.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 02.07.2024.
//

import SwiftUI

struct ComplexLayoutCell: View {
    var position: Position
    
    var body: some View {
        ZStack {
            switch position {
            case .first:
                firstPosition
            case .second:
                secondPosition
            case .third:
                thirdPosition
            case .fours:
                foursPosition
            }
        }
    }
    
    private var Rectangle: some View {
        RoundedRectangle(cornerRadius: 45)
            .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [20,10]))
    }
    
    private var firstPosition: some View {
        HStack {
            VStack {
                Rectangle
                    .frame(width: 150, height: 150)
                Rectangle
                    .frame(width: 150, height: 150)
            }
            Rectangle
                .frame(width: 150, height: 300)
        }
    }
    
    private var secondPosition: some View {
        HStack {
            Rectangle
                .frame(width: 150, height: 300)
            VStack {
                Rectangle
                    .frame(width: 150, height: 150)
                Rectangle
                    .frame(width: 150, height: 150)
            }
        }
    }
    
    private var thirdPosition: some View {
        VStack {
            Rectangle
                .frame(width: 150, height: 300)
                .rotationEffect(.degrees(90))
            HStack {
                Rectangle
                    .frame(width: 150, height: 150)
                Rectangle
                    .frame(width: 150, height: 150)
            }
            .offset(y: -65)
        }
    }
    
    private var foursPosition: some View {
        VStack {
            HStack {
                Rectangle
                    .frame(width: 150, height: 150)
                Rectangle
                    .frame(width: 150, height: 150)
            }
            .offset(y: 65)
            Rectangle
                .frame(width: 150, height: 300)
                .rotationEffect(.degrees(90))
        }
    }
}

#Preview {
    ComplexLayoutCell(position: Position.fours)
}
