//
//  Messages.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 13.08.2024.
//

import Foundation
import ExyteChat

struct UserMessage {
    let uid: String
    let sender: MockUser
    let createdAt: Date
    var status: Message.Status?

    let text: String
    let images: [MockImage]
    let videos: [MockVideo]
    let recording: Recording?
    let replyMessage: ReplyMessage?
}

extension UserMessage {
    func toChatMessage() -> Message {
        Message(
            id: uid,
            user: sender.toChatUser(),
            status: status,
            createdAt: createdAt,
            text: text,
            attachments: images.map { $0.toChatAttachment() } + videos.map { $0.toChatAttachment() },
            recording: recording,
            replyMessage: replyMessage
        )
    }
}
