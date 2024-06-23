//
//  Intents.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 23.06.2024.
//

import AppIntents

final class Intents: AppIntent {
    static var title: LocalizedStringResource = "Сколько калорий за день съел"
    
    func perform() async throws -> some IntentResult {
        DataService.shared.addCalories()
        return .result()
    }
}

final class IntentForReset: AppIntent {
    static var title: LocalizedStringResource = "Обновить значение"
    
    func perform() async throws -> some IntentResult {
        DataService.shared.reset()
        return .result()
    }
}
