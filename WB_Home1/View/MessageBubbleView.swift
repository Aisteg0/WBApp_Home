//
//  MessageBubbleView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 13.08.2024.
//

import SwiftUI
import ExyteChat

struct MessageBubbleView: View {
    @Environment(\.locale) var locale
    @State private var statusStruct = Status()
    var isOP: Bool
    var message: Message
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    isOP ? Spacer() : nil
                    VStack(alignment: .leading) {
                        Text(message.text)
                            .padding(.all, CGFloat.ten)
                            .font(.system(size: CGFloat.fourteen))
                            .foregroundStyle(isOP ? .white : .black)
                        
                        TimeAndStatusView(message: message, isOP: isOP, statusStruct: statusStruct)
                    }
                    .background(isOP
                                ? Color.backgroundBuble
                                : Color.bubleLeft                    )
                    .clipShape(MessageBubbleShape(direction: isOP ? .right : .left))
                    isOP ? nil : Spacer()
                }
            }
        }
        .padding((isOP ? .leading : .trailing), 90.0)
        .padding(.vertical, 5)
    }
}

struct Status {
    func getStatus(status: Message.Status?) -> String {
        switch status {
        case .sending:
            return "Отправляется"
        case .sent:
            return "Отправлено"
        case .read:
            return "Прочитано"
        case .error(let error):
            return error.text.localizedLowercase
        case .none:
            return ""
        }
    }
}

struct MessageBubbleView_Previews: PreviewProvider {
    static private var shortMessage = "Hi, buddy!"
    static private var longMessage = "Hello hello hello hello hello hello hello hello hello hello hello hello hello\n hello hello hello hello d d d d d d d d"

    static private var message = Message(
        id: UUID().uuidString,
        user: User(id: UUID().uuidString, name: "Stan", avatarURL: nil, isCurrentUser: false),
        status: .read,
        text: shortMessage,
        attachments: []
    )
    static var previews: some View {
        MessageBubbleView(isOP: true, message: message)
            .frame(width: 200, height: 100)
    }
}
