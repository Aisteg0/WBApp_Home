//
//  TabBarItem.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 09.06.2024.
//

import SwiftUI

struct TabBarItem: View {
    let imageName: String
    //    let text: String
    let isSelected: Bool
    var body: some View {
        VStack {
            Image(systemName: imageName)
            //            Text(text)
            Circle()
                .foregroundColor(isSelected ? .blue : .clear)
                .frame(width: 8, height: 8)
                .offset(y: 4)
        }
        
    }
}

#Preview {
    TabBarItem(imageName: "person.2", isSelected: true)
}
