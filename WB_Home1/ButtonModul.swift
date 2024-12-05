//
//  ButtonModul.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 25.07.2024.
//

import SwiftUI
import UISystem

struct ButtonModul: View {
    @State private var count: Int = 0
    var body: some View {
        Text("\(count)")
        SaveButtonView(title: "asd") {
            count += 1
        }
    }
}

#Preview {
    ButtonModul()
}
