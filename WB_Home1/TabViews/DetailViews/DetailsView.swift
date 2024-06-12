//
//  DetailsView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 10.06.2024.
//

import SwiftUI

struct DetailsView: View {
    let info: Contact
    var body: some View {
        VStack() {
            Image(info.avatar)
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
                
                Text(info.name)
            Text("8 800 555-35-35")
        }
    }
}

#Preview {
    DetailsView(info: Contact(name: "Анастасия Сидорова", lastSeen: "Вчера", avatar: "Nastya"))
}
