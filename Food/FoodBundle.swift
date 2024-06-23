//
//  FoodBundle.swift
//  Food
//
//  Created by Михаил Ганин on 23.06.2024.
//

import WidgetKit
import SwiftUI

@main
struct FoodBundle: WidgetBundle {
    var body: some Widget {
        Food()
        FoodLiveActivity()
    }
}
