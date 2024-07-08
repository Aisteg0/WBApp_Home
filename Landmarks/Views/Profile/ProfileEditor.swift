//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Михаил Ганин on 07.07.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    @Environment(\.editMode) var editMode
    
    var body: some View {
        VStack {
            HStack {
                Text("Username")
                    .bold()
                Spacer()
                TextField("Username", text: $profile.username)
            }
            Divider()
            HStack {
                Text("Notifications")
                Toggle("", isOn: $profile.prefersNotifications)
            }
            Divider()
            HStack {
                Text("Seasonal Photos")
                Picker("Seasonal Photos", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Divider()
            HStack {
                DatePicker("Goal Date", selection: $profile.goalDate, displayedComponents: .date)
            }
        }
        .padding()
        Spacer()
    }
}

// TODO: Понять почему сохрание срабатывает только со 2 раза

#Preview {
    ProfileEditor(profile: .constant(.default))
}
