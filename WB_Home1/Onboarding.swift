//
//  Onboarding.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 08.06.2024.
//

import SwiftUI

struct Onboarding: View {
    @State var showModel = false
    var body: some View {
        VStack {
            Image("Onboarding_Image")
                .frame(width: Constants.Image.widthForImage, height: Constants.Image.heightForImage)
                .padding(.top, Constants.Padding.paddingForImage)

            Text("preview")
                .fontWeight(.bold)
                .font(.system(size: Constants.Size.size24, weight: .bold))
                .multilineTextAlignment(.center)
                .frame(width: Constants.Text.widthForText, height: Constants.Text.heightForText)
                .padding(.top, Constants.Padding.paddingForText)
            Button {
                
            } label: {
                Text("terms")
            }
            .frame(width: Constants.wight, height: Constants.Size.size24)
            .buttonStyle(.plain)
            .font(.custom("SF Pro Display", size: Constants.Size.size14))
            .padding(.top, Constants.Padding.paddingForButtonAgree)
            Button("begin", action:  {
                showModel = true
            })
            .frame(width: Constants.ButtonNext.wight, height: Constants.ButtonNext.height)
            .background(Color(red: 154/255, green: 65/255, blue: 254/255, opacity: 1))
            .cornerRadius(Constants.radius)
            .foregroundColor(.white)
            .padding(.top, Constants.Padding.paddingForButtonNext)
            
            .sheet(isPresented: $showModel) {
                NextPage(showModel: $showModel)
            }
        }
    }
}

#Preview {
    Onboarding()
}

private enum Constants {
    enum Padding {
        static let paddingForImage: CGFloat = 45.0
        static let paddingForText: CGFloat = 42.0
        static let paddingForButtonAgree: CGFloat = 158.0
        static let paddingForButtonNext: CGFloat = 18.0
    }
    enum Image {
        static let widthForImage: CGFloat = 262.0
        static let heightForImage: CGFloat = 271.0
    }
    enum Text {
        static let widthForText: CGFloat = 280.0
        static let heightForText: CGFloat = 58.0
    }
    enum Size {
        static let size24: CGFloat = 24.0
        static let size14: CGFloat = 14.0
    }
    enum ButtonNext {
        static let wight: CGFloat = 327.0
        static let height: CGFloat = 52.0
    }
    static let wight: CGFloat = 212.0
    static let radius: CGFloat = 30.0
}

