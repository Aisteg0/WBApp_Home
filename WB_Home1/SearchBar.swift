//
//  SearchBar.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 10.06.2024.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(red: 173/255, green: 181/255, blue: 189/255))
            TextField("Поиск", text: $searchText)
                .disableAutocorrection(true)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .cornerRadius(4)
        .background(Color(red: 245/255, green: 245/255, blue: 245/255))
        .frame(width: 327, height: 36)
    }
}

#Preview {
    SearchBar()
}
