//
//  Contacts.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 09.06.2024.
//

import SwiftUI

struct Contacts: View {
    let contacts = [
        Contact(name: "Анастасия Иванова", lastSeen: "Last seen yesterday", avatar: "Nastya"),
        Contact(name: "Петя", lastSeen: "Online", avatar: "Petya"),
        Contact(name: "Маман", lastSeen: "Last seen 3 hours ago", avatar: "Maman"),
        Contact(name: "Арбуз Дыня ", lastSeen: "Online", avatar: "Waterlemon"),
        Contact(name: "Иван Иванов", lastSeen: "Online", avatar: "IvanIvanov"),
        Contact(name: "Лиса Алиса", lastSeen: "Last seen 30 minutes ago", avatar: "LisaAlisa")
    ]
    var body: some View {
        NavigationView {
            VStack {
                CustomNavBar()
                Spacer()
                List(contacts) { contact in
                    HStack() {
                        Image(contact.avatar)
                                        .frame(width: 56, height: 56)
                        VStack {
                            Text(contact.name)
                                .font(.custom("SemiBold", size: 14))
                                .foregroundColor(Color(red: 41/255, green: 24/255, blue: 59/255))
                            Text(contact.lastSeen)
                                .font(.custom("Regular", size: 12))
                                .foregroundColor(Color(red: 173/255, green: 181/255, blue: 189/255))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Contacts()
}
