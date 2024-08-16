//
//  CustomInputTextInChatView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 13.08.2024.
//

import SwiftUI
import ExyteChat
import ExyteMediaPicker

struct CustomInputTextInChatView: View {
    @EnvironmentObject var viewModel: ChatViewModel
    @Binding var message: String
    let actions: (InputViewAction) -> Void
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: CGFloat.ten) {
                Button {
                    actions(.photo)
                } label: {
                    Image("Plus")
                        .renderingMode(.template)
                        .foregroundColor(Color.black)
                        .frame(width: CGFloat.twentyFour, height: CGFloat.twentyFour)
                }
                TextField("Text", text: $message)
                    .font(.system(size: CGFloat.fourteen))
                    .frame(width: 279, height: 35)
                    .cornerRadius(CGFloat.four)
                    .background {
                        Color("wbTextField")
                    }
                    .padding(.horizontal, CGFloat.ten)
                
                    Button {
                        actions(.send)
                        viewModel.sendToUser()
                    } label: {
                        Image("sendMessage")
                            .renderingMode(.template)
                            .foregroundColor(Color.purple)
                            .frame(width: CGFloat.twentyFour, height: CGFloat.twentyFour)
                    }
            }
        }
        .padding(.bottom, CGFloat.twenty)
    }
}

struct CustomInputTextInChatView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputTextInChatView(message: .constant("Hello world"), actions: { action in
            ()
        })
            .environmentObject(ChatViewModel(isOp: true))
    }
}

