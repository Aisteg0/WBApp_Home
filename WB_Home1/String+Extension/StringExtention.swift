//
//  StringExtention.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 25.06.2024.
//

import Foundation

extension String.StringInterpolation {
    mutating func appendInterpolation(dateFormat value: Date, locale language: Locale, using style: DateFormatter.Style) {
        let formatter = DateFormatter()
        formatter.dateStyle = style
        
        formatter.locale = language
        let dateString = formatter.string(from: value)
        appendLiteral(dateString)
    }
    
    mutating func appendInterpolation(spellOut: Date, locale language: Locale) {
        
    }
}

