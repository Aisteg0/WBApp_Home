// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
public struct MyCustomButton: View {
    public var title: String
    public var action: () -> Void

    public var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }

    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
}
