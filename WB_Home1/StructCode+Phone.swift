//
//  Code_Phone.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 16.07.2024.
//

import Foundation

struct Code_Phone {
    var code: String
    var phone: String
}

extension Code_Phone {
    mutating func generateSMSCode() -> String {
        let digits = "0123456789"
        for _ in 0..<4 {
            let index = Int.random(in: 0..<digits.count)
            code += String(digits[digits.index(digits.startIndex, offsetBy: index)])
        }
        return code
    }
}
