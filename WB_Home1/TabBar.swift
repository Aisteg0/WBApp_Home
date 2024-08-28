//
//  TabBar.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 09.06.2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        VStack {
            TabView {
                Contacts()
                    .tabItem {
                        Image(systemName: "person.2")
                    }
                Chats()
                    .tabItem {
                        Image(systemName: "message")
                    }
                Other()
                    .tabItem {
                        Image(systemName: "ellipsis")
                    }
            }
        }
    }
}

#Preview {
    TabBar()
}
