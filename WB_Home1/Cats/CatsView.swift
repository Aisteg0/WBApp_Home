//
//  CatsView.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 06.08.2024.
//

import SwiftUI
import CatsAPi

struct CatsView: View {
    @State var articles: Articles = .init()
    
    var body: some View {
        VStack {
            AsyncImage(url: articles.articles)
                .frame(width: 250, height: 250)
        }
        Button("Посмотреть другого котика", action:  {
            articles.loadCats { data, error in
                articles.articles = data
            }
        })
        .frame(width: 250, height: 50)
        .background(Color(red: 154/255, green: 65/255, blue: 254/255, opacity: 1))
        .foregroundColor(.white)
        .buttonStyle(.plain)
        .padding(.top, 200)
        .cornerRadius(10)
        .onAppear() {
            articles.loadCats { data, error in
                articles.articles = data
            }
        }
    }
}

#Preview {
    CatsView()
}
