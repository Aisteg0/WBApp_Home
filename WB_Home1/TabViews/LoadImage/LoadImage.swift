//
//  LoadImage.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 30.07.2024.
//

import SwiftUI

final class Loader: ObservableObject {
    @Published var image: Image?
    
    func loadImage(_ avatar: String) {
        DispatchQueue.global().async {
            let image = Image(avatar)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}

struct LoadImage: View {
    @State private var image: Image? = nil
    @StateObject var loader = Loader()
    let avatar: String?
    var body: some View {
        if let imageName = avatar {
            if let image = loader.image {
                image
                    .resizable()
            } else {
                Color.gray.opacity(0.2)
                    .onAppear {
                        loader.loadImage(imageName)
                    }
            }
        }
    }
}

#Preview {
    LoadImage(avatar: "LisaAlisa")
}
