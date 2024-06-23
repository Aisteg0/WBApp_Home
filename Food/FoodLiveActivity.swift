//
//  FoodLiveActivity.swift
//  Food
//
//  Created by Михаил Ганин on 23.06.2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct FoodAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct FoodLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: FoodAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension FoodAttributes {
    fileprivate static var preview: FoodAttributes {
        FoodAttributes(name: "World")
    }
}

extension FoodAttributes.ContentState {
    fileprivate static var smiley: FoodAttributes.ContentState {
        FoodAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: FoodAttributes.ContentState {
         FoodAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: FoodAttributes.preview) {
   FoodLiveActivity()
} contentStates: {
    FoodAttributes.ContentState.smiley
    FoodAttributes.ContentState.starEyes
}
