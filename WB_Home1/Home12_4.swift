//
//  Home12_4.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 19.07.2024.
//

import UIKit

// Dictionary

var country: Dictionary = [
    "Moskow": 1000000,
    "Samara": 13000,
    "Myrom": 150530
]

func opirationWithDictionary() {
    // Добавлем значения
    var city = country["Paris"] = 100000
    var city1 = country["India"] = 100000000
    // Изменение значения по ключу
    country.updateValue(10000001, forKey: "India")
    // Удаление
    country.removeValue(forKey: "Samara")
    // Получение значения по ключу
    var city2 = country["Moskow"]
}
