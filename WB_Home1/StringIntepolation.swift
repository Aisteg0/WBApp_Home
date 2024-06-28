//
//  StringIntepolation.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 25.06.2024.
//

import SwiftUI

struct StringIntepolation: View {
    @State var selectedDay = Date()
    @State var selectEmoji = "🇷🇺"
    var locale: [Locale] = [
        Locale(identifier: "ru"),
        Locale(identifier: "en-GB"),
        Locale(identifier: "fr-FR"),
        Locale(identifier: "de-DE"),
        Locale(identifier: "it-IT")
    ]
    var body: some View {
        
        Text("Выберите дату и страну, приложение покажет даты с позавчера до послезавтра")
            .padding(.top, 100)
        
        DatePicker("Select date", selection: $selectedDay)
            .padding(.top, 100)
        
        Picker("select contry", selection: $selectEmoji) {
            Text("🇷🇺").tag("🇷🇺")
            Text("🇬🇧").tag("🇬🇧")
            Text("🇫🇷").tag("🇫🇷")
            Text("🇩🇪").tag("🇩🇪")
            Text("🇮🇹").tag("🇮🇹")
        }
        
        .pickerStyle(SegmentedPickerStyle())
        .padding(.top, 100)
        List() {
            ForEach(makeDateString(selectedDay), id: \.self) { dateString in
                Text(dateString)
                    .font(dateString.contains("Today") ? .headline : .subheadline)
            }
        }
        Spacer()
    }
    
    private func makeDateString(_ date: Date) -> [String] {
        var days = ["Pozayesterday", "Yesterday", "Today", "Tommorow", "PosleTommorow"]
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar.dateComponents([.year, .month, .day], from: selectedDay)
        let date = [
            calendar.date(byAdding: .day, value: -2, to: date),
            calendar.date(byAdding: .day, value: -1, to: date),
            calendar.date(from: components),
            calendar.date(byAdding: .day, value: 1, to: date),
            calendar.date(byAdding: .day, value: 2, to: date)
        ]
        return days.enumerated().map { index, offset in
            return "\(days[index]):  \(spellOut: date[index] ?? Date(), locale: locale[getIndex()])"
        }
    }
    
    private func getIndex() -> Int {
        switch selectEmoji {
        case "🇷🇺":
            return 0
        case "🇬🇧":
            return 1
        case "🇫🇷":
            return 2
        case "🇩🇪":
            return 3
        case "🇮🇹":
            return 4
        default:
            return 0
        }
    }
}



#Preview {
    StringIntepolation()
}

