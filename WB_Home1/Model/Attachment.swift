//
//  Attachment.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 13.08.2024.
//

import Foundation
import ExyteChat

struct MockImage {
    let id: String
    let thumbnail: URL
    let full: URL

    func toChatAttachment() -> Attachment {
        Attachment(
            id: id,
            thumbnail: thumbnail,
            full: full,
            type: .image
        )
    }
}

struct MockVideo {
    let id: String
    let thumbnail: URL
    let full: URL

    func toChatAttachment() -> Attachment {
        Attachment(
            id: id,
            thumbnail: thumbnail,
            full: full,
            type: .video
        )
    }
}

struct MockUser: Hashable, Equatable {
    var id = UUID()
    let uid: String
    var name: String = ""
    var phoneNumber: String = ""
    var lastSeenOnline: Date? = nil
    var isOnline: Bool = false
    var didStory: Bool = false
    var hasAvatar: Bool = false
    var avatar: URL? = nil
}

extension MockUser {
    var isCurrentUser: Bool {
        uid == "1"
    }
}

extension MockUser {
    func toChatUser() -> User {
        User(id: uid, name: name, avatarURL: avatar, isCurrentUser: isCurrentUser)
    }
}
