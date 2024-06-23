//
//  Food.swift
//  Food
//
//  Created by Михаил Ганин on 23.06.2024.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), calories: DataService.shared.currentInt())
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        SimpleEntry(date: Date(), calories: DataService.shared.currentInt())
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, calories: DataService.shared.currentInt())
            entries.append(entry)
        }

        return Timeline(entries: entries, policy: .atEnd)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let calories: Double
}

struct FoodEntryView : View {
    var entry: Provider.Entry
    var body: some View {
        VStack {
                Image("Food")
                    .scaledToFit()
                    .frame(width: 5, height: 5)
            Text("\(String(format: "%.0f", entry.calories)) калорий")
                Button(intent: Intents()) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .fontWeight(.light)
                        .padding()
            }
            // TODO: Сделать кнопку для обновления
        }
    }
}

struct Food: Widget {
    let kind: String = "Food"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            FoodEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

#Preview(as: .systemSmall) {
    Food()
} timeline: {
    SimpleEntry(date: .now, calories: 100)
    SimpleEntry(date: .now, calories: 100)
}
