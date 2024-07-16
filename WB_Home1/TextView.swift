//
//  TextView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 16.07.2024.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Text("cod")
                .bold()
                .font(.largeTitle)
                
            Text("sendCod")
                .multilineTextAlignment(.center)
                .padding(.top, 8)
            
        }
    }
}

#Preview {
    TextView()
}
