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
    
    mutating func appendInterpolation(spellOut date: Date, locale language: Locale) {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = language
        if let day = components.day, let month = components.month, let year = components.year {
            let yearString = formatter.string(from: NSNumber(value: year)) ?? "\(year)"
            let monthString = formatter.string(from: NSNumber(value: month)) ?? "\(month)"
            let dayString = formatter.string(from: NSNumber(value: day)) ?? "\(day)"
            let formattedDate = "\(dayString) - \(monthString) - \(yearString)."
            appendLiteral(formattedDate)
        }
    }
}

