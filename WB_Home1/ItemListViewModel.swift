//
//  ItemListViewModel.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 20.07.2024.
//

import SwiftUI
import Combine

// MARK: Observer

class ItemListViewModel: ObservableObject {
    @Published var items: [String] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init(dataManager: DataManager) {
        self.items = dataManager.items
        
        dataManager.$items
            .assign(to: \.items, on: self)
            .store(in: &cancellables)
    }
}
