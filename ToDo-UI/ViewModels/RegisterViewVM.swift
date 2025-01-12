//
//  RegisterViewVM.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import Foundation

class RegisterViewVM: ObservableObject {
    @Published var fullName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    init() {
        
    }
}
