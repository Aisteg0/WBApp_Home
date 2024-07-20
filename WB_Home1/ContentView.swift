//
//  ContentView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 08.06.2024.
//

import SwiftUI

// MARK: Dependency Injection

struct ContentView: View {
    @ObservedObject var viewModel: ItemListViewModel
    
    @State private var newItem: String = ""
    
    var body: some View {
        VStack {
            TextField("Введите новый элемент", text: $newItem)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Добавить") {
                DataManager.shared.addItem(newItem)
                newItem = ""
            }
            .padding()
            
            List {
                ForEach(viewModel.items.indices, id: \.self) { index in
                    Text(viewModel.items[index])
                        .onTapGesture {
                            DataManager.shared.removeItem(at: index)
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ItemListViewModel(dataManager: DataManager.shared))
}
