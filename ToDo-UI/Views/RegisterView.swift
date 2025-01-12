//
//  RegisterView.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewVM()
    
    var body: some View {
        NavigationStack {
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, bgColor: .orange)
            Form {
                TextField("Fullname", text: $viewModel.fullName).textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).textInputAutocapitalization(.none).autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle()).textInputAutocapitalization(.none).autocorrectionDisabled()
                TLButton(text: "Register", action: {})
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
