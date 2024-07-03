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
        RoundedRectangle(cornerRadius: Constants.cornerRadius)
            .strokeBorder(style: StrokeStyle(lineWidth: Constants.lineWidth, dash: [Constants.dashFirst, Constants.dastSecond]))
    }
    
    private var firstPosition: some View {
        HStack {
            VStack {
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
            }
            Rectangle
                .frame(width: Constants.widthForPosition, height: Constants.heightForPosition)
        }
    }
    
    private var secondPosition: some View {
        HStack {
            Rectangle
                .frame(width: Constants.widthForPosition, height: Constants.heightForPosition)
            VStack {
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
            }
        }
    }
    
    private var thirdPosition: some View {
        VStack {
            Rectangle
                .frame(width: Constants.widthForPosition, height: Constants.heightForPosition)
                .rotationEffect(.degrees(Constants.degrees))
            HStack {
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
            }
            .offset(y: -Constants.offset)
        }
    }
    
    private var foursPosition: some View {
        VStack {
            HStack {
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
                Rectangle
                    .frame(width: Constants.widthForPosition, height: Constants.widthForPosition)
            }
            .offset(y: Constants.offset)
            Rectangle
                .frame(width: Constants.widthForPosition, height: Constants.heightForPosition)
                .rotationEffect(.degrees(Constants.degrees))
        }
    }
}

#Preview {
    ComplexLayoutCell(position: Position.fours)
}

private enum Constants {
    static let widthForPosition: CGFloat = 150.0
    static let heightForPosition: CGFloat = 300.0
    static let degrees: CGFloat = 90.0
    static let offset: CGFloat = 65.0
    static let cornerRadius: CGFloat = 45.0
    static let lineWidth: CGFloat = 2.0
    static let dashFirst: CGFloat = 20.0
    static let dastSecond: CGFloat = 10.0
}
