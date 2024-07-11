//
//  Authorization.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 09.07.2024.
//

import SwiftUI

struct Authorization: View {
    @State private var isShowingLoading = false
    
    var body: some View {
        if !isShowingLoading {
            TextView()
        } else {
            Animation()
        }
        EnterNumber()
        Button {
                isShowingLoading = true
        } label: {
            Text("next")
        }
        .frame(width: Constants.width, height: Constants.height)
        .background(Color.color2)
        .cornerRadius(Constants.cornerRadius)
        .foregroundColor(.white)
        .padding(.top, Constants.paddingForButton)
    }
}

private enum Constants {
    static let width: CGFloat = 327.0
    static let height: CGFloat = 52.0
    static let cornerRadius: CGFloat = 45.0
    static let paddingForButton: CGFloat = 69.0
}

#Preview {
    Authorization()
}
