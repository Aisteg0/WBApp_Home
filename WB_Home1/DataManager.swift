//
//  DataManager.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 20.07.2024.
//

import SwiftUI

// MARK: Singleton

class DataManager: ObservableObject, Item {
    static let shared = DataManager()
 
    @Published private(set) var items: [String] = []
    
    private init() {}
    
    func addItem(_ item: String) {
        items.append(item)
    }
    
    func removeItem(at index: Int) {
        if index < items.count {
            items.remove(at: index)
        }
    }
}

protocol Item {
    func addItem(_ item: String)
    func removeItem(at index: Int)
}
