//
//  CustomNavBar.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 10.06.2024.
//

import SwiftUI

struct CustomNavBar: View {
    var body: some View {
        HStack {
            Text("Контакты")
                .foregroundColor(Color(red: 41/255, green: 24/255, blue: 59/255))
                .font(.custom("SF Pro Display", size: 18))
                .padding()
            Spacer()
            Button(action: {
                
            })  {
                Image(systemName: "plus")
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color(red: 41/255, green: 24/255, blue: 59/255))
            }
            .padding()
            
            
        }
    }
}

#Preview {
    CustomNavBar()
}
