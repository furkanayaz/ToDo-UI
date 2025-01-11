//
//  LoginView.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        HeaderView()
        Form {
            TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
            
            Button {
                // Attempt log in...
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10).foregroundStyle(.blue)
                    Text("Log In")
                        .foregroundStyle(.white)
                        .bold()
                }
            }.padding()
        }
        
        VStack {
            Text("New around here?")
            NavigationLink("Create an Account") {
                RegisterView()
            }
        }.padding(.bottom, 50)
        
        Spacer()
    }
}

#Preview {
    LoginView()
}
