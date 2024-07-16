//
//  CodeView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 16.07.2024.
//

import SwiftUI

struct CodeView: View {
    @Binding var text: String
    @FocusState.Binding var isFocused: Int?
    var index: Int

    var body: some View {
        TextField("", text: $text)
            .disableAutocorrection(true)
            .tint(.black)
            .font(.largeTitle)
            .bold()
            .frame(width: 32, height: 40)
            .background(
                Circle()
                    .fill(text.isEmpty ? Color.colorForCircle : Color.white)
                    .frame(width: 24, height: 24))
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .focused($isFocused, equals: index)
            .onChange(of: text) { _, newValue in
                if newValue.count > 1 {
                    text = String(newValue.prefix(1))
                }
                if !newValue.isEmpty {
                    isFocused = index + 1
                }
            }
    }
}
