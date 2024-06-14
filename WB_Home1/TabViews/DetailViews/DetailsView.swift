//
//  DetailsView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 10.06.2024.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.dismiss) private var dismiss
    let info: Contact
    var body: some View {
        VStack() {
            Image(info.avatar)
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top, 136)
            Text(info.name)
                .font(.custom("SF Pro Display", size: 24))
                .padding(.top, 20)
            Text("+8 800 555-35-35")
                .foregroundColor(Color(red: 173/255, green: 181/255, blue: 189/255))
                .font(.custom("SF Pro Display", size: 16))
                .padding(.top, 4)
            HStack {
                Button {
                    
                } label: {
                    Image("X")
                }
                Button {
                    
                } label: {
                    Image("Instagram")
                }
                Button {
                    
                } label: {
                    Image("Linkedln")
                }
                Button {
                    
                } label: {
                    Image("Facebook")
                }
            }
            .padding(.top, 20)
            Spacer()
                .navigationBarBackButtonHidden(true)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "arrowshape.backward")
                        Text("Профиль")
                    }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "pencil")
                })
            }
        }
    }
}
