//
//  DataService.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 23.06.2024.
//

import Foundation

final class DataService {
    static let shared = DataService()
    
    
    func addCalories() {
        let data = UserDefaults.standard
        let calories = data.double(forKey: "Calories")
        data.setValue(calories + 100, forKey: "Calories")
    }
    
    func currentInt() -> Double {
        let userDefaults = UserDefaults.standard.double(forKey: "Calories")
        return userDefaults
    }
    
    func reset() {
        let data = UserDefaults.standard
        let calories = data.double(forKey: "Calories")
        data.setValue(calories * 0, forKey: "Calories")
    }
}
