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
    @State var path = [Contact]()
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                SearchBar()
                    .padding(16)
                List(contacts) { contact in
                    Button(action: {
                        self.path.append(contact)
                    }) {
                        HStack() {
                            Image(contact.avatar)
                                .frame(width: 56, height: 56)
                            VStack(alignment: .leading, spacing: 2) {
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
                .navigationDestination(for: Contact.self) { contact in
                    DetailsView(info: contact)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(16)
            .listStyle(.inset)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Контакты")
                        .foregroundColor(Color(red: 41/255, green: 24/255, blue: 59/255))
                        .font(.custom("SF Pro Display", size: 18))
                        .padding(.horizontal)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    },
                           label: {
                        Image(systemName: "plus")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color(red: 41/255, green: 24/255, blue: 59/255))
                            .padding(.horizontal)
                    })
                }
            }
        }
    }
}


#Preview {
    Contacts()
}
