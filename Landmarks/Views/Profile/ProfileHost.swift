//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Mac on 6/29/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment (\.editMode) var editMode
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Button("Назад", role: .cancel) {
                    if editMode?.wrappedValue == .active {
                        draftProfile = Profile.default
                        editMode?.animation().wrappedValue = .inactive
                    } else {
                        dismiss()
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: Profile.default)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = Profile.default
                    }
                    .onDisappear {
                        Profile.default = draftProfile
                    }
            }
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}


