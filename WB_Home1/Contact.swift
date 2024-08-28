//
//  Contact.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 10.06.2024.
//

import SwiftUI

struct Contact {
    let id = UUID()
    let name: String
    let lastSeen: String
    let avatar: String
}

extension Contact: Hashable, Identifiable {
    
}
