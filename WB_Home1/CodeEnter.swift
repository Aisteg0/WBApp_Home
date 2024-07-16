//
//  CodeEnter.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 16.07.2024.
//

import SwiftUI

struct CodeEnter: View {
    @State private var verificationCode = Array(repeating: "", count: 4)
    @Environment(\.presentationMode) var presentationMode
    @FocusState private var focusedField: Int?
    @State private var showAlert = false
    @State private var alertCode = ""
    @State private var codePhone = Code_Phone(code: "", phone: "")

    var body: some View {
        TextView()
        ZStack {
            
            VStack(spacing: 0) {
                HStack(spacing: 40) {
                    ForEach(0..<4, id: \.self) { index in
                        CodeView(
                            text: $verificationCode[index],
                            isFocused: $focusedField,
                            index: index
                        )
                    }
                }
                .padding(.top, 49)

                Button(action: {
                    codePhone.code = ""
                    verificationCode = Array(repeating: "", count: 4)
                    focusedField = 0
                    codePhone.generateSMSCode()
                    alertCode = codePhone.code
                    showAlert = true
                    
                }) {
                    Text("codAgain")
                        .padding(.horizontal, 30)
                        .padding(.vertical, 12)
                        .foregroundStyle(Color.color1)
                        .font(.headline)
                        .bold()
                }
                .padding(.top, 49)
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {

                    }
                }
            }
            .onAppear {
                focusedField = 0
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("yourCod"), message: Text(alertCode))
            }
        }
    }
}



#Preview {
    CodeEnter()
}
