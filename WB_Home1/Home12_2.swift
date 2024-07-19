//
//  Home12_2.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 19.07.2024.
//

import UIKit

// Собственная хеш функция

func myHastFunc(_ someStr: String) -> Int {
    var result = 0
    for i in someStr.utf8 {
        result = result & 31 + Int(i)
    }
    return result
}

// Перебираем строку someStr с помощью цикла for, преобразуем каждый символ в Int. Применяем битовый сдвиг на 5 позиций влево
