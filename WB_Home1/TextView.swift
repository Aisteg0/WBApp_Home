//
//  TextView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 11.07.2024.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("number")
            .font(.title)
            .bold()
            .padding(.top, 169)
        Text("code_confirmation")
            .multilineTextAlignment(.center)
            .padding(.top, 8)
    }
}

#Preview {
    TextView()
}
