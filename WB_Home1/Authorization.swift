//
//  Authorization.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 09.07.2024.
//

import SwiftUI

struct Authorization: View {
    @State private var phoneNumber = ""
    @State private var countryCod = ""
    var body: some View {
        Text("Введите номер телефона")
            .font(.title)
            .bold()
            .padding(.top, 169)
        Text("Мы вышлем код подтвержения \n на указанный номер")
            .multilineTextAlignment(.center)
            .padding(.top, 8)
        HStack {
            TextField("🇷🇺 +7", text: $countryCod)
                .frame(width: 62, height: 36)
                .background(Color.Resolved(red: 247/255, green: 247/255, blue: 252/255))
                .disabled(true)
            TextField("000 000-00-00", text: $phoneNumber)
                .keyboardType(.phonePad)
                .frame(width: 262, height: 36)
                .background(Color.Resolved(red: 247/255, green: 247/255, blue: 252/255))
        }
        .padding(.top, 49)
        Button {
             
        } label: {
            Text("Продолжить")
        }

        
            Spacer()
            
    }
}

#Preview {
    Authorization()
}
