//
//  LoadImage.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 30.07.2024.
//

import SwiftUI

final class LoadImage: ObservableObject {
    @Published private var image: Image?
    
    func loadImage(_ avatar: String) {
        DispatchQueue.main.async {
            let image = Image(avatar)
            self.image = image
        }
    }
}

//struct LoadImage: View {
//    @State private var image: Image? = nil
//    @State private var isLoading: Bool = false
//    let url: String
//    var body: some View {
//        Group {
//            if let image = image {
//                
//            } else if isLoading {
//                ProgressView()
//                    .frame(width: 56, height: 56)
//            } else {
//                Color.gray.opacity(0.2)
//                    .frame(width: 56, height: 56)
//                    .onAppear {
//                        loadImage()
//                    }
//            }
//        }
//    }
//    
//    private func loadImage() {
//        guard let imageURL = URL(string: url) else { return }
//        isLoading = true
//        let task = URLSession.shared.dataTask(with: imageURL) { data, response, error in
//            guard let data, error == nil else {
//                isLoading = false
//                return
//            }
//            if let uiImage = UIImage(data: data) {
//                DispatchQueue.main.async {
//                    self.image = Image(uiImage: uiImage)
//                    self.isLoading = false
//                }
//            } else {
//                DispatchQueue.main.async {
//                    self.isLoading = false
//                }
//            }
//        }
//        task.resume()
//    }
//}
//
//#Preview {
//    LoadImage(url: "LisaAlisa")
//}
