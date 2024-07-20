//
//  MyApp.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 20.07.2024.
//

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ItemListViewModel(dataManager: DataManager.shared))
        }
    }
}
