//
//  LoginView.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewVM()
    
    var body: some View {
        NavigationStack(root: {
            HeaderView(title: "\nTo Do List", subTitle: "Get Things Done", angle: 15, bgColor: .pink)
            Form {
                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(text: "Log In", action: {})
            }
            
            VStack {
                Text("New around here?")
                NavigationLink(destination: RegisterView()) {
                    Text("Create an Account")
                }
            }.padding(.bottom, 50)
            
            Spacer()
        })
    }
}

#Preview {
    LoginView()
}
