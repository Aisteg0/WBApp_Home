//
//  ButtonModul.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 25.07.2024.
//

import SwiftUI
import MyCustomButton

struct ButtonModul: View {
    @State private var count: Int = 0
    var body: some View {
        MyCustomButton(title: "Нажми на меня") {
             count += 1
        }
        .padding()
        Text("\(count)")
    }
}

#Preview {
    ButtonModul()
}
