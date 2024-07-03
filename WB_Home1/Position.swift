//
//  Position.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 03.07.2024.
//

import Foundation

enum Position: CaseIterable {
    case first, second, third, fours
    
    static var randomPosition: Position {
        return  Position.allCases.randomElement() ?? .first
    }
}
