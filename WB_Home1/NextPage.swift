//
//  NextPage.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 08.06.2024.
//

import SwiftUI

struct NextPage: View {
    @Binding var showModel: Bool
    var body: some View {
        Button("Dissmis", role: .cancel) {
            showModel = false
        }
    }
}
