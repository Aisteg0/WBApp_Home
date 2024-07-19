//
//  Home12_3.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 19.07.2024.
//

import UIKit

// Создание set

var number: Set = [1,2,3,4,5,6]
var secondSet: Set = [2,4,6,8,10]

func operationWithSet() {
    // Добавление уникального значения и не уникального
    number.insert(7)
    number.insert(6)
    // Удаление
    number.remove(2)
    // Проверка на наличие в множестве
    number.contains(3)
    // Пересечение
    number.intersection(secondSet)
    // Обьединение
    number.union(secondSet)
    // Разность множеств
    number.subtracting(secondSet)
}


